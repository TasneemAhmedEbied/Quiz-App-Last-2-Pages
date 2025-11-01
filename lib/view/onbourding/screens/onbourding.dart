import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_manager.dart';
import 'package:quiz_app/core/resources/padding_manager.dart';

import '../../../controller/onbourding_pages_controller.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/utils.dart';

class OnbourdingPage extends StatefulWidget {
  const OnbourdingPage({super.key});

  @override
  State<OnbourdingPage> createState() => _OnbourdingPageState();
}

class _OnbourdingPageState extends State<OnbourdingPage> {
  late OnbourdingPagesController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OnbourdingPagesController(context: context);
    _controller.initStream();
  }

  @override
  void dispose() {
    _controller.disposeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: StreamBuilder(
          stream: _controller.streamNextPage,
          initialData: _controller.index,
          builder: (context, asyncSnapshot) {
            int index = asyncSnapshot.data ?? 0;
            final model = Utils.listOnbourdingPages[index];

            //Todo
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: HeightManager.h115),
                  Image.asset(model.image),
                  SizedBox(height: HeightManager.h108),
                  Text(
                    model.title,
                    style: TextStyle(
                      color: ColorsManager.onbourdingText,
                      fontSize: FontSizeManagers.f32,
                      fontFamily: FontsManagers.montserrat,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: HeightManager.h20),
                  Text(
                    model.description,textAlign: TextAlign.center,maxLines: 3,
                    style: TextStyle(
                      color: ColorsManager.onbourdingText,
                      fontSize: FontSizeManagers.f21,
                      fontFamily: FontsManagers.montserrat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: HeightManager.h150),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: PaddingManager.p30,
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              _controller.skipPage();
                            },
                            child: Text(
                              Utils.skip,
                              style: TextStyle(
                                color: ColorsManager.onbourdingText,
                                fontSize: FontSizeManagers.f18,
                                fontFamily: FontsManagers.montserrat,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Image.asset(model.indicator),
                          InkWell(
                            onTap: () {
                              _controller.nextPage();
                            },
                            child: Text(
                              Utils.next,
                              style: TextStyle(
                                color: ColorsManager.onbourdingText,
                                fontSize: FontSizeManagers.f18,
                                fontFamily: FontsManagers.montserrat,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],

                      ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
