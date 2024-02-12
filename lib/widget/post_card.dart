import '../index.dart';

class PoductCard extends StatelessWidget {
  const PoductCard({
    super.key,
    required this.icon,
    required this.title,
    required this.routeName,
    this.sizeOfImage = 30,
    this.isWrapInCircle = false,
    this.colorOfCircle = FinappColor.appBarColor,
  });

  final String icon;
  final String title;
  final String routeName;
  final double sizeOfImage;
  final bool isWrapInCircle;
  final Color colorOfCircle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, routeName);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isWrapInCircle
              ? CircleAvatar(
                  radius: 30,
                  backgroundColor: colorOfCircle,
                  child: Center(child: assetImage(icon, sizeOfImage)),
                )
              : assetImage(icon, sizeOfImage),
          const SizedBox(height: 4),
          // title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: FinappColor.textColor,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
