

import '../../index.dart';



class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.getStartedPage:
        return MaterialPageRoute(
          builder: (context) => const GetStartedPage(),
        );
      case RoutesName.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case RoutesName.allProduct:
        return MaterialPageRoute(
          builder: (context) => const AllProducts(),
        );
      case RoutesName.account:
        return MaterialPageRoute(
          builder: (context) => const AccountPage(),
        );
      case RoutesName.offer:
        return MaterialPageRoute(
          builder: (context) => const OfferPage(),
        );
      case RoutesName.rewards:
        return MaterialPageRoute(
          builder: (context) => const RewardPage(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RoutesName.editProfile:
        return MaterialPageRoute(
          builder: (context) => const AccountEditPage(),
        );
      case RoutesName.vehicles:
        return MaterialPageRoute(
          builder: (context) => const VehiclesScreen(),
        );
      case RoutesName.electronic:
        return MaterialPageRoute(
          builder: (context) => const ElectronicPage(),
        );
      case RoutesName.lifestyle:
        return MaterialPageRoute(
          builder: (context) => const LifeStyle(),
        );
      case RoutesName.insurance:
        return MaterialPageRoute(
          builder: (context) => const InsurancePage(),
        );
      case RoutesName.upipage:
        return MaterialPageRoute(
          builder: (context) => const UpiPage(),
        );
      case RoutesName.upiSearch:
        return MaterialPageRoute(
          builder: (context) => const UpiSearchPage(),
        );
    
      case RoutesName.rechargeSearch:
        return MaterialPageRoute(
          builder: (context) => const RechargeSearchPage(),
        );
      case RoutesName.billAndRecharge:
        return MaterialPageRoute(
          builder: (context) => const BillRechargePage(),
        );
      case RoutesName.allRelation:
        return MaterialPageRoute(
          builder: (context) => const RelationPage(),
        );
      default:
        return MaterialPageRoute(
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
