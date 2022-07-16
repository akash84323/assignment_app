// ignore_for_file: prefer_const_constructors

import 'package:assignment_app/components/stocks_activity.dart';
import 'package:assignment_app/components/the_card2.dart';
import 'package:flutter/material.dart';

import 'components/bottom_card.dart';
import 'components/front_box.dart';
import 'components/the_card1.dart';
import 'components/watch_list.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TheBox(),
        SizedBox(height: 20),
        WatchList(),
        SizedBox(height: 30),
        SizedBox(
            height: 140,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [TheCard(), TheCard2()])),
        SizedBox(height: 20),
        StocksActivity(),
        SizedBox(height: 10),
        BottomCard()
      ],
    );
  }
}
