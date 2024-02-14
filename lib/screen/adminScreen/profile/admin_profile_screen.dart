import 'package:finapp/index.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(title: "Admin Profile Page", fontSize: 20, fontWeight: FontWeight.bold),
      )
    );
  }
}