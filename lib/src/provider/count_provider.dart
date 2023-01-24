import 'package:flutter/foundation.dart';

class CountProvider extends ChangeNotifier {
  /// 이 안에 상태를 넣는다
  int _count = 0;
  int get count => _count;

  add() {
    _count++;
    notifyListeners();
  }

  remove() {
    _count--;
    notifyListeners();
  }
}
