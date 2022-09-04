import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/app_view_model.dart';
import '../books_page/books_page.dart';
import '../homepage/home_page.dart';
import '../searchpage/search_page.dart';
import 'constant/my_color.dart';
import 'constant/text.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, mystate, child) {
        return Scaffold(
          body: mystate.selectIndex == 0
              ? HomePage()
              : mystate.selectIndex == 1
                  ? SearchPage()
                  : BooksPage(),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: MainPageColor.myColorW1,
            unselectedItemColor: MainPageColor.myColorW2,
            currentIndex: mystate.selectIndex,
            elevation: 0,
            backgroundColor: MainPageColor.myColorB2,
            items: bottomBarItems(),
            onTap: mystate.currentIndex,
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> bottomBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: MainPageText.bottomBarTextItem1,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search_sharp),
        label: MainPageText.bottomBarTextItem2,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list_alt_rounded),
        label: MainPageText.bottomBarTextItem3,
      ),
    ];
  }
}
