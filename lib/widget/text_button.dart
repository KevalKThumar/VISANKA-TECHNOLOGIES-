import 'package:finapp/index.dart';

Widget textButton(String text, VoidCallback onPressed, Color color) {
  return TextButton(
    isSemanticButton: false,
    style: ButtonStyle(
      overlayColor: MaterialStatePropertyAll(color.withOpacity(0.1)),
    ),
    onPressed: onPressed,
    child: TextWidget(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      title: text,
      color: color,
    ),
  );
}
