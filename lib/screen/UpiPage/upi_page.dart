import 'package:finapp/index.dart';

class UpiPage extends StatelessWidget {
  const UpiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin UPI.",
      child: TextWidget(
        title: "UPI",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      )
    );
  }
}