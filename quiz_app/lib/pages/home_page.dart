import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/widgets/button_next_action.dart';
import 'package:quiz_app/widgets/button_back_action.dart';
import 'package:quiz_app/widgets/button_result_action.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/item_question.dart';
import 'package:quiz_app/theme/decoration_background.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  int currentIndexQuestion = 0;
  List<int?> selectedAnswers = [];
  QuizManger quizManger = QuizManger();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextAction() {
    if (widget.currentIndexQuestion < widget.quizManger.quizData.length - 1) {
      widget.currentIndexQuestion++;
      pageController.animateToPage(
        widget.currentIndexQuestion,
        duration: Duration(milliseconds: 10),
        curve: Curves.linear,
      );
    }
  }

  void backAction() {
    if (widget.currentIndexQuestion > 0) {
      widget.currentIndexQuestion--;
      pageController.animateToPage(
        widget.currentIndexQuestion,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DecorationBackground(
        isCenterGradient: false,
        CompunentsOfPage: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: widget.quizManger.quizData.length,
                    onPageChanged: (index) {
                      setState(() {
                        widget.currentIndexQuestion = index;
                      });
                    },
                    itemBuilder: (context, index) => ItemQuestion(
                      questionModel: widget.quizManger.quizData[index],
                      quizManger: widget.quizManger,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Visibility(
                      visible: widget.currentIndexQuestion != 0 ? true : false,
                      child: ButtonBackAction(ontap: backAction),
                    ),
                    Spacer(flex: 1),
                    widget.currentIndexQuestion !=
                            widget.quizManger.quizData.length - 1
                        ? ButtonNextAction(ontap: nextAction)
                        : ButtonResultAction(
                            ontap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ResultPage(
                                      quizManger: widget.quizManger,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
