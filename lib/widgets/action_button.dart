import 'package:car_loan/utils/colors.dart';
import 'package:flutter/material.dart';

class AppActionButton extends StatelessWidget {
  Function routeFunction;
  String title;

  AppActionButton({this.routeFunction, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: 264,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5.0,
              onPrimary: AppColors.green,
              primary: AppColors.green,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: routeFunction ?? () {},
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )));
  }
}
