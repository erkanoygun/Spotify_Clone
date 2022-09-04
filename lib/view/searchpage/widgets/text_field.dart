import 'package:flutter/material.dart';

import '../../../constant/app_text_style.dart';
import '../constant/my_color.dart';
import '../constant/text.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);
  final double textFieldContentPadding = 12.0;
  final double paddingAlllValue = 8.0;
  final double borderRadius = 8.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingAlllValue),
      child: TextField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: SearchPageText.textFieldLabel,
          labelStyle: TextStyle(color: SearchPageColor.myColorB1,fontSize: MyTextStyle.textSize14),
          fillColor: SearchPageColor.myColorW1,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: textFieldContentPadding),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, color: SearchPageColor.myColorW1),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, color: SearchPageColor.myColorW1),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
