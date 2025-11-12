import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff060B26), Color(0xff1A1F37)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
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
