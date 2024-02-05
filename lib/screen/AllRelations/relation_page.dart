import 'package:finapp/index.dart';

class RelationPage extends StatelessWidget {
  const RelationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Relations.",
      child: TextWidget(
        title: "Relations",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}