import 'package:finapp/constant/admin_dashboard.dart';
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
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return DashBoardCard(
                    title: DashBoard.adminDashBoard[index].name,
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
  });
  final String title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: FinappColor.noReddemedContainerColor,
      child: Container(
        alignment: Alignment.center,
        child: TextWidget(
          title: title,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
