import 'package:flutter/material.dart';

import '../../../constant/app_text_style.dart';
import '../constant/my_color.dart';

class CardTitleText extends StatelessWidget {
  const CardTitleText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: MyTextStyle.textSize12,
          fontWeight: FontWeight.bold,
          color: SearchPageColor.myColorW1),
    );
  }
}
