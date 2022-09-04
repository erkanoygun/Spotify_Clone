import 'package:flutter/cupertino.dart';

class AppViewModel extends ChangeNotifier {
  int selectIndex = 0;

  currentIndex(int index) {
    selectIndex = index;
    notifyListeners();
  }

  
}
