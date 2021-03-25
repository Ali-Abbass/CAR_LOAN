

import 'package:car_loan/utils/colors.dart';
import 'package:flutter/material.dart';

Widget smallCard(String image, String title,bool option, Function select) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30.0),
    child: Container(
      height: 80.0,
      child: Card(
        color: option ? AppColors.selectedCard : Colors.white,
        //shadowColor: AppColors.shadow,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: option
                ? BorderSide(width: 2, color: AppColors.green)
                : BorderSide(color: Colors.white)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            onTap: () {
              select;
            },
            leading: Container(width: 80.0, child: Image.asset(image)),
            title: Text(
              title,
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
