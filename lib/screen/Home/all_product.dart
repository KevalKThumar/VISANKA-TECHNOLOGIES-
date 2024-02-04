import 'package:finapp/constant/products.dart';

import '../../index.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "FinApp.",
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                const TextWidget(
                  title: "Our Product Offering",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          )

          //  Products for you

          ,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextWidget(
                title: "Products for you",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: FinappColor.textColor,
              ),
            ),
          ),

          // Products

          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 100,
              ),
              itemBuilder: (context, index) {
                return PoductCard(
                  title: Products.productforyou[index].name,
                  icon: Products.productforyou[index].image,
                  onTap: Products.productforyou[index].onTap,
                );
              },
              itemCount: Products.productforyou.length,
            ),
          ),
          // More Loans
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextWidget(
                title: "More Loans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: FinappColor.textColor,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 100,
              ),
              itemBuilder: (context, index) {
                return PoductCard(
                  icon: Products.moreProduct[index].image,
                  title: Products.moreProduct[index].name,
                  onTap: Products.moreProduct[index].onTap,
                );
              },
              itemCount: Products.moreProduct.length,
            ),
          ),
        ],
      ),
    );
  }
}
