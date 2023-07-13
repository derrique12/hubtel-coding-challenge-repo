// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

class CustomNavitem extends StatelessWidget {
  const CustomNavitem(
      {super.key,
      required this.iconPath,
      required this.isSelected,
      required this.text,
      required this.onTap,
      this.child});
  final String iconPath;
  final String text;
  final bool isSelected;
  final Widget? child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size.width * .25,
        child: child ??
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ////////////////////// Icon    //////////////
                SvgPicture.asset(
                  iconPath,
                  height: 30,
                  fit: BoxFit.fitHeight,
                  color:
                      isSelected ? Palette.blackColor : Palette.inactiveColor,
                ),

                //// vertical space

                const SizedBox(height: 5),

                ///////////////////////// Text    //////////////
                Text(
                  text,
                  style: TextStyle(
                      color: isSelected
                          ? Palette.blackColor
                          : Palette.inactiveColor,
                      fontSize: 11),
                ),
              ],
            ),
      ),
    );
  }
}
