import 'package:finapp/index.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
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
            const SizedBox(height: 10),
            // second progress bar ::: for percentage total EMI- Total Amount / EMI Amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LinearProgressIndicator(
                minHeight: 7,
                value: ((totalPaidAmount / emiAmount).ceil() /
                    (totlaAmount / emiAmount)
                        .ceil()), // value = (Total Amount / EMI Amount * 10)
                borderRadius: const BorderRadius.all(Radius.circular(12)),
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
