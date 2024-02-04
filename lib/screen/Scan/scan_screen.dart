import 'package:finapp/index.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
        title: "Fin Scan.",
        child: Center(
          child: TextWidget(
              title: "Fin Scan.", fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
