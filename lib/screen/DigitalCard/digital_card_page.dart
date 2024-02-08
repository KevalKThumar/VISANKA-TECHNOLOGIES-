import 'package:finapp/index.dart';

class DigitalCardArguments {
  final String nameOfCardHolder;
  final int lastFourNumberOfCard;
  final String expDate;
  final double cvv;

  DigitalCardArguments(
      this.nameOfCardHolder, this.lastFourNumberOfCard, this.expDate, this.cvv);
}

class DigitalCardPage extends StatelessWidget {
  const DigitalCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "FinCard.",
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
                      Navigator.popAndPushNamed(context, RoutesName.home);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: FinappColor.textColor,
                      size: 30,
                    ),
                  ),
                  const TextWidget(
                    title: "View Lifestyle Products",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: assetImage('image/product/FinCard.png', 200),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) {
                  return topButton(
                    image: HomeIcons.bill[index].image,
                    name: HomeIcons.bill[index].name,
                    routeName: HomeIcons.bill[index].routeName!,
                    context: context,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                title:
                    "Use your new Fin. card digitally to pay to multiple sellers digitally.",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
                color: FinappColor.userDpColor,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                title:
                    "The Fin, card comes with a wide range of safety features that enable secure processing of transactions and many other features that gives you the payment experience that you deserve.",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
                color: FinappColor.appBarColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
