// ignore_for_file: prefer_const_constructors

import 'package:finapp/index.dart';

class LifeStyle extends StatelessWidget {
  const LifeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin Lifestyle.",
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RoutesName.account);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: FinappColor.textColor,
                      size: 30,
                    ),
                  ),
                  const TextWidget(
                    title: "View Lifestyle Products",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: HomeIcons.lifestyle.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .25,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: FinappColor.reddemedContainerColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset(
                              HomeIcons.lifestyle[index].image,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(HomeIcons.lifestyle[index].name)
                      ],
                    ),
                  );
                },
              ),
            ),

            // Offers from our top brands

            //No-Cost EMI on 2 Wheelers
            const Center(
              child: TextWidget(
                title: "Offers from our top brands",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),
            Container(
              color: FinappColor.noReddemedContainerColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.32,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: HomeIcons.lifestyle.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 170,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                        height: 200,
                        color: Color.fromARGB(255, 245, 244, 244),
                        width: MediaQuery.of(context).size.width * .25,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: Image.asset(
                                'image/product/puma.png',
                                height: 40,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'image/product/pumaBanner.png',
                                height: 23,
                                width: 10,
                                fit: BoxFit.cover,
                              ),
                            ),
                            TextWidget(
                              title: 'UP TO 60% OFF',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: FinappColor.errorColor,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
