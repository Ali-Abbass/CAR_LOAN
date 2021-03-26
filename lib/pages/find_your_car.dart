import 'package:car_loan/pages/recommended_car_lifestyle.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class FindYourCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          leading: true,
          popAction: true,
          color: AppColors.bg,
          title: strings.findYourCar),
      backgroundColor: AppColors.bg,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              child: optionCard(strings.car_matches, strings.carMatches),
              onTap: () => Navigator.pushNamed(
                  context, strings.recommended_car_lifestyle_route),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 35.0, 50.0, 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.0,
                      color: AppColors.lightGray,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      strings.or,
                      style: TextStyle(
                          color: AppColors.black,
                          fontFamily: strings.openSans_font,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.0,
                      color: AppColors.lightGray,
                    ),
                  ),
                ],
              ),
            ),
            optionCard(strings.car_on_your_mind, strings.carOnYourMind),
          ],
        ),
      ),
    );
  }

  optionCard(String image, String title) {
    return Container(
      height: 232,
      //width: 328,
      child: Card(
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 152, child: Image.asset(image)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: strings.openSans_font,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
