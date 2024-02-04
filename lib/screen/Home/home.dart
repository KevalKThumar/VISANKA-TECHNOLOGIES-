// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../index.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  final List pageList = [
    RoutesName.home,
    RoutesName.rewards,
    RoutesName.scan,
    RoutesName.offer,
    RoutesName.account,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Consumer<BottomNavBarProvider>(
            builder: (context, bottomNavBar, child) {
              return BottomNavigationBar(
                currentIndex: bottomNavBar.index,
                showUnselectedLabels: false,
                unselectedIconTheme: IconThemeData(color: Colors.white),
                selectedIconTheme: IconThemeData(
                  color: FinappColor.textColor,
                  size: 30,
                ),
                selectedItemColor: FinappColor.textColor,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w500),
                backgroundColor: FinappColor.appBarColor,
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  bottomNavBar.changeIndex(value);
                  Navigator.pushReplacementNamed(context, pageList[value]);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.home,
                      size: 26,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.trophy,
                      size: 26,
                    ),
                    label: "Rewards",
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.qrcode,
                      size: 26,
                    ),
                    label: "Pay",
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.wallet,
                      size: 26,
                    ),
                    label: "Offer",
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
      appBar: AppBar(
        backgroundColor: FinappColor.appBarColor,
        title: TextWidget(
          title: widget.title,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.notifications_none_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          // Search
          Container(
            width: double.infinity,
            height: 55,
            color: FinappColor.appBarColor,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
              child: TextFormField(
                cursorColor: FinappColor.textfieldBorderColor,
                controller: searchController,
                focusNode: searchFocusNode,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: FinappColor.textfieldBorderColor,
                  ),
                  contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search here!",
                  hintStyle: TextStyle(color: FinappColor.textfieldBorderColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),

          // Our Product Offering

          Consumer<BottomNavBarProvider>(
            builder: (context, value, child) {
              return Expanded(child: widget.child);
            },
          ),
        ],
      ),
    );
  }
}
