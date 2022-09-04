import 'package:flutter/material.dart';
import 'package:spotify_clone/view/homepage/widgets/my_card1.dart';
import '../../../network/get_image_network.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  final RandomImageGenerator randomImage = RandomImageGenerator();
  List cardText1 = ['Karşık', 'Latin Mix', 'Hot Hits Türkiye'];
  List cardText2 = ['Beğenilen Şarkılar', 'Hip Hop Mix', 'Pozitif'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: cardWidgetsColumn(cardText1),
          ),
        ),
        Expanded(
          child: Column(
            children: cardWidgetsColumn(cardText2),
          ),
        ),
      ],
    );
  }

  List<Widget> cardWidgetsColumn(List cardText) {
    List<Widget> widgets = [];
    for (String element in cardText) {
      widgets.add(
        MyCard1(
          cardText: element,
          randomImageUrl: randomImage.randomImageUrl(),
        ),
      );
    }
    return widgets;
  }
}
