import 'package:finapp/constant/relation_details.dart';
import 'package:finapp/index.dart';

class RelationDetailPage extends StatelessWidget {
  const RelationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as RelationDetailsArgument;
    return Home(
      isShowSearchBar: false,
      title: "Fin Relations.",
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
                          context, RoutesName.allRelation);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: FinappColor.textColor,
                      size: 30,
                    ),
                  ),
                  const TextWidget(
                    title: "Relation Details",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  children: [
                    // first
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo
                          assetImage('image/home/Loan.png', 50),

                          // title
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // name of sender / receiver
                              TextWidget(
                                title: args.nameOfRelation,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              // id
                              TextWidget(
                                title: args.id,
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
                                title: "Rs.${args.totlaAmount}",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(height: 5),
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
                    const SizedBox(height: 5),
                    // second progress bar ::: for percentage total EMI- Total Amount / EMI Amount
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: LinearProgressIndicator(
                        minHeight: 7,
                        value: ((args.totalPaidAmount / args.emiAmount).ceil() /
                            (args.totlaAmount / args.emiAmount)
                                .ceil()), // value = (Total Amount / EMI Amount * 10)
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        backgroundColor: FinappColor.appBarColor,
                        color: FinappColor.successColor,
                      ),
                    ),

                    // third
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextNumberRow(
                        left: "Principal Outstanding",
                        right: "Annualized Rate of",
                        fontSize: 14,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextNumberRow(
                        left: "Amount",
                        right: "Interest",
                        fontSize: 14,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextNumberRow(
                        left: "Rs. 4885.0",
                        right: "0.00%",
                        fontSize: 16,
                      ),
                    ),

                    // Next EMI Due Amount : Rs. 2443.0 (Due on 02/06/2023)

                    const SizedBox(height: 15),

                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: FinappColor.userDpColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(text: "Next EMI Due Amount: "),
                            TextSpan(
                              text: "Rs. 2443.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: " (Due on 02/06/2023)"),
                          ]),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          title: 'Loan Details',
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),

                    Column(
                      children: List.generate(
                        RelationDetails.relationDetails.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextNumberRow(
                            left: RelationDetails.relationDetails[index].title,
                            right: index == 0
                                ? "${(args.totalPaidAmount / args.emiAmount).ceil()}/${(args.totlaAmount / args.emiAmount).ceil()}"
                                : RelationDetails.relationDetails[index].rating,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), // emi box
          ],
        ),
      ),
    );
  }
}
