import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_manager.dart';
import 'package:quiz_app/core/resources/height_manager.dart';
import 'package:quiz_app/core/resources/radius_manager.dart';
import 'package:quiz_app/core/resources/width_manager.dart';

import '../../../core/resources/routes_manager.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
     body:  Center(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           SizedBox(height: HeightManager.h111,),
           Text("Q",style: TextStyle(fontFamily: FontsManagers.montserrat,fontWeight: FontWeight.w400,fontSize: FontSizeManagers.f400,color: ColorsManager.white ),),
           SizedBox(height: HeightManager.h124,),
           InkWell(
             onTap: (){
               Navigator.pushNamed(context, RoutesName.onBoardingRoute);
             },
             child: Container(
               alignment: Alignment.center,
               height: HeightManager.h70,
               width: WidthManagers.w350,
               decoration: BoxDecoration(
                 color: ColorsManager.white,
                 borderRadius: BorderRadius.circular(RadiusValuesManager.r35),
               ),
               child: Text("Get Started",style: TextStyle(color: ColorsManager.onbourdingText,fontFamily: FontsManagers.montserrat,fontWeight: FontWeight.w400,fontSize: FontSizeManagers.f20),),
             ),
           )
         ],
       ),

     ),
    );
  }
}
