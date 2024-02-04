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
