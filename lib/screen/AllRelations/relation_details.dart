import 'package:finapp/index.dart';

class RelationDetailPage extends StatelessWidget {
  const RelationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home(
      title: "Fin Relations.",
      child: TextWidget(
        title: "Relations Details", 
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
