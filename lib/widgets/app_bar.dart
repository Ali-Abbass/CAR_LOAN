
import 'package:car_loan/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

Widget appBar(BuildContext context,
    {bool popAction, bool leading, Color color, String title}) {
  return AppBar(
centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          fontFamily: 'OpenSans',
          color: AppColors.black),
    ),
    automaticallyImplyLeading: false,
    actions: [
      popAction
          ? IconButton(
              icon: Icon(Icons.clear),
              color: AppColors.black,
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName(strings.welcome_route)),
            )
          : Container()
    ],
    leading: leading
        ? IconButton(
            icon: Container(height:16,child: Image.asset('assets/path_backward.png')),
            onPressed: () => Navigator.of(context).pop(),
          )
        : Container(),
    backgroundColor: color ?? Colors.white,
    elevation: 0.0,
  );
}
