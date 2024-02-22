import 'package:finapp/index.dart';

class ManagerProfle extends StatelessWidget {
  const ManagerProfle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // My Fin. Account
            const Align(
              alignment: Alignment.center,
              child: TextWidget(
                title: "My Fin. Account",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Row For user name and details

            Consumer<ImagePickerProvider>(
              builder: (context, value, child) {
                return CircleAvatar(
                  radius: 60,
                  backgroundColor: FinappColor.userDpColor,
                  child: value.image == ""
                      ? const Icon(Icons.person, size: 90, color: Colors.white)
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child:
                              Image.file(File(value.image), fit: BoxFit.fill),
                        ),
                );
              },
            ),
            // Column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      SizedBox(height: 10),

                      SizedBox(height: 10),

                      // name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            title: "Name:",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          TextWidget(
                            title: "Thumar Keval",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // email
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            title: "E-mail:-",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(width: 3),
                          TextWidget(
                            title: "thumarkeval12@gmail.com",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      // phone
                      SizedBox(height: 10),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            title: "Phone:-",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(width: 3),
                          TextWidget(
                            title: "+91 1234567890",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),

                      // Editprofile text button navigat to Editprofile page
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Log out button with color FinAppColor.error

            elevatedButton(
              "Log Out",
              () {},
              MediaQuery.of(context).size.width - 70,
              40,
              Colors.white,
              backgroundColor: FinappColor.errorColor,
            ),
            const SizedBox(height: 10),
            elevatedButton(
              "Edit Profile",
              () {
                Navigator.pushNamed(context, RoutesName.managereditprofile);
              },
              MediaQuery.of(context).size.width - 70,
              40,
              Colors.white,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
