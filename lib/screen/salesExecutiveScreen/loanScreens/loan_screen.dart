import 'package:finapp/index.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                ),
                itemCount: DashBoard.salesExecutiveLoanList.length,
                itemBuilder: (context, index) {
                  return DashBoardCard(
                    title: DashBoard.salesExecutiveLoanList[index].name,
                    routeName:
                        DashBoard.salesExecutiveLoanList[index].routeName,
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
