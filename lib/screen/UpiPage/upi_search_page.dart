import 'package:finapp/index.dart';

class UpiSearchPage extends StatelessWidget {
  const UpiSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin UPI.",
      child: TextWidget(
        title: "UPI Search",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      )
    );
  }
}