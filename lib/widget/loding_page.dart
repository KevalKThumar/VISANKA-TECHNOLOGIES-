import 'dart:async';
import 'package:finapp/index.dart';

void showLoadingDialog(BuildContext context, String message,double fontSize) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          message,
          style:  TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: FinappColor.textColor,
          ),
        ),
        content: const SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: CircularProgressIndicator(color: FinappColor.userDpColor),
          ),
        ),
      );
    },
  );

  // Simulate loading for 5 seconds
  Timer(const Duration(seconds: 5), () {
    Navigator.of(context).pop();
    Navigator.popUntil(context, (route) => route.isFirst);
  });
}
