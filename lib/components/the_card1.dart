import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';
import '../widgets/colors.dart';
import '../widgets/line_chart.dart';

class TheCard extends StatelessWidget {
  const TheCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20),
            width: 230,
            height: 140,
            child: Card(
              elevation: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Image.asset(
                            'assets/adwords.png',
                            scale: 22,
                            color: AppColor.blueColor,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppLargeText(text: 'ADB', size: 15),
                              SizedBox(height: 4),
                              Text(
                                'Adobe Inc',
                                style:
                                    TextStyle(color: AppColor.unselectedColor),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_drop_up_outlined,
                                color: AppColor.greenColor,
                              ),
                              Text(
                                '5.49%',
                                style: TextStyle(color: AppColor.greenColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: const [
                            AppLargeText(text: '33.49', size: 27),
                            Text(
                              '\$643.58',
                              style: TextStyle(color: AppColor.unselectedColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const MyLineGraph()
                      ],
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
