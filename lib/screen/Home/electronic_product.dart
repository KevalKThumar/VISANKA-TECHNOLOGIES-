import 'package:finapp/index.dart';

class ElectronicPage extends StatelessWidget {
  const ElectronicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Electronics.",
      child: TextWidget(
        title: "Electronic",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
