import 'package:finapp/screen/managerScreen/home/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../index.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // user
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
      // admin
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
      case RoutesName.adminAddUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AdminAddUser(),
        );
      case RoutesName.removeRestrictUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RemoveRestrictUser(),
        );
      case RoutesName.managers:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManageManager(),
        );
      case RoutesName.adminAddManager:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AdminAddManager(),
        );
      case RoutesName.removeRestrictManager:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RemoveRestrictManager(),
        );
      case RoutesName.salesExecutive:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManageSelesExecutive(),
        );
      case RoutesName.adminAddsalesExecutive:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AdminAddSalesExecutive(),
        );
      case RoutesName.removeRestrictsalesExecutive:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RemoveRestrictSalesExecutive(),
        );
      case RoutesName.loanDetails:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const LoanDetails(),
        );
      case RoutesName.oneUserLoan:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const OneUserLoan(),
        );
      //ANCHOR - Manager
      case RoutesName.managerdashboard:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManagerDashboardPage(),
        );
      case RoutesName.managereditprofile:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManagerEditProfile(),
        );
      case RoutesName.salesExecutiveAdd:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManagerEditProfile(),
        );
      case RoutesName.salesExecutiveRemoveRestict:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const SalesExecutiveRemoveRestict(),
        );
      case RoutesName.salesExecutiveList:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ListOfSelesExecutive(),
        );
      case RoutesName.removeRestrictUserBySalesExe:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RemoveRestrictUserBySalesExe(),
        );
      case RoutesName.applideUserListScreen:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const AppliedUserList(),
        );
      case RoutesName.approveOrRejectScreen:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ApproveReject(),
        );
      case RoutesName.managerHomeScreen:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ManagerHomePage(),
        );
      // ANCHOR - Sales Executive

      case RoutesName.salesExecutiveHomeScreen:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const SalesExecutiveHomePage(),
        );
      case RoutesName.rejectionDetails:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const RejectionDetails(),
        );
      case RoutesName.approveDetails:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const ApproveDetails(),
        );
      case RoutesName.pandingDetails:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const PandingDetails(),
        );
      case RoutesName.salesExecutiveeditprofile:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const SalesExecutiveEditProfile(),
        );
      case RoutesName.propertyLoanApplicationOfUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const PropertyLoanPage(),
        );
      case RoutesName.bikeLoanApplicationOfUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const BikeLoanPage(),
        );
      case RoutesName.carLoanApplicationOfUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const CarLoanPage(),
        );
      case RoutesName.goldLoanApplicationOfUser:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) => const GoldLoanPage(),
        );

      default:
        return CupertinoPageRoute(
          maintainState: false,
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('404 Page Not Found'),
                centerTitle: true,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('No Route defined for ${settings.name}'),
                    textButton("Go To Home Page", () {
                      Navigator.popAndPushNamed(
                        context,
                        MainApp.userType == "admin"
                            ? RoutesName.adminHomeScreen
                            : MainApp.userType == "Manager"
                                ? RoutesName.managerHomeScreen
                                : MainApp.userType == "SalesExecutive"
                                    ? RoutesName.salesExecutiveHomeScreen
                                    : RoutesName.home,
                      );
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
