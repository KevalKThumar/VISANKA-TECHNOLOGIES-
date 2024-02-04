import 'dart:developer';

import '../model/home_button.dart';

class HomeIcons {
  static List<HomeIcon> home = [
    // Home
    HomeIcon(
      name: "All",
      image: "image/home/Grid.png",
      () {
        log('tap');
      },
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Electronics",
      image: "image/home/Electronics.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Vehicle",
      image: "image/home/Vehicle.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Insurance",
      image: "image/home/Insurance.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Lifestyle",
      image: "image/home/Lifestyle.png",
    ),
  ];
  static List<HomeIcon> bill = [
    // Home
    HomeIcon(
      name: "Mobile",
      image: "image/home/mobile.png",
      () {
        log('tap');
      },
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Electricity",
      image: "image/home/Electricity.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "DTH",
      image: "image/home/DTH.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Credit Card",
      image: "image/home/CreditICard.png",
    ),
    HomeIcon(
      () {
        log('tap');
      },
      name: "Gas",
      image: "image/home/Gas.png",
    ),
  ];
}
