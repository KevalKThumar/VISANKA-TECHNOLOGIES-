import '../index.dart';

class TextNumberRow extends StatelessWidget {
  const TextNumberRow({
    super.key,
    required this.title,
    required this.rating,
    this.fontSize = 20,
  });

  final String title;
  final double fontSize;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // title
        TextWidget(
          title: title,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(width: 10),
        // rating
        TextWidget(
          title: rating,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
