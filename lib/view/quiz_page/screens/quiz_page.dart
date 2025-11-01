import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/controller/quiz_page/quiz_page_controller.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_manager.dart';
import 'package:quiz_app/core/resources/height_manager.dart';
import 'package:quiz_app/core/resources/width_manager.dart';

import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../widgets/custom_appbar_quiz_screen.dart';
import '../widgets/custom_circle_present_indicator_quizpage.dart';
import '../widgets/custom_item_radio_quiz_page.dart';
import '../widgets/custom_list_view_options_quizpage.dart';
import '../widgets/custom_question_title_quizpage.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late QuizPageController _quizPageController;
  @override
  void initState() {
    super.initState();
    _quizPageController = QuizPageController();
  }
  @override
  void dispose() {
    super.dispose();
    _quizPageController.onDispose();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: PaddingManager.p24),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                SizedBox(height: HeightManager.h88),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomQuestionTitleQuizPage(
                      text:
                          'In what year did the United States host the FIFA World Cup for the first time?',
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: -55,
            
                      child: CustomCirclePresentIndicatorQuizPage(text: '30'),
                    ),
                  ],
                ),
                SizedBox(height: HeightManager.h70),
                CustomListViewOptionsQuizPage( itemCount: _quizPageController.option.length, option: _quizPageController.option, outPutDateGroupValueRatio: _quizPageController.outputDataControllerGroupValueIndex,
                  onTap: (int indexValue) {
                   _quizPageController.onTapItemRadio(indexValue);
                  }, ),

              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorsManager.backgroundColor,
      appBar: CustomAppBarQuizScreen(
        onTap: () {
          Navigator.of(context).canPop;
        },
        text: "7/10",
      ),
    );
  }
}


