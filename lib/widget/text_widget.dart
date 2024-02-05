import '../index.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.fontSize,
    required this.fontWeight,
    this.color = FinappColor.textColor,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        overflow: TextOverflow.visible,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'Outfit',
      ),
      textAlign: textAlign,
    );
  }
}
