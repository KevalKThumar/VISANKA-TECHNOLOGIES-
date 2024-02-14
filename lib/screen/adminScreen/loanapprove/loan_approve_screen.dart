import 'package:finapp/index.dart';

class LoanApproveScreen extends StatelessWidget {
  const LoanApproveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(title: "Loan Approve Page", fontSize: 20, fontWeight: FontWeight.bold),
      )
    );
  }
}