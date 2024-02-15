import 'package:finapp/index.dart';

class RemoveAndRestricWidget extends StatelessWidget {
  const RemoveAndRestricWidget({
    super.key,
    required this.image,
    required this.name,
    required this.id,
    required this.removeOnTap,
    required this.restictOnTap,
  });

  final String image;
  final String name;
  final String id;
  final VoidCallback removeOnTap;
  final VoidCallback restictOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border(
            bottom: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            top: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            right: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
            left: BorderSide(
              color: FinappColor.appBarColor,
              width: 3,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            // first
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo
                const SizedBox(width: 15),
                assetImage(image, 50),

                const SizedBox(width: 10),
                // title
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name of sender / receiver
                    TextWidget(
                      title: name,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    // id
                    TextWidget(
                      title: id,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            // info
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 3.0),
              child: Text(
                /**TODO - add info here */
                "lorem  prefer_adjacent_string_concatenation",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    color: FinappColor.textColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            // third
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textButton("Remove", removeOnTap, FinappColor.goldenColor),
                textButton("Restict", restictOnTap, FinappColor.goldenColor)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
