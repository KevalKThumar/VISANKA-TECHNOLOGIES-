import 'package:finapp/constant/recharge.dart';
import 'package:finapp/index.dart';

class BillRechargePage extends StatelessWidget {
  const BillRechargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
        isShowSearchBar: false,
        title: "FinBill.",
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
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
                      title: "Our Product Offering",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  // Recharges
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        title: "Recharges",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: GridView.builder(
                      itemCount: BillAndRecharge.recharges.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return PoductCard(
                          title: BillAndRecharge.recharges[index].name,
                          icon: BillAndRecharge.recharges[index].image,
                          routeName: RoutesName.rechargeSearch,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Utility Bills
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        title: "Utility Bills",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: BillAndRecharge.utilityBills.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return PoductCard(
                          title: BillAndRecharge.utilityBills[index].name,
                          icon: BillAndRecharge.utilityBills[index].image,
                          routeName: RoutesName.rechargeSearch,
                        );
                      },
                    ),
                  ),

                  // Finance & Taxes

                  const SizedBox(height: 10),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        title: "Finance & Taxes",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: MediaQuery.of(context).size.height * 0.130,
                    child: GridView.builder(
                      itemCount: BillAndRecharge.financeAndTaxes.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return PoductCard(
                          title: BillAndRecharge.financeAndTaxes[index].name,
                          icon: BillAndRecharge.financeAndTaxes[index].image,
                          routeName: RoutesName.rechargeSearch,
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
