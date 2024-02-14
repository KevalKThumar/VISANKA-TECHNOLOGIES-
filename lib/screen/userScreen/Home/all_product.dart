

import '../../../index.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "FinApp.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
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

            //  Products for you

            
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
      
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 100,
                ),
                itemBuilder: (context, index) {
                  return PoductCard(
                    title: Products.productforyou[index].name,
                    icon: Products.productforyou[index].image,
                    routeName: Products.productforyou[index].routeName,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 100,
                ),
                itemBuilder: (context, index) {
                  return PoductCard(
                    icon: Products.moreProduct[index].image,
                    title: Products.moreProduct[index].name,
                    routeName: Products.moreProduct[index].routeName,
                  );
                },
                itemCount: Products.moreProduct.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
