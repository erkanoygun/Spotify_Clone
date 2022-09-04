import 'package:flutter/material.dart';
import '../../../constant/app_widgets_style.dart';
import 'card_title_text_widget.dart';
import 'dart:math' as math;

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key,required this.title,required this.imageUrl}) : super(key: key);
  final double cardPaddingAllValue = 6.0;
  final double rowPaddingAllValue = 8.0;
  final double borderRadiusValue = 6.0;
  final String title;
  final String imageUrl;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(cardPaddingAllValue),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusValue),
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        ),
        height: MyAppWidgetsStyle.heightSize95,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(rowPaddingAllValue),
                  child: CardTitleText(title: title),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: MyAppWidgetsStyle.heightSize80,
                child: ClipRect(
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(15 / 360),
                    child: Image.network(
                      fit: BoxFit.cover,
                        imageUrl),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
