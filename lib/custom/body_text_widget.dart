import 'package:flutter/material.dart';
import '../../../constant/app_color.dart';

class BodyTextWidget extends StatelessWidget {
  const BodyTextWidget({Key? key, required this.text,required this.fontSize}) : super(key: key);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
            color: MyAppColor.textColorW1,
            fontSize: fontSize,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}