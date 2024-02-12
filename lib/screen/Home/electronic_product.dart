import 'package:finapp/index.dart';

class ElectronicPage extends StatelessWidget {
  const ElectronicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin Electronics.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              padding: const EdgeInsets.only(top: 10),
              color: FinappColor.noReddemedContainerColor,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 100,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return PoductCard(
                    isWrapInCircle: true,
                    sizeOfImage: 40,
                    icon: HomeIcons.electricProducts[index].image,
                    title: HomeIcons.electricProducts[index].name,
                    routeName: HomeIcons.electricProducts[index].routeName!,
                  );
                },
                itemCount: HomeIcons.electricProducts.length,
              ),
            ),

            // Shop from your favourite brands
            const SizedBox(height: 20),

            const Center(
              child: TextWidget(
                title: "Shop from your favourite brands",
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

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
                    colorOfCircle: const Color.fromARGB(255, 211, 208, 208),
                    isWrapInCircle: true,
                    sizeOfImage: 45,
                    icon: HomeIcons.favoriteBrands[index].image,
                    title: HomeIcons.favoriteBrands[index].name,
                    routeName: HomeIcons.favoriteBrands[index].routeName!,
                  );
                },
                itemCount: HomeIcons.favoriteBrands.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
