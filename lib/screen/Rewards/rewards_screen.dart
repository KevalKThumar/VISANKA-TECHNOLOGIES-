import 'package:finapp/constant/rewards.dart';
import 'package:finapp/index.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
        title: "Fin Rewards.",
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //  My Rewards
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    title: "My Rewards",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: FinappColor.textColor,
                  ),
                ),
              ),

              // List of unredeemed rewards

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: List.generate(
                      1,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RewardWidget(
                                isReddemed: false,
                                inWhichOfferApply:
                                    Rewards.myRewards[index].subTitle,
                                offer: Rewards.myRewards[index].title,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Column(
                    children: List.generate(
                      1,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RewardWidget(
                                isReddemed: false,
                                inWhichOfferApply:
                                    Rewards.myRewards[index + 1].subTitle,
                                offer: Rewards.myRewards[index + 1].title,
                                condition:
                                    Rewards.myRewards[index + 1].condtion,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // Previously Redeemed Rewards

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    title: "Previously Redeemed Rewards",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: FinappColor.textColor,
                  ),
                ),
              ),

              // List of redeemed rewards

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RewardWidget(
                                isReddemed: true,
                                inWhichOfferApply:
                                    Rewards.myRewards[index].subTitle,
                                offer: Rewards.myRewards[index].title,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RewardWidget(
                                isReddemed: true,
                                inWhichOfferApply:
                                    Rewards.myRewards[index + 1].subTitle,
                                offer: Rewards.myRewards[index + 1].title,
                                condition:
                                    Rewards.myRewards[index + 1].condtion,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class RewardWidget extends StatelessWidget {
  const RewardWidget({
    super.key,
    required this.offer,
    required this.inWhichOfferApply,
    this.condition,
    required this.isReddemed,
  });

  final String offer;
  final String inWhichOfferApply;
  final String? condition;
  final bool isReddemed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: isReddemed
            ? FinappColor.reddemedContainerColor
            : FinappColor.noReddemedContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 10.0, left: 1, top: 10, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                title: offer,
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
              TextWidget(
                title: inWhichOfferApply,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              condition == null
                  ? const SizedBox(
                      height: 23,
                    )
                  : TextWidget(
                      title: condition!,
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
