import 'package:finapp/index.dart';



class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Rewards.",
      child: Center(
        child: TextWidget(
            title: "Fin Rewards.", fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
    
  }
}