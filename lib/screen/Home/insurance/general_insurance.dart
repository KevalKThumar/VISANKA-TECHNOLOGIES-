import 'package:finapp/index.dart';

class GeneralInsurance extends StatelessWidget {
  const GeneralInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Home(
        title: "Fin Insurance.",
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, RoutesName.insurance);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                TextWidget(
                  title: args.name,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),

          Center(
            child: TextWidget(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              title: args.id,
              color: FinappColor.textColor,
              textAlign: TextAlign.center,
            )
          )

        ])
    );
  }
}
