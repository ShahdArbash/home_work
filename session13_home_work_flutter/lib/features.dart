import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/feature_icon.dart';
import 'package:session13_home_work_flutter/feature_tile.dart';
import 'package:session13_home_work_flutter/text_column.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        FeatureTile(
          textcolumn: TextColumn(
              title: 'Fast Performance',
              text: 'Lightning fast app performance'),
          iconcard: FeatureIcon(
              backgroundcolor: Color(0xffffefebf9),
              icon: Icons.speed,
              iconColor: Color(0xffff673bb7)),
        ),
        FeatureTile(
          textcolumn:
              TextColumn(title: 'Secure', text: 'Your data is safe with us'),
          iconcard: FeatureIcon(
              backgroundcolor: Color(0xffffeaf6fe),
              icon: Icons.security,
              iconColor: Color(0xffff228fee)),
        ),
        FeatureTile(
          textcolumn: TextColumn(
              title: 'Beautiful UI', text: 'Modern and clean design'),
          iconcard: FeatureIcon(
              backgroundcolor: Color(0xfffffff4e7),
              icon: Icons.palette,
              iconColor: Color(0xfffff9900f)),
        ),
      ],
    );
  }
}
