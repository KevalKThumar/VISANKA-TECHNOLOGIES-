import 'package:finapp/index.dart';

class RechargeSearchPage extends StatelessWidget {
  const RechargeSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "FinBill.",
      child: TextWidget(
        title: "Bill Search",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
