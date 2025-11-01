import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/utils.dart';

class CustomAppBarQuizScreen extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarQuizScreen({
    super.key, required this.onTap, required this.text,
  });
  final GestureTapCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      leading: Padding(
        padding: EdgeInsetsGeometry.only(left: PaddingManager.p24),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Icon(CupertinoIcons.back,color: ColorsManager.primaryColor,size: FontSizeManagers.f18,),
              Text(Utils.previous,style: TextStyle(color: ColorsManager.primaryColor,fontFamily: FontsManagers.ballo2,fontSize: FontSizeManagers.f18,),)
            ],
          ),
        ),
      ),
      backgroundColor: ColorsManager.backgroundColor,
      title: Text("$text",style: TextStyle(color: ColorsManager.black,fontFamily: FontsManagers.ballo2,fontSize: FontSizeManagers.f24,),),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);

}