import 'package:finapp/index.dart';

Widget textButton(String text, VoidCallback onPressed, Color color) {
  return TextButton(
      onPressed: onPressed,
      child: TextWidget(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        title: text,
        color: color,
      ));
}
