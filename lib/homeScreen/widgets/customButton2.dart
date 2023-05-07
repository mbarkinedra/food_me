import 'package:flutter/material.dart';

import '../app/appColors.dart';


class CustomButton2 extends StatelessWidget {
  String text;
  VoidCallback onClick;
  Color color;
  double width;
  double hight;
  ImageIcon icon;

  CustomButton2(
      {required this.text,
        required this.onClick,
        required this.color,
        required this.width,
        required this.icon,
        required this.hight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(6)),
        height: hight,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: AppColors.primeryBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                ImageIcon(
                  icon.image,
                  color:AppColors.primeryBlue,size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
