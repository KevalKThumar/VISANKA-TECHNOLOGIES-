// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:finapp/constant/homeicons.dart';
import 'package:finapp/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double totalAmount = 17100;
double emiAmount = 2443;
double totalPaidAmount = 12214;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin App.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // top button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    HomeIcons.bill.length,
                    (index) => topButton(
                          image: HomeIcons.home[index].image,
                          name: HomeIcons.home[index].name,
                          routeName: HomeIcons.home[index].routeName!,
                        )),
              ),
            ),
            // upi and card
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // upi
                  InkWell(
                      onTap: () {},
                      child: assetImage('image/home/UPILogo.png', 90)),
                  // card
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        assetImage('image/home/CardBG.png', 90),
                        const Positioned(
                          top: 8,
                          left: 10,
                          child: TextWidget(
                            title: "Fin.",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 30,
                          left: 10,
                          child: TextWidget(
                            title: "Keval Thumar",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 40,
                          left: 10,
                          child: TextWidget(
                            title: "**** **** **** 1234",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 60,
                          left: 10,
                          child: TextWidget(
                            title: "EXP DATE",
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                            color: FinappColor.textfieldBorderColor,
                          ),
                        ),
                        const Positioned(
                          top: 70,
                          left: 10,
                          child: TextWidget(
                            title: "09/26",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 60,
                          left: 105,
                          child: TextWidget(
                            title: "CVV/CVC",
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                            color: FinappColor.textfieldBorderColor,
                          ),
                        ),
                        const Positioned(
                          top: 70,
                          left: 122,
                          child: TextWidget(
                            title: "123",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 105,
                          child: assetImage(
                            'image/home/Rectangle35.png',
                            30,
                          ),
                        ),
                        const Positioned(
                          top: 7,
                          left: 120,
                          child: RotatedBox(
                            quarterTurns: 25,
                            child: FaIcon(
                              FontAwesomeIcons.wifi,
                              size: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // bottom button
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                color: FinappColor.noReddemedContainerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        const TextWidget(
                          title: "Bills & Recharge",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                        ),
                        const Spacer(),
                        textButton("View all", () {}, FinappColor.goldenColor)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          HomeIcons.bill.length,
                          (index) => topButton(
                                image: HomeIcons.bill[index].image,
                                name: HomeIcons.bill[index].name,
                                routeName: HomeIcons.bill[index].routeName!,
                              )),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Recent Relations

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const TextWidget(
                    title: "Recent Relations",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  textButton("View all", () {}, FinappColor.goldenColor)
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Recent Relations

            EmiCountWidget(
              image: 'image/home/Loan.png',
              nameOfRelation: "Local - Printer",
              id: "123ABC456DEF78",
              totlaAmount: 100000,
              emiAmount: 1000,
              totalPaidAmount: 10000,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget topButton({
    required String image,
    required String name,
    required String? routeName,
  }) {
    return InkWell(
      onTap: () {
        if (routeName != null) {
          Navigator.pushNamed(context, routeName);
        }
        null;
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: FinappColor.appBarColor,
            child: assetImage(image, 30),
          ),
          TextWidget(
            title: name,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: FinappColor.textColor,
          )
        ],
      ),
    );
  }
}

class EmiCountWidget extends StatelessWidget {
  const EmiCountWidget({
    super.key,
    required this.image,
    required this.nameOfRelation,
    required this.id,
    required this.totlaAmount,
    required this.emiAmount,
    required this.totalPaidAmount,
    required this.onTap,
  });

  final String image;
  final String nameOfRelation;
  final String id;
  final double totlaAmount;
  final double emiAmount;
  final double totalPaidAmount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border(
            bottom: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            top: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            right: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            left: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
          ),
        ),
        child: Column(
          children: [
            // first
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo
                  assetImage(image, 50),

                  // title
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name of sender / receiver
                      TextWidget(
                        title: nameOfRelation,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      // id
                      TextWidget(
                        title: id,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  // Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // total Amount
                      TextWidget(
                        title: "Rs.$totlaAmount",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 5),
                      // EMI Amount
                      TextWidget(
                        title: "Rs.$emiAmount",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // second progress bar ::: for percentage total EMI- Total Amount / EMI Amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LinearProgressIndicator(
                minHeight: 7,
                value: ((totalPaidAmount / emiAmount).ceil() /
                    (totlaAmount / emiAmount)
                        .ceil()), // value = (Total Amount / EMI Amount * 10)
                borderRadius: BorderRadius.all(Radius.circular(12)),
                backgroundColor: FinappColor.appBarColor,
                color: FinappColor.successColor,
              ),
            ),
            // third
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    title:
                        "${(totalPaidAmount / emiAmount).ceil()}/${(totlaAmount / emiAmount).ceil()} EMI's Paid",
                    color: FinappColor.appBarColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textButton("Pay now", onTap, FinappColor.goldenColor)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
