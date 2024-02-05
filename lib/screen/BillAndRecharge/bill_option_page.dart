import 'package:finapp/index.dart';

class RechargeOption extends StatelessWidget {
  const RechargeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "FinBill.",
      child: TextWidget(
        title: "Bill and Recharge",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
