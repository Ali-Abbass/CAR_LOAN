
import 'package:car_loan/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class ChooseLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 100.0),
              child: Text(
                'Select your preferred language',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontSize: 19,
                    color: AppColors.black),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              thickness: 1.0,
              color: AppColors.lightGray,
            ),
            InkWell(
                onTap: () => Navigator.pushReplacementNamed(context, strings.welcome_route),
                child: Container(
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                            color: AppColors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                )),
            Divider(
              thickness: 1.0,
              color: AppColors.lightGray,
            ),
            InkWell(
                child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'عربي',
                    style: TextStyle(
                        color: AppColors.black,
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            )),
            Divider(
              thickness: 1.0,
              color: AppColors.lightGray,
            ),
          ],
        ),
      ),
    );
  }
}
