import 'package:flutter/material.dart';
import 'package:spotify_clone/view/searchpage/widgets/card_widget.dart';
import '../../../network/get_image_network.dart';

class GridWidget extends StatelessWidget {
  GridWidget({Key? key,required this.cardTitleList}) : super(key: key);
  final double paddingVerticalValue = 6.0;
  final RandomImageGenerator randomImage = RandomImageGenerator();
  final List<String> cardTitleList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingVerticalValue),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: cardWidgetChildren(
                cardTitleList.getRange(0, cardTitleList.length ~/ 2).toList(),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: cardWidgetChildren(
                cardTitleList
                    .getRange(cardTitleList.length ~/ 2, cardTitleList.length)
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> cardWidgetChildren(List items) {
    List<Widget> widgetItems = [];
    for (String element in items) {
      widgetItems.add(
        MyCardWidget(
          title: element,
          imageUrl: randomImage.randomImageUrl(),
        ),
      );
    }
    return widgetItems;
  }
}
