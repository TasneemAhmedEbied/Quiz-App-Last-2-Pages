import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/font_manager.dart';
import 'package:quiz_app/core/resources/height_manager.dart';
import 'package:quiz_app/core/resources/padding_manager.dart';

import '../../../core/resources/assets_value_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/routes_manager.dart';
import '../../../core/resources/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsValuesManager.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: HeightManager.h73,
            ),
              Text(Utils.q,style: TextStyle(fontFamily: FontsManagers.montserrat,fontSize: FontSizeManagers.f250,fontWeight: FontWeight.w400,color: ColorsManager.primaryColor),),
            SizedBox(height: HeightManager.h80,),
            Padding(
              padding: const EdgeInsets.all(PaddingManager.p15),
              child: TextField(
                decoration: InputDecoration(labelText:Utils.enterYourName,
                labelStyle: TextStyle(fontFamily: FontsManagers.ballo2,color: ColorsManager.primaryColor),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
                    borderSide: BorderSide(
                      color: ColorsManager.primaryColor,
                      width: 2.5,

                    ),
                  ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
                    borderSide: BorderSide(
                      color: ColorsManager.primaryColor,
                      width: 2.5,
                      //Todo
                    ),
                    )
                ),

              ),
            ),
            SizedBox(height: HeightManager.h199,),
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.quizScreenRoute),
              child: Container(
                height: 59,
                width: 383,
                decoration: BoxDecoration(
                  color: ColorsManager.primaryColor,
                  borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
                ),
                child: Center(
                  child: Text(Utils.start,style: TextStyle(fontFamily: FontsManagers.balooBhaina,fontSize: FontSizeManagers.f20,fontWeight: FontWeight.w400,color: ColorsManager.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
