import 'package:flutter/material.dart';
import 'package:spotify_clone/view/books_page/widgets/flexible_space_widget.dart';
import 'package:spotify_clone/view/books_page/widgets/my_sliver_grid_widget.dart';
import 'package:spotify_clone/view/books_page/widgets/oval_image_card_widget.dart';
import 'package:spotify_clone/view/books_page/widgets/sliver_box_adapter.dart';
import '../../constant/app_widgets_style.dart';
import '../../constant/icon_style.dart';
import '../../custom/icon_button.dart';
import '../../custom/my_image_card.dart';
import '../../network/get_image_network.dart';
import 'constant/my_color.dart';
import 'constant/text.dart';

class BooksPage extends StatelessWidget {
  BooksPage({Key? key}) : super(key: key);
  final RandomImageGenerator randomImage = RandomImageGenerator();
  final double crossAxisSpacing = 15;
  final List<String> artistNameList = [
    'Duman',
    'Sezen Aksu',
    'Lana Del Rey',
    'Adele',
    'INNA'
  ];
  final String ovalImageCardContent = 'Sanatçı';
  final String imageCardTitle = 'Title';
  final String imageCardContent = 'Content Content';
  final double imageCardPaddingValue = 0.0;
  final double customScrolPaddingValue = 14;
  final List<IconData> buttonIcons = [
    Icons.search,
    Icons.add,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BooksPageColor.myColorB1,
      appBar: AppBar(
        backgroundColor: BooksPageColor.myColorB1,
        foregroundColor: BooksPageColor.myColorW1,
        title: const Text(BooksPageText.appBarTitle),
        actions: iconButtons(buttonIcons),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: customScrolPaddingValue),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: false,
              backgroundColor: BooksPageColor.myColorB1,
              elevation: 1,
              floating: true,
              flexibleSpace: FlexibleSpaceWidget(),
            ),
            const MySliverBoxAdapter(),
            MySliverGrid(
              gridChildrenWidget: silverGridWidgets(),
            ),
            MySliverGrid(
              gridChildrenWidget: silverGridWidgets2(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> silverGridWidgets() {
    List<Widget> widgetItems = [];
    for (int i = 0; i < 5; i++) {
      widgetItems.add(
        MyImageCard(
          cardBodypaddingVerticalValue: imageCardPaddingValue,
          randomImageUrl: randomImage.randomImageUrl(),
          title: imageCardTitle,
          content: imageCardContent,
          cardSizeWidth: MyAppWidgetsStyle.widthSize140,
        ),
      );
    }
    return widgetItems;
  }

  List<Widget> silverGridWidgets2() {
    List<Widget> widgetItems = [];
    for (String element in artistNameList) {
      widgetItems.add(
        OvalImageCard(
            cardContent: ovalImageCardContent,
            randomImageUrl: randomImage.randomImageUrl(),
            artistName: element),
      );
    }
    return widgetItems;
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
