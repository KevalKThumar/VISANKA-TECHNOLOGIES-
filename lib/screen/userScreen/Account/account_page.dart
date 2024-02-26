// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import '../../../index.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      isShowSearchBar: false,
      title: "Fin Account.",
      child: SingleChildScrollView(
        child: Column(
          children: [
            // My Fin. Account
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                  title: "My Fin. Account",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            // Row For user name and details

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // circular image
                Consumer<ImagePickerProvider>(
                  builder: (context, value, child) {
                    return CircleAvatar(
                      radius: 60,
                      backgroundColor: FinappColor.userDpColor,
                      child: value.image == ""
                          ? const Icon(Icons.person,
                              size: 90, color: Colors.white)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(File(value.image),
                                  fit: BoxFit.fill),
                            ),
                    );
                  },
                ),
                // Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name
                    TextWidget(
                      title: "Thumar Keval",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    // email
                    Row(
                      children: [
                        const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                        SizedBox(width: 3),
                        TextWidget(
                          title: "thumarkeval12@gmail.com",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    // phone
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 18,
                        ),
                        SizedBox(width: 3),
                        TextWidget(
                          title: "+91 1234567890",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    // Editprofile text button navigat to Editprofile page
                    textButton("Edit Profile", () {
                      Navigator.pushNamed(
                          context, RoutesName.editProfile);
                    }, Colors.blue),
                  ],
                )
              ],
            ),

            SizedBox(height: 20),

            // Log out button with color FinAppColor.error

            elevatedButton(
              "Log Out",
              () {},
              MediaQuery.of(context).size.width - 70,
              40,
              Colors.white,
              backgroundColor: FinappColor.errorColor,
            ),

            // Fin. Rating

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                  title: "Fin. Rating",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // reusable row

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: List.generate(
                  Rating.ratingList.length,
                  (index) => TextNumberRow(
                    left: Rating.ratingList[index].title,
                    right: Rating.ratingList[index].rating,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
