import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../constant/app_text_style.dart';
import '../../../constant/app_widgets_style.dart';
import '../constant/my_color.dart';

class FlexibleSpaceWidget extends StatelessWidget {
  const FlexibleSpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getUnitItems(),
        ),
      ),
    );
  }

  List<CategoriesCardWidget> getUnitItems() {
    final List<String> categoriItemsValue = [
      'Çalma listeleri',
      'Sanatçılar',
      'Podcast\'ler ve Programlar',
      'İndirilenler'
    ];
    List<CategoriesCardWidget> categoriItems = [];
    for (String item in categoriItemsValue) {
      categoriItems.add(
        CategoriesCardWidget(cardTitle: item),
      );
    }
    return categoriItems;
  }
}

class CategoriesCardWidget extends StatelessWidget {
  const CategoriesCardWidget({Key? key, required this.cardTitle})
      : super(key: key);
  final double unitContainerRadius = 20;
  final double unitContainerVPadding = 2;
  final double unitContainerHPadding = 8;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: MyAppWidgetsStyle.heightSize30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(unitContainerRadius),
            border: Border.all(
              width: 0.5,
              color: BooksPageColor.myColorGrey,
            ),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.symmetric(
              vertical: unitContainerVPadding,
              horizontal: unitContainerHPadding),
          child: Center(
            child: Text(
              cardTitle,
              style: TextStyle(
                  color: BooksPageColor.myColorW1,
                  fontSize: MyTextStyle.textSize10),
            ),
          ),
        ),
      ),
      onTap: () {
        if (kDebugMode) {
          print("CLICKED ON THE FLEXIBLE BAR ITEM");
        }
      },
    );
  }
}
