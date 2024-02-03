import 'package:finapp/index.dart';

class LoginProvider with ChangeNotifier {
  bool _isCheck = true;

  bool get isCheck => _isCheck;

  void changeCheck() {
    _isCheck = !_isCheck;
    notifyListeners();
  }
}
