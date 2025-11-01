import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';

class CustomItemRadioQuizPage extends StatelessWidget {
  const CustomItemRadioQuizPage({
    super.key,
    required this.option,
    required this.onTap,
     this.isSelected =false,
  });

  final GestureTapCallback onTap;
  final String option;
  final bool isSelected ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: PaddingManager.p30,
          vertical: PaddingManager.p15,
        ),
        width: double.infinity,
        height: HeightManager.h58,
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: TextStyle(
                fontSize: FontSizeManagers.f20,
                fontFamily: FontsManagers.ballo2,
                color: ColorsManager.primaryColor,
              ),
            ),
         isSelected ==true ?  Icon(CupertinoIcons.check_mark_circled_solid,color: ColorsManager.primaryColor,size: FontSizeManagers.f30,) :
         Container(
              width: WidthManagers.w20,
              height: HeightManager.h20,
              decoration: ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    color: ColorsManager.primaryColor,
                    width: WidthManagers.w1,
                  ),
                ),
                color: ColorsManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
