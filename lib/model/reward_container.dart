// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:finapp/index.dart';

class RewardContainer {
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  final String? condtion;
  RewardContainer({
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.condtion
  });
}
