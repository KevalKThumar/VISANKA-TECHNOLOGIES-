import 'package:finapp/index.dart';

class VehiclesScreen extends StatelessWidget {
  const VehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Vehicles.",
      child: TextWidget(
        title: "Vehicles",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}