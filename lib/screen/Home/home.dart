// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'dart:ffi';

import 'package:flutter/cupertino.dart';

import '../../index.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key,
      required this.title,
      required this.child,
      this.isShowSearchBar = true});

  final String title;
  final Widget child;
  final bool isShowSearchBar;

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
        padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 14),
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
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 50.0, horizontal: 20),
                                child: const Row(
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
                // showModalBottomSheet(
                //   context: context,
                //   shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(10.0),
                //       topRight: Radius.circular(10.0),
                //     ),
                //   ),
                //   builder: (context) {
                //     return Container(
                //       height: 200,
                //       width: double.infinity,
                //       color: Colors.amber,
                //       child: const Center(
                //         child: Text('Modal Bottom Sheet'),
                //       ),
                //     );
                //   },
                // );
              },
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
          widget.isShowSearchBar
              ? Container(
                  width: double.infinity,
                  height: 55,
                  color: FinappColor.appBarColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
                    child: TextFormField(
                      cursorColor: FinappColor.textfieldBorderColor,
                      controller: searchController,
                      focusNode: searchFocusNode,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: FinappColor.textfieldBorderColor,
                        ),
                        contentPadding:
                            EdgeInsets.only(top: 5, bottom: 5, left: 10),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search here!",
                        hintStyle:
                            TextStyle(color: FinappColor.textfieldBorderColor),
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
                )
              : SizedBox(),

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
