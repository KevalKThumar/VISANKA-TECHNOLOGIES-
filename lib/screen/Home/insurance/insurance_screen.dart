// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finapp/index.dart';

class ScreenArguments {
  final String id;
  final String name;
  final double premiumAmount;

  ScreenArguments(this.id, this.name, this.premiumAmount);
}

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    int length = 5;
    String name = "General Insurance_";
    String id = "AA-00-000-00";
    double premiumAmount = 2500.00;
    return Home(
      title: "Fin Insurance.",
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, RoutesName.home);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                TextWidget(
                  title: "General/Health Insurance ($length)",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),

          // List of insurance

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: FinappColor.noReddemedContainerColor,
                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // row
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Insurance Name General Insurance 1
                              TextWidget(
                                title: "$name$index",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: FinappColor.appBarColor,
                              ),

                              // go to Insurance Details page with Insurance name and premium Amount
                              IconButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, RoutesName.generalInsurance,
                                      arguments: ScreenArguments(
                                        "$id$index",
                                        "$name$index",
                                        premiumAmount,
                                      ));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: FinappColor.goldenColor,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // police no
                                  TextWidget(
                                    title: "Policy No.",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: FinappColor.appBarColor,
                                  ),
                                  // go to Insurance Details page with Insurance name and premium Amount
                                  TextWidget(
                                    title: "$id$index",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // police no Premium Amount
                                  TextWidget(
                                    title: "Premium Amount",
                                    fontSize: 12,
                                    color: FinappColor.appBarColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  // go to Insurance Details page with Insurance name and premium Amount
                                  TextWidget(
                                    title: "Rs. $premiumAmount",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: length,
            ),
          )
        ],
      ),
    );
  }
}
