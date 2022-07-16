import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../widgets/colors.dart';

class TheBox extends StatelessWidget {
  const TheBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: AppColor.greenColor),
            margin: const EdgeInsets.only(left: 25, right: 25),
            height: 200,
            width: double.maxFinite,
            alignment: FractionalOffset.topRight,
            transform: Matrix4.identity()..rotateZ(1 * 3.1415927 / 210)),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppColor.blueColor),
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 200,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //"Portfolio Value"
              Container(
                margin: const EdgeInsets.only(top: 30, left: 25),
                child: const Text('Portfolio Value',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10),
              //"$15,136.32" and "2.11%"
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: Badge(
                  position: BadgePosition.topStart(start: 180, top: -15),
                  badgeColor: Colors.transparent,
                  elevation: 0,
                  badgeContent: Row(
                    children: const [
                      Text("2.11%",
                          style: TextStyle(
                              color: AppColor.greenColor, fontSize: 15)),
                      Icon(
                        Icons.arrow_drop_up_sharp,
                        color: AppColor.greenColor,
                        size: 20,
                      )
                    ],
                  ),
                  child: const Text("\$15,136.32",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColor.greenColor),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(100)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)))),
                        onPressed: () {},
                        child: const Text(
                          'Deposit',
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(width: 10),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.white24)),
                            backgroundColor:
                                MaterialStateProperty.all(AppColor.blueColor),
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(110)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)))),
                        onPressed: () {},
                        child: const Text(
                          'Withdraw',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        Positioned(
            height: 40,
            right: 50,
            bottom: -12,
            child: SpeedDial(
              elevation: 0,
              overlayColor: Colors.black,
              overlayOpacity: 0.7,
              animatedIcon: AnimatedIcons.menu_close,
              backgroundColor: AppColor.greenColor,
              children: [
                SpeedDialChild(
                  child: Image.asset(
                    'assets/adwords.png',
                    scale: 22,
                  ),
                ),
                SpeedDialChild(
                  child: Image.asset(
                    'assets/paypal.png',
                    scale: 22,
                  ),
                ),
                SpeedDialChild(
                  child: Image.asset(
                    'assets/apple-black-logo.png',
                    scale: 22,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
