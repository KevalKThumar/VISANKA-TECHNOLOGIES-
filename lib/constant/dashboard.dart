import 'package:finapp/index.dart';
import 'package:finapp/model/admin_dashboard_modal.dart';

class DashBoard {
  static final List<AdminDashBoard> adminDashBoard = [
    AdminDashBoard(
      name: "Managers",
      routeName: RoutesName.managers,
    ),
    AdminDashBoard(
      name: "Sales Executive",
      routeName: RoutesName.salesExecutive,
    ),
  ];
  static final List<AdminDashBoard> managerDashBoard = [
    AdminDashBoard(
      name: "Sales Executive",
      routeName: RoutesName.salesExecutiveList,
    ),
    AdminDashBoard(
      name: "User's LoanApplication",
      routeName: RoutesName.applideUserListScreen,
    ),
  ];
  static final List<AdminDashBoard> salesExecutiveLoanList = [
    AdminDashBoard(
      name: "Car Loan",
      routeName: RoutesName.carLoanApplicationOfUser,
    ),
    AdminDashBoard(
      name: "property Loan",
      routeName: RoutesName.propertyLoanApplicationOfUser,
    ),
    AdminDashBoard(
      name: "Bike Loan",
      routeName: RoutesName.bikeLoanApplicationOfUser,
    ),
    AdminDashBoard(
      name: "Gold Loan",
      routeName: RoutesName.goldLoanApplicationOfUser,
    ),
  ];
}
