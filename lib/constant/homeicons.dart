import 'dart:developer';

import 'package:finapp/index.dart';

import '../model/home_button.dart';

class HomeIcons {
  static List<HomeIcon> home = [
    // Home
    HomeIcon(
      name: "All",
      image: "image/home/Grid.png",
      routeName: RoutesName.allProduct,
    ),
    HomeIcon(
      routeName: '',
      name: "Electronics",
      image: "image/home/Electronics.png",
    ),
    HomeIcon(
      routeName: '',
      name: "Vehicle",
      image: "image/home/Vehicle.png",
    ),
    HomeIcon(
      routeName: '',
      name: "Insurance",
      image: "image/home/Insurance.png",
    ),
    HomeIcon(
      routeName: '',
      name: "Lifestyle",
      image: "image/home/Lifestyle.png",
    ),
  ];
  static List<HomeIcon> bill = [
    // Home
    HomeIcon(
      name: "Mobile",
      image: "image/home/mobile.png",
      routeName: '',
    ),
    HomeIcon(
      routeName: '',
      name: "Electricity",
      image: "image/home/Electricity.png",
    ),
    HomeIcon(
      routeName: '',
      name: "DTH",
      image: "image/home/DTH.png",
    ),
    HomeIcon(
      routeName: '',
      name: "Credit Card",
      image: "image/home/CreditICard.png",
    ),
    HomeIcon(
      routeName: '',
      name: "Gas",
      image: "image/home/Gas.png",
    ),
  ];
}
