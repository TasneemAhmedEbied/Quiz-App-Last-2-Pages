import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustomCirclePresentIndicatorQuizPage extends StatelessWidget {
  const CustomCirclePresentIndicatorQuizPage({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorsManager.white,
      radius: 45,
      child: CircularPercentIndicator(
        animation: true,
        restartAnimation: true,
        backgroundColor: ColorsManager.lightPurple,
        animationDuration: 300000,
        radius: 45.0,
        lineWidth: 8.0,
        percent: 1.0,
        center:  Text(text,style: TextStyle(fontFamily: FontsManagers.ballo2,fontSize: FontSizeManagers.f25,color: ColorsManager.darkGreen),),
        progressColor: ColorsManager.primaryColor,
      ),
    );
  }
}
