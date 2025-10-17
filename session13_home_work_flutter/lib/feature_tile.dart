import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/feature_icon.dart';
import 'package:session13_home_work_flutter/text_column.dart';

class FeatureTile extends StatelessWidget {
  TextColumn textcolumn;
  FeatureIcon iconcard;
  FeatureTile({super.key, required this.textcolumn, required this.iconcard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            spacing: 10,
            children: [
              FeatureIcon(
                backgroundcolor: iconcard.backgroundcolor,
                icon: iconcard.icon,
                iconColor: iconcard.iconColor,
              ),
              TextColumn(
                title: textcolumn.title,
                text: textcolumn.text,
              ),
              Spacer(flex: 6),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
