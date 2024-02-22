

import 'package:finapp/index.dart';

class GoldLoanPage extends StatelessWidget {
  const GoldLoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "Gold Loan Details",
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
                  title: "Gold Loan",
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),

              // Logo
              CircleAvatar(
                radius: 50,
                backgroundColor: FinappColor.userDpColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 70,
                ),
              ),
              SizedBox(width: 30),

              // title
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name of sender / receiver
                  TextWidget(
                    title: "Keval",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  // id
                  TextWidget(
                    title: "Loan Id:- 12345",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              // Price
            ],
          ),

          // name

          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "Loan Amount:-",
              right: "Rs. 1000",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "Duration:-",
              right: "3 year",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "Security:-",
              right: "Gold",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "Rate:-",
              right: "12%",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "Start Date:-",
              right: "16-02-2024",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: TextNumberRow(
              left: "End Date:-",
              right: "11-03-2024",
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Center(
            child: elevatedButton(
              backgroundColor: FinappColor.successColor,
              "Approved",
              () {
                showLoadingDialog(context, "Changing Status...", 25);
              },
              MediaQuery.of(context).size.width - 100,
              50,
              Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: elevatedButton(
              backgroundColor: FinappColor.errorColor,
              "Send As Rejected",
              () {
                showLoadingDialog(context, "Sending As Rejected...", 20);
              },
              MediaQuery.of(context).size.width - 100,
              50,
              Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


