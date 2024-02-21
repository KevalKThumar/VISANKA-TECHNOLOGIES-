import 'package:finapp/screen/managerScreen/home/dashboard_screen.dart';
import 'package:finapp/screen/salesExecutiveScreen/dashboard/dashboard_screen.dart';
import 'package:finapp/screen/salesExecutiveScreen/loanScreens/loan_screen.dart';

import '../../index.dart';

class SalesExecutiveHomePage extends StatefulWidget {
  const SalesExecutiveHomePage({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  State<SalesExecutiveHomePage> createState() => _SalesExecutiveHomePageState();
}

class _SalesExecutiveHomePageState extends State<SalesExecutiveHomePage> {
  final List pageList = [
    // dashboard
    const SalesExecutiveDashBoard(),
    // loans application approval
    const LoanScreen(),
    // admin profile
    const ManagerProfle(),
  ];
  final List pageTitle = [
    // dashboard
    "DashboardPage",
    // loans application approval
    "LoanApproveScreen",
    // manager profile
    "SalesExecutiveProfile",
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavBar = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          title: pageTitle[bottomNavBar.index],
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: FinappColor.appBarColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: false,
                  transitionDuration: const Duration(milliseconds: 500),
                  barrierLabel: MaterialLocalizations.of(context).dialogLabel,
                  barrierColor: Colors.black.withOpacity(0.5),
                  pageBuilder: (context, _, __) => Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 50.0, horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.notifications_none_rounded,
                                      color: FinappColor.textColor,
                                      size: 35,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    TextWidget(
                                      fontSize: 25,
                                      title: "Notification",
                                      color: FinappColor.textColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                              // List of notification
                              Center(
                                child: TextWidget(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  title: "No notification",
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  transitionBuilder: (context, animation, _, child) {
                    return SlideTransition(
                      position: CurvedAnimation(
                              parent: animation, curve: Curves.linearToEaseOut)
                          .drive(Tween<Offset>(
                              begin: Offset.zero, end: Offset.zero)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Material(
                            type: MaterialType.transparency,
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAlias,
                            child: child,
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: Consumer<BottomNavBarProvider>(
        builder: (context, value, child) =>
            widget.child ?? pageList[value.index],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 14),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: Consumer<BottomNavBarProvider>(
            builder: (context, bottomNavBar, child) {
              return BottomNavigationBar(
                currentIndex: bottomNavBar.index,
                showUnselectedLabels: false,
                unselectedIconTheme: const IconThemeData(color: Colors.white),
                selectedIconTheme: const IconThemeData(
                  color: FinappColor.textColor,
                  size: 30,
                ),
                selectedItemColor: FinappColor.textColor,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                backgroundColor: FinappColor.appBarColor,
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  bottomNavBar.changeIndex(value);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.house,
                      size: 26,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.indianRupeeSign,
                      size: 26,
                    ),
                    label: "Loan",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle,
                      size: 26,
                    ),
                    label: "account",
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}