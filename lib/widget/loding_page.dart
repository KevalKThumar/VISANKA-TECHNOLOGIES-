import 'dart:async';
import 'package:finapp/index.dart';

void showLoadingDialog(BuildContext context, String message, double fontSize) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          message,
          style: TextStyle(
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

  Timer(
    const Duration(seconds: 3),
    () {
      Navigator.of(context).pop();
      Navigator.popUntil(context, (route) => route.isFirst);
    },
  );
}
// showDialogBox

void showDialogBox(BuildContext context, String message, double fontSize) {
  AlertDialog alertDialog = AlertDialog(
    content: Text(
      message,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: FinappColor.textColor,
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Ok"),
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      });
}

void bottomSnackBar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

void checkValidation({
  context,
  email,
  password,
  confirmpassword,
  mobile,
  fullName,
  nextRoute,
}) {
  if (email.isEmpty ||
      password.isEmpty ||
      confirmpassword.isEmpty ||
      mobile.isEmpty ||
      fullName.isEmpty) {
    bottomSnackBar("Please fill all the fields", context);
  } else if (password != confirmpassword) {
    showDialogBox(
        context, "Password does not match with confirm password.", 24.0);
  } else {
    // Navigator.pushNamed(context, RoutesName.accountProfile);
    // save details
    Navigator.pushNamed(context, nextRoute);
    bottomSnackBar("Details saved successfully", context);
  }
}
