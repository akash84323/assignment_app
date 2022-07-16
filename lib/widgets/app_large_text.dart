// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double? size;
  final String text;
  final Color color;

  const AppLargeText({
    Key? key,
    this.size = 16,
    required this.text,
    this.color = AppColor.blueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
