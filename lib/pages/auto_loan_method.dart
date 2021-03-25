import 'package:car_loan/pages/find_your_car.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class AutoLoanMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          leading: true,
          popAction: true,
          color: AppColors.bg,
          title: strings.autoLoan),
      backgroundColor: AppColors.bg,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child:
              optionCard('assets/auto_loan/find_your_car.png',
                  strings.findYourCar, strings.findYourCar_description),
              onTap: () => Navigator.pushNamed(context, strings.find_your_car_route),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,25.0,50.0,25.0),
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
                          fontFamily: 'OpenSans',
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
            optionCard('assets/auto_loan/only_want_loan.png',
                strings.onlyTheLoan, strings.onlyTheLoan_description),
          ],
        ),
      ),
    );
  }

  optionCard(String image, String title, String description) {
    return Container(
      height: 248,

      child: Card(
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 152, child: Image.asset(image)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 10.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.description,
                  fontSize: 14,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
