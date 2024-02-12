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
                  CreditCard(
                    imageSize: 90,
                    cvv: 123,
                    lastFourNumberOfCard: 1234,
                    nameOfCardHolder: "John Doe",
                    expDate: "12/24",
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RoutesName.digitalCard,
                        arguments: DigitalCardArguments(
                          "John Doe",
                          1234,
                          "12/24",
                          1233,
                        ),
                      );
                    },
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
                        textButton("View all", () {
                          Navigator.pushNamed(
                              context, RoutesName.billAndRecharge);
                        }, FinappColor.goldenColor)
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
                                routeName: RoutesName.rechargeSearch,
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
                  textButton("View all", () {
                    Navigator.pushNamed(context, RoutesName.allRelation);
                  }, FinappColor.goldenColor)
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
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.upipage,
                  arguments: PaymentArgument(
                    100000 - 50000,
                    "Local - Printer",
                    "123ABC456DEF78",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.nameOfCardHolder,
    required this.lastFourNumberOfCard,
    required this.expDate,
    required this.cvv,
    required this.onTap,
    required this.imageSize,
  });
  final String nameOfCardHolder;
  final int lastFourNumberOfCard;
  final String expDate;
  final int cvv;
  final VoidCallback onTap;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          assetImage('image/product/FinCard.png', imageSize),
          Positioned(
            top: 30,
            left: 10,
            child: TextWidget(
              title: nameOfCardHolder,
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 45,
            left: 63,
            child: TextWidget(
              title: "$lastFourNumberOfCard",
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 70,
            left: 10,
            child: TextWidget(
              title: expDate,
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 70,
            left: 120,
            child: TextWidget(
              title: cvv.toString(),
              fontSize: 7,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
