import 'package:finapp/index.dart';

class BottomNavBarProvider with ChangeNotifier {
  int _index = 0;
  int get index => _index;
  void changeIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
