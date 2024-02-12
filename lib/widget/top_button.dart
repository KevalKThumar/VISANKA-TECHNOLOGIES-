import 'package:finapp/index.dart';

Widget topButton({
  required String image,
  required String name,
  required String? routeName,
  required BuildContext context,
}) {
  return InkWell(
    onTap: () {
      if (routeName != null) {
        Navigator.pushNamed(
          context,
          routeName,
        );
      }
      null;
    },
    child: Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: FinappColor.appBarColor,
          child: assetImage(image, 30),
        ),
        TextWidget(
          title: name,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: FinappColor.textColor,
        )
      ],
    ),
  );
}
