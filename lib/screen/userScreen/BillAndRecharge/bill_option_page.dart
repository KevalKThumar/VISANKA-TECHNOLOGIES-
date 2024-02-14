import 'package:finapp/index.dart';

class UserData {
  final String name;
  final String number;

  UserData(this.name, this.number);
}

class RechargeOption extends StatefulWidget {
  const RechargeOption({super.key});

  @override
  State<RechargeOption> createState() => _RechargeOptionState();
}

class _RechargeOptionState extends State<RechargeOption>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as UserData;
    return Home(
      title: "FinBill.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, RoutesName.rechargeSearch);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: FinappColor.textColor,
                      size: 30,
                    ),
                  ),
                  const TextWidget(
                    title: "Go back to Selecting Contact",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            assetImage('image/bill/airtal.png', 100),
            const SizedBox(height: 10),
            TextWidget(
              title: "${args.name} : +91 ${args.number}",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 62, 155, 188),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            // Available Plans

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                  title: "Available Plans",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // ...

            TabBar(
              enableFeedback: false,
              automaticIndicatorColorAdjustment: false  ,
              labelColor: FinappColor.userDpColor,
              isScrollable: true,
              controller: _tabController,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              labelStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.only(left: 10, right: 10),
              indicatorColor: FinappColor.userDpColor,
              tabs: const [
                Tab(
                  text: "RECOMMENDED",
                ),
                Tab(text: 'UNLIMITED PLAN'),
                Tab(text: 'TOP UP'),
                Tab(text: 'INTERNET'),
                Tab(text: 'INTERNET'),
                Tab(text: 'INTERNET'),
                Tab(text: 'INTERNET'),
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // 1
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 2
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 3
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 4

                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 5

                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 6

                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // 7

                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ListTile(
                          onTap: () {},
                          title: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Validity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.userDpColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "28 Days",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: FinappColor.appBarColor,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "Description ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: FinappColor.userDpColor,
                            ),
                          ),
                          trailing: const Text(
                            "₹199",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: FinappColor.appBarColor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
