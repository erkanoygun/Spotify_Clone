import 'package:flutter/material.dart';
import '../../../constant/app_color.dart';
import '../../../constant/app_text_style.dart';
import '../../../constant/app_widgets_style.dart';
import '../constant/my_color.dart';

class MyCard1 extends StatelessWidget {
  MyCard1(
      {Key? key, required this.cardText, required this.randomImageUrl})
      : super(key: key);
  final String cardText;
  final String randomImageUrl;
  final double allPaddingValue = 5.0;
  final double imageBorderRadius = 3.0;
  final double imageSize = MyAppWidgetsStyle.heightSize45;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: HomePageColor.myColorW2,
      elevation: 0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: imageSize,
              height: imageSize,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(imageBorderRadius),
                child: Image.network(
                  randomImageUrl,
                  fit: BoxFit.fill,
                  width: imageSize,
                  height: imageSize,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(allPaddingValue),
              child: Text(
                cardText,
                style: TextStyle(
                    fontSize: MyTextStyle.textSize10,
                    color: MyAppColor.textColorW1,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
