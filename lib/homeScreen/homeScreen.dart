import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/homeScreen/widgets/CustomItem.dart';
import 'package:food_me/homeScreen/widgets/customButton.dart';
import 'package:food_me/homeScreen/widgets/customButton2.dart';

import 'app/appColors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(right: 20, bottom: 20, left: 20, top: 70),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
          ),
          child: Row(children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 8,
            ),
            Text("sousse,Tunise")
          ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CustomButton(
            icon: ImageIcon(AssetImage("assets/images/Vector.png")),
            text: 'Delivery',
            color: AppColors.primeryBlue,
            width: 119,
            hight: 40,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        children: [
          CustomButton2(
            icon: ImageIcon(AssetImage("assets/images/sortby.png")),
            text: 'Sort by',
            color: AppColors.colorButtongery,
            width: 119,
            hight: 40,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),
          SizedBox(
            width: 39,
          ),
          CustomButton2(
            icon: ImageIcon(AssetImage("assets/images/filtre.png")),
            text: 'Filtre',
            color: AppColors.colorButtongery,
            width: 119,
            hight: 36,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),
        ],
      ),
              MyHomeItem()
    ])));
  }
}
