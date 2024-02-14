import 'package:finapp/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(title: "Login Page", fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}