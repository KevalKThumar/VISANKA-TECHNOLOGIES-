// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finapp/constant/insurance.dart';
import 'package:finapp/index.dart';

class GeneralInsurance extends StatelessWidget {
  const GeneralInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
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
                    Navigator.popAndPushNamed(context, RoutesName.insurance);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                TextWidget(
                  title: args.name,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              // row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // icon
                    CircleAvatar(
                        backgroundColor: FinappColor.userDpColor,
                        radius: 28,
                        child: assetImage(
                          'image/bill/Insurance.png',
                          45,
                        )),
                    // name and policy number or id
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // police Name
                        TextWidget(
                          title: args.name,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        //
                        TextWidget(
                          title: "Policy No: ${args.id}",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                        ),
                      ],
                    ),

                    // Premium amt.

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // police no
                        TextWidget(
                          title: "Premium Amt.",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                        ),
                        // go to Insurance Details page with Insurance name and premium Amount
                        TextWidget(
                          title: "Rs. 4000.0",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // date
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // policy start date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // police no
                        TextWidget(
                          title: "Policy Start Date",
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                          textAlign: TextAlign.start,
                        ),
                        // go to Insurance Details page with Insurance name and premium Amount
                        TextWidget(
                          title: "28/10/2022",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    // policy start end
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // police no
                        TextWidget(
                          title: "Policy End Date",
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                        ),
                        // go to Insurance Details page with Insurance name and premium Amount
                        TextWidget(
                          title: "27/10/2023",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    // policy start Renewal Date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // police no
                        TextWidget(
                          title: "Policy Renewal Date",
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: FinappColor.appBarColor,
                        ),
                        // go to Insurance Details page with Insurance name and premium Amount
                        TextWidget(
                          title: "28/10/2023",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // insurance details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    title: "Insurance Details",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: FinappColor.appBarColor,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),

              // repetable row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: List.generate(
                    Insurance.insuranceDetails.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextNumberRow(
                        left: Insurance.insuranceDetails[index].title,
                        right: Insurance.insuranceDetails[index].rating,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
