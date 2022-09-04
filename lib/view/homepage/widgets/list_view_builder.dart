import 'package:flutter/material.dart';
import '../../../constant/app_widgets_style.dart';
import '../../../custom/my_image_card.dart';
import '../../../network/get_image_network.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({Key? key, this.title, required this.content}) : super(key: key);
  final String? title;
  final String content;
  final RandomImageGenerator randomImage = RandomImageGenerator();
  final int itemCount = 7;
  final double imageCardPaddingValue = 6.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyAppWidgetsStyle.heightSize190,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return MyImageCard(
            cardBodypaddingVerticalValue: imageCardPaddingValue,
            randomImageUrl: randomImage.randomImageUrl(),
            title: title,
            content: content,
            cardSizeWidth: MyAppWidgetsStyle.widthSize140,
          );
        },
      ),
    );
  }
}

/*
class AlbumCard extends StatelessWidget {
  AlbumCard({Key? key,this.title,required this.content}) : super(key: key);
  final String? title;
  final String content;
  final RandomImageGenerator randomImage = RandomImageGenerator();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imageCardItems(),
      ),
    );
  }

  List<Widget> imageCardItems() {
    List<Widget> imageCardItems = [];
    for (int i = 0; i < 7; i++) {
      imageCardItems.add(
        MyImageCard(
          randomImageUrl: randomImage.randomImageUrl(),
          title: title,
          content: content,
          cardSizeWidth: MyAppWidgetsStyle.widthSize140,
          cardSizeheight: MyAppWidgetsStyle.heightSize140,
        ),
      );
    }
    return imageCardItems;
  }
}
*/