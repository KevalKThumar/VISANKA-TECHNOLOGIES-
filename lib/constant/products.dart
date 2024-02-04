import 'dart:developer';

import 'package:finapp/index.dart';

class Products {
  static List<ProductIcon> productforyou = [
    // Product for you
    ProductIcon(
      () {
        log('tap');
      },
      name: "Personal Loan",
      image: "image/home/PersonalLoan.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Co-Branded Credit Cards",
      image: "image/home/CoBrandedCreditCards.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Health Insurance",
      image: "image/home/HealthInsurance.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Electronics & Appliances",
      image: "image/home/ElectronicsandAppliances.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "open FD",
      image: "image/home/FD.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Gold Loan",
      image: "image/home/GoldLoan.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Business Loan",
      image: "image/home/BusinessLoan.png",
    ),
  ];

  static List<ProductIcon> moreProduct = [
    ProductIcon(
      () {
        log('tap');
      },
      name: "Home Loan",
      image: "image/home/HomeLoan.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Loan against Property",
      image: "image/home/LoanagainstProperty.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Renovation Loan",
      image: "image/home/HouseRenovationLoan.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Loan against FD",
      image: "image/home/LoanagainstFD.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Car Loan",
      image: "image/home/CarLoan.png",
    ),
    ProductIcon(
      () {
        log('tap');
      },
      name: "Two-Wheeler Loan",
      image: "image/home/TwoWheelerLoan.png",
    ),
  ];
}
