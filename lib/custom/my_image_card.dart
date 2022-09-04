import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constant/app_color.dart';
import '../constant/app_text_style.dart';

class MyImageCard extends StatelessWidget {
  const MyImageCard(
      {Key? key,
      this.title,
      required this.content,
      required this.cardSizeWidth,
      required this.randomImageUrl,
      required this.cardBodypaddingVerticalValue})
      : super(key: key);
  final String? title;
  final String content;
  final double cardSizeWidth;
  final double cardBodypaddingVerticalValue;
  final String randomImageUrl;
  final double titleTextpaddingVerticalValue = 3.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: cardBodypaddingVerticalValue),
      child: GestureDetector(
        onTap: (){if (kDebugMode) {
          print('CLICKED ON THE IMAGE CARD');
        }},
        child: SizedBox(
          width: cardSizeWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                randomImageUrl,
                fit: BoxFit.fill,
              ),
              title != null
                  ? Padding(
                    padding: EdgeInsets.symmetric(vertical: titleTextpaddingVerticalValue),
                    child: Text(
                        title!,
                        style: TextStyle(
                          color: MyAppColor.textColorW1,
                          fontSize: MyTextStyle.textSize10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  )
                  : const SizedBox(),
              Padding(
                padding: title == null ? EdgeInsets.symmetric(vertical: titleTextpaddingVerticalValue) : EdgeInsets.zero,
                child: Text(
                  content,
                  style: TextStyle(
                      fontSize: MyTextStyle.textSize8,
                      color: MyAppColor.textColorW1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
