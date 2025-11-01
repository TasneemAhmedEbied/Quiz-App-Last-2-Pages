import 'package:flutter/material.dart';

import '../../../controller/quiz_page/quiz_page_controller.dart';
import '../../../core/resources/height_manager.dart';
import 'custom_item_radio_quiz_page.dart';

class CustomListViewOptionsQuizPage extends StatelessWidget {
  const CustomListViewOptionsQuizPage({
    super.key,
    required this.itemCount,
    required this.option,
    required this.outPutDateGroupValueRatio, required this.onTap,
  });

  final int itemCount;
  final List<String> option;
  final Stream<int> outPutDateGroupValueRatio;
  final void Function(int groupValueIndex) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => StreamBuilder(
        stream: outPutDateGroupValueRatio,
        builder: (context, snapshot) => CustomItemRadioQuizPage(
          onTap: () {

          },
          isSelected: snapshot.data == null ? false : snapshot.data == index ? true : false,
          option: option[index],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(height: HeightManager.h25),
      itemCount: itemCount,
    );
  }
}
