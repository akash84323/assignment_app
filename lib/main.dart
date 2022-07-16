// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:assignment_app/body.dart';
import 'package:assignment_app/widgets/colors.dart';
import 'package:assignment_app/widgets/material_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/app_bar.dart';

void main(List<String> args) {
  runApp(const Assignment());
}

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int currendIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: myGreen,
          textTheme: GoogleFonts.merriweatherTextTheme()),
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: const MyAppBar())),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currendIndex,
            onTap: (index) {
              setState(() {
                currendIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.blueColor,
            unselectedItemColor: AppColor.unselectedColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Image.asset(
                  color: AppColor.blueColor,
                  'assets/home.png',
                  scale: 19,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/pie-chart.png',
                  scale: 20,
                  color: AppColor.unselectedColor,
                ),
                label: 'pie',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(
                      elevation: 5,
                      onPressed: () {},
                      child: Image.asset(
                        'assets/transfer.png',
                        color: Colors.white,
                        scale: 26,
                      )),
                ),
                label: 'pie',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/wires.png',
                  scale: 23,
                  color: AppColor.unselectedColor,
                ),
                label: 'pie',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/avatar.png',
                  color: AppColor.unselectedColor,
                  scale: 21,
                ),
                label: 'pie',
              ),
            ]),
      ),
    );
  }
}
