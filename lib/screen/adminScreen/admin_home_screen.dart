

import '../../index.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  final List pageList = [
    // dashboard
    const DashboardPage(),
    // manageusers
    const ManageUser(),
    // loans application approval
    const LoanApproveScreen(),
    // admin profile
    const AdminProfile(),
  ];
  final List pageTitle = [
    // dashboard
    "DashboardPage",
    // manageusers
    "Users",
    // loans application approval
    "LoanApproveScreen",
    // admin profile
    "AdminProfile",
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
                // Navigator.pushNamed(context, RoutesName.adminLogin);
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
                      FontAwesomeIcons.users,
                      size: 26,
                    ),
                    label: "Users",
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
