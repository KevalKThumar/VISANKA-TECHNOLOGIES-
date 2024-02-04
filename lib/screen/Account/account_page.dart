

import '../../index.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Account.",
      child: Center(
        child: TextWidget(
            title: "Fin Account.", fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}