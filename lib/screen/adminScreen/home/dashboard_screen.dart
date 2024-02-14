import 'package:finapp/index.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(title: "Dashboard Page", fontSize: 20, fontWeight: FontWeight.bold),
      )
    );
  }
}