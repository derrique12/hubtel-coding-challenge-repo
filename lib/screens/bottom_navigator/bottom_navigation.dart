import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding/screens/Schedule/schedule.dart';
import 'package:hubtel_coding/screens/Send/send.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

import '../History/history.dart';
import '../home/home.dart';
import 'components/custom_nav_item.dart';

class CustomBottomNavigator extends StatefulWidget {
  const CustomBottomNavigator({super.key});

  @override
  State<CustomBottomNavigator> createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  int selectedIndex = 3;

  /////////////////// List of bottom navigator pages ///////////////////s
  List<Widget> pages = [
    const HomePage(),
    const SendPage(),
    const HistoryPage(),
    const SchedulePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Palette.borderColor))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///// Home navigator //////
              CustomNavitem(
                iconPath: 'assets/icons/MoMo.svg',
                text: 'Send',
                isSelected: selectedIndex == 1,
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Palette.homeBackground),
                  child: SvgPicture.asset(
                    'assets/icons/HomeIcon.svg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),

              ///// Send navigator //////
              CustomNavitem(
                iconPath: 'assets/icons/MoMo.svg',
                text: 'Send',
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),

              ///// History navigator //////
              CustomNavitem(
                iconPath: 'assets/icons/History.svg',
                text: 'History',
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),

              ///// Schedule navigator //////
              CustomNavitem(
                iconPath: 'assets/icons/Schedule.svg',
                text: 'Scheduled',
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
