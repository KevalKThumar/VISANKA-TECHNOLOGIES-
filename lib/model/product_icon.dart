import 'package:finapp/index.dart';

class ProductIcon {
  final String name;
  final String image;
  final VoidCallback onTap;

  ProductIcon(this.onTap, {required this.name, required this.image});
}
