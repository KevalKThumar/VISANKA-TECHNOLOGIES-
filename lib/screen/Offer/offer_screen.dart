
import 'package:finapp/index.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
        isShowSearchBar: false,
        title: "Fin Rewards.",
        child: Column(
          children: [
            // Trending Offers
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                  title: "Trending Offers",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: FinappColor.appBarColor),
                      child: Center(
                        child: TextWidget(
                          title: Offer.offerList[index].title,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: TextWidget(
                      title: Offer.offerList[index].message,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      textAlign: TextAlign.start,
                    ),
                  );
                },
                itemCount: Offer.offerList.length,
              ),
            ),
          ],
        ));
  }
}
