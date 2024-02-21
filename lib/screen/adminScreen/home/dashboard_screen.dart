import 'package:finapp/constant/dashboard.dart';
import 'package:finapp/index.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                    childAspectRatio: 1.5
                ),
                itemCount: DashBoard.adminDashBoard.length,
                itemBuilder: (context, index) {
                  return DashBoardCard(
                    title: DashBoard.adminDashBoard[index].name,
                    routeName: DashBoard.adminDashBoard[index].routeName,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    super.key,
    required this.title,
    this.image,
    required this.routeName,
  });
  final String title;
  final String? image;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routeName),
      child: Card(
        color: FinappColor.noReddemedContainerColor,
        child: Container(
          alignment: Alignment.center,
          child: TextWidget(
            title: title,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
