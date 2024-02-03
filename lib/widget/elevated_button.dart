import 'package:finapp/index.dart';

Widget elevatedButton(String text, VoidCallback onPressed, double width,
    double height, Color color) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: FinappColor.buttonColor,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
      ),
      onPressed: onPressed,
      child: TextWidget(
        title: text,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    ),
  );
}
