import 'package:finapp/screen/adminScreen/admin_home_screen.dart';
import 'package:finapp/screen/adminScreen/profile/admin_edit_profile.dart';
import 'package:flutter/cupertino.dart';

import '../../index.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const LoginScreen(),
        );
      case RoutesName.getStartedPage:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const GetStartedPage(),
        );
      case RoutesName.register:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RegisterPage(),
        );
      case RoutesName.allProduct:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AllProducts(),
        );
      case RoutesName.account:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AccountPage(),
        );
      case RoutesName.offer:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const OfferPage(),
        );
      case RoutesName.rewards:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RewardPage(),
        );
      case RoutesName.home:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const HomePage(),
        );
      case RoutesName.editProfile:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AccountEditPage(),
        );
      case RoutesName.vehicles:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const VehiclesScreen(),
        );
      case RoutesName.electronic:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ElectronicPage(),
        );
      case RoutesName.lifestyle:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const LifeStyle(),
        );
      case RoutesName.insurance:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const InsurancePage(),
        );
      case RoutesName.upiSearch:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const UpiSearchPage(),
        );
      case RoutesName.rechargeSearch:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RechargeSearchPage(),
        );
      case RoutesName.billAndRecharge:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const BillRechargePage(),
        );
      case RoutesName.allRelation:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RelationPage(),
        );
      case RoutesName.adminHomeScreen:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AdminHome(),
        );
      case RoutesName.admineditprofile:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AdminEditProfile(),
        );

      default:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('No Route defined for ${settings.name}'),
                    textButton("Go To Home Page", () {
                      Navigator.pushReplacementNamed(context, RoutesName.home);
                    }, Colors.red)
                  ],
                ),
              ),
            );
          },
        );
    }
  }
}
