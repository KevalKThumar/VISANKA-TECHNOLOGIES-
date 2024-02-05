import 'package:finapp/index.dart';

class LifeStyle extends StatelessWidget {
  const LifeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Lifestyle.",
      child: TextWidget(
        title: "Lifestyle",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}