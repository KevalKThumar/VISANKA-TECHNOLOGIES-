import 'package:finapp/index.dart';
import 'package:finapp/screen/salesExecutiveScreen/dashboard/loanApprovel/loan_approvel.dart';
import 'package:finapp/screen/salesExecutiveScreen/dashboard/loanPanding/loan_panding.dart';
import 'package:finapp/screen/salesExecutiveScreen/dashboard/loanRejection/loan_rejection.dart';

class SalesExecutiveDashBoard extends StatefulWidget {
  const SalesExecutiveDashBoard({super.key});

  @override
  State<SalesExecutiveDashBoard> createState() =>
      _SalesExecutiveDashBoardState();
}

class _SalesExecutiveDashBoardState extends State<SalesExecutiveDashBoard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            enableFeedback: false,
            automaticIndicatorColorAdjustment: false,
            labelColor: FinappColor.userDpColor,
            isScrollable: true,
            controller: _tabController,
            unselectedLabelStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            labelStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            labelPadding: const EdgeInsets.only(left: 10, right: 20),
            indicatorColor: FinappColor.userDpColor,
            tabs: const [
              Tab(text: "Approved"),
              Tab(text: 'Pending'),
              Tab(text: 'Rejected'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                LoanApprovelPage(),
                LoanPanding(),
                LoanRejectionPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
