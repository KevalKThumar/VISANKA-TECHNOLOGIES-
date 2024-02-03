import 'package:finapp/index.dart';

class RegisterProvider with ChangeNotifier {
  bool _isCheck = true;

  bool get isCheck => _isCheck;

  void changeCheck() {
    _isCheck = !_isCheck;
    notifyListeners();
  }
}
