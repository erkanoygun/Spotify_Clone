import 'package:flutter/material.dart';
import 'package:spotify_clone/view/searchpage/widgets/grid_widget.dart';
import 'package:spotify_clone/view/searchpage/widgets/text_field.dart';
import '../../constant/app_text_style.dart';
import '../../constant/icon_style.dart';
import '../../custom/body_text_widget.dart';
import '../../custom/icon_button.dart';
import 'constant/my_color.dart';
import 'constant/text.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final List buttonIcons = [Icons.camera_alt_outlined];
  final double paddingAllValue = 8.0;
  final List<String> cardTitleList1 = ['Pop', 'Rock', 'Hip Hop', 'Latin'];
  final List<String> cardTitleList2 = [
    'Podcast\'ler',
    'Listeler',
    'Radyo',
    'Canlı Etkinlikler',
    'Papüler',
    'Senin için Hazırlandı',
    'Yeni Çıkanlar',
    'Keşfet',
    'Yaz',
    'Ruh Hali'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SearchPageColor.myColorB1,
        appBar: AppBar(
          title: const Text(SearchPageText.appBarTitle),
          actions: iconButtons(buttonIcons),
          backgroundColor: SearchPageColor.myColorB1,
          foregroundColor: SearchPageColor.myColorW1,
        ),
        body: Padding(
          padding: EdgeInsets.all(paddingAllValue),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchTextField(),
                BodyTextWidget(
                    fontSize: MyTextStyle.textSize12,
                    text: SearchPageText.bodyText1),
                GridWidget(cardTitleList: cardTitleList1),
                BodyTextWidget(
                    fontSize: MyTextStyle.textSize12,
                    text: SearchPageText.bodyText2),
                GridWidget(cardTitleList: cardTitleList2),
              ],
            ),
          ),
        ));
  }

  List<Widget> iconButtons(List buttonIcons) {
    List<Widget> actions = [];
    for (IconData element in buttonIcons) {
      actions.add(MyIconButton(
        size: IconStyle.iconSize25,
        icon: element,
        tabFunction: () {},
      ));
    }
    return actions;
  }
}
