import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_decoration.dart';

class DecorationBackground extends StatelessWidget {
  final Widget CompunentsOfPage;
  final bool isCenterGradient;
  const DecorationBackground({
    super.key,
    required this.CompunentsOfPage,
    required this.isCenterGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.MainBackgroundDecoration,
      child: Stack(
        children: [
          if (isCenterGradient) ...{
            Container(child: Image.asset('asset/images/GRADINET.png')),
          } else ...{
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/GRADIENTHome.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          },
          CompunentsOfPage,
        ],
      ),
    );
  }
}
