import 'package:flutter/material.dart';
import '../../../constant/app_text_style.dart';
import '../../../constant/app_widgets_style.dart';
import '../constant/my_color.dart';

class OvalImageCard extends StatelessWidget {
  const OvalImageCard(
      {Key? key,
      required this.randomImageUrl,
      required this.artistName,
      required this.cardContent})
      : super(key: key);
  final String randomImageUrl;
  final String artistName;
  final String cardContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MyAppWidgetsStyle.widthSize140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    randomImageUrl,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    artistName,
                    style: TextStyle(
                      color: BooksPageColor.myColorW1,
                      fontSize: MyTextStyle.textSize10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    cardContent,
                    style: TextStyle(
                      color: BooksPageColor.myColorW1,
                      fontSize: MyTextStyle.textSize10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
