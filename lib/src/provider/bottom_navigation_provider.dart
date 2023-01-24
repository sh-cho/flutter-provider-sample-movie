import 'package:flutter/foundation.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  void updateCurrentIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
