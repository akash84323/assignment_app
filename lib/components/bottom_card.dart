// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_app/widgets/app_large_text.dart';
import 'package:assignment_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 8.9,
      width: double.maxFinite,
      child: Card(
        elevation: 0,
        child: Row(
          //main row
          children: [
            Container(
              //icon container
              margin: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'assets/nvidia.png',
                scale: 22,
                color: AppColor.blueColor,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                //nvida column
                children: const [
                  AppLargeText(
                    text: 'NVDA',
                    size: 18,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Nvida",
                    style: TextStyle(color: AppColor.unselectedColor),
                  )
                ],
              ),
            ),
            const SizedBox(width: 55),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  AppLargeText(
                    text: '25.94',
                    size: 18,
                    color: AppColor.greenColor,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        size: 20,
                        color: AppColor.greenColor,
                      ),
                      Text(
                        '0.14%',
                        style: TextStyle(color: AppColor.greenColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 25),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: const [
                    AppLargeText(text: '\$227.26'),
                    SizedBox(height: 5),
                    Text(
                      '10 shares',
                      style: TextStyle(color: AppColor.unselectedColor),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
