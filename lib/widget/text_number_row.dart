import '../index.dart';

class TextNumberRow extends StatelessWidget {
  const TextNumberRow({
    super.key,
    required this.left,
    required this.right,
    this.fontSize = 20,
  });

  final String left;
  final double fontSize;
  final String right;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // title
        TextWidget(
          title: left,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(width: 10),
        // rating
        TextWidget(
          title: right,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
