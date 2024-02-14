import 'package:finapp/index.dart';

class AdminEditProfile extends StatefulWidget {
  const AdminEditProfile({super.key});

  @override
  State<AdminEditProfile> createState() => _AdminEditProfileState();
}

class _AdminEditProfileState extends State<AdminEditProfile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(title: "Admin Edit Profile Page", fontSize: 20, fontWeight: FontWeight.bold),
      )
    );
  }
}