import 'package:finapp/index.dart';

class GeneralInsurance extends StatelessWidget {
  const GeneralInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin General Insurance.",
      child: TextWidget(
        title: "General Insurance",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}