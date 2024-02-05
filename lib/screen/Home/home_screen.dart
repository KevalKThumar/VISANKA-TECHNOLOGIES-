// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:finapp/index.dart';

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
                          context: context,
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
                                context: context,
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
              emiAmount: 10000,
              totalPaidAmount: 50000,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

 
}


