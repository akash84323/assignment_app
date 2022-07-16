import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'app_large_text.dart';
import 'colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 5,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.blur_circular, color: AppColor.blueColor),
      title: const AppLargeText(text: 'Alex Julia', size: 30),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search, color: AppColor.blueColor)),
        IconButton(
            onPressed: () {},
            icon: Badge(
                position: BadgePosition.topEnd(end: 0),
                badgeContent: const Text(''),
                child: const Icon(Icons.notifications,
                    color: AppColor.blueColor))),
        const SizedBox(width: 10),
      ],
    );
  }
}
