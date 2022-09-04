import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/app_text_style.dart';
import 'package:spotify_clone/view/homepage/constant/my_color.dart';
import 'package:spotify_clone/view/homepage/constant/text.dart';
import 'package:spotify_clone/view/homepage/widgets/categories_widget.dart';
import '../../constant/icon_style.dart';
import '../../custom/body_text_widget.dart';
import '../../custom/icon_button.dart';
import 'widgets/list_view_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<IconData> buttonIcons = [
      Icons.notifications_outlined,
      Icons.av_timer_outlined,
      Icons.settings_outlined,
    ];
  final double paddingAllValue = 8.0;
  final String albumTitle = 'Title';
  final String albumContent = 'There are many variations of passages.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomePageColor.myColorB1,
      appBar: AppBar(
        actions: iconButtons(buttonIcons),
        backgroundColor: HomePageColor.myColorB1,
        foregroundColor: HomePageColor.myColorW1,
        title: const Text(HomePageText.appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(paddingAllValue),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Categories(),
              BodyTextWidget(
                text: HomePageText.bodyText1,
                fontSize: MyTextStyle.textSize18,
              ),
              MyListViewBuilder(title: albumTitle,content: albumContent,),
              BodyTextWidget(
                text: HomePageText.bodyText2,
                fontSize: MyTextStyle.textSize18,
              ),
              MyListViewBuilder(title: albumTitle,content: albumContent,),
              BodyTextWidget(
                text: HomePageText.bodyText3,
                fontSize: MyTextStyle.textSize18,
              ),
              MyListViewBuilder(content: albumContent,),
              BodyTextWidget(
                text: HomePageText.bodyText4,
                fontSize: MyTextStyle.textSize18,
              ),
              MyListViewBuilder(title: albumTitle,content: albumContent,),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> iconButtons(List buttonIcons) {
    List<Widget> actions = [];
    for (IconData element in buttonIcons) {
      actions.add(MyIconButton(
        icon: element,
        tabFunction: () {},
        size: IconStyle.iconSize25,
      ));
    }
    return actions;
  }
}
