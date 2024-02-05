import 'package:finapp/index.dart';

class BillRechargePage extends StatelessWidget {
  const BillRechargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "FinBill.",
      child: TextWidget(
        title: "Recharge",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
