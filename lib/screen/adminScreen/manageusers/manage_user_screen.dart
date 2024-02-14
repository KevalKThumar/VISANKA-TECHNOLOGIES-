import 'package:finapp/index.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(
            title: "Manage User Page",
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
