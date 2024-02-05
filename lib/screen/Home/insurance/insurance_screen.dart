import 'package:finapp/index.dart';

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Insurance.",
      child: TextWidget(
        title: "Insurance",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}