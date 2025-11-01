import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/padding_manager.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/radius_manager.dart';

class CustomQuestionTitleQuizPage extends StatelessWidget {
  const CustomQuestionTitleQuizPage({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PaddingManager.p24),
      alignment: Alignment.center,
      width: double.infinity,
      height: HeightManager.h229,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          RadiusValuesManager.r20,
        ),
        color: ColorsManager.white,
        boxShadow: const [
          BoxShadow(
            color: ColorsManager.black,
            offset: Offset(0, 20),
            blurStyle: BlurStyle.outer,
            blurRadius: 100,
            spreadRadius: -50,
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(color: ColorsManager.black,fontFamily: FontsManagers.ballo2,fontSize: FontSizeManagers.f17,),
      ),
    );
  }
}
