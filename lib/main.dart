import 'package:finapp/index.dart';
import 'package:finapp/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late String userType;

  @override
  void initState() {
    userType = "admin";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => RegisterProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        title: 'FinApp',
        routes: {
          RoutesName.generalInsurance: (context) => const GeneralInsurance(),
          RoutesName.digitalCard: (context) => const DigitalCardPage(),
          RoutesName.upiSearch: (context) => const UpiSearchPage(),
          RoutesName.relationInDetails: (context) => const RelationDetailPage(),
          RoutesName.rechargeOption: (context) => const RechargeOption(),
          RoutesName.upipage: (context) => const UpiPage(),
        },
        initialRoute:
            userType == "admin" ? RoutesName.adminHomeScreen : RoutesName.home,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
