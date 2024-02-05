import 'package:finapp/index.dart';


class DigitalCardPage extends StatelessWidget {
  const DigitalCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "FinCard.",
      child: TextWidget(
        title: "Digital Card",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}