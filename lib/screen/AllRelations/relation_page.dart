import 'package:finapp/index.dart';

class RelationPage extends StatelessWidget {
  const RelationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin Relations.",
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: TextWidget(
              title: "Our Product Offering",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),

          //Relation Details

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return EmiCountWidget(
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
                    );
                  },
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
