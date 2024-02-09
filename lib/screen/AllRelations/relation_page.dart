import 'package:finapp/index.dart';

class RelationDetailsArgument {
  RelationDetailsArgument(
    this.nameOfRelation,
    this.id,
    this.totlaAmount,
    this.emiAmount,
    this.totalPaidAmount,
  );
  final String nameOfRelation;
  final String id;
  final double totlaAmount;
  final double emiAmount;
  final double totalPaidAmount;
}

class RelationPage extends StatelessWidget {
  const RelationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin Relations.",
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
                const TextWidget(
                  title: "All Relations",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),

          //Relation Details

          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: EmiCountWidget(
                    image: 'image/home/Loan.png',
                    nameOfRelation: "Local - Printer",
                    id: "123ABC456DEF78",
                    totlaAmount: 100000,
                    emiAmount: 10000,
                    totalPaidAmount: 50000,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RoutesName.relationInDetails,
                        arguments: RelationDetailsArgument(
                          "Local - Printer",
                          "123ABC456DEF78",
                          100000,
                          10000,
                          50000,
                        ),
                      );
                    },
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
