import 'package:finapp/index.dart';
import 'package:finapp/model/admin_dashboard_modal.dart';

class DashBoard {
  static final List<AdminDashBoard> adminDashBoard = [
    AdminDashBoard(
      name: "Managers",
      routeName: RoutesName.managers,
    ),
    AdminDashBoard(
      name: "Sales exe",
      routeName: RoutesName.salesExecutive,
    ),
  ];
}
