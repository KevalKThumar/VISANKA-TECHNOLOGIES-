import 'package:finapp/index.dart';
import 'package:finapp/widget/remove_and_restrict_widget.dart';

class RemoveRestrictManager extends StatelessWidget {
  const RemoveRestrictManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "Manager",
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: FinappColor.appBarColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, RoutesName.adminLogin);
              },
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
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
                  title: "Remove and Restrict Manager",
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          RemoveAndRestricWidget(
            image: 'image/home/Loan.png',
            name: "Keval Thumar",
            id: "123ABC456DEF78",
            removeOnTap: () {
              // Navigator.pushNamed(context, RoutesName.adminLogin);
            },
            restictOnTap: () {
              //
            },
          ),
          // History of user.
          const SizedBox(height: 10),
          const TextWidget(
            title: "History",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: FinappColor.textColor,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextWidget(
                title:
                    "Here we can add some more information about user like: \n 1) transaction history \n 2) loan history\n 3) bill history\n 4) recharge history\n",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
