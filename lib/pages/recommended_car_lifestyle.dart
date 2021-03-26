import 'package:car_loan/pages/auto_loan_method.dart';
import 'package:car_loan/pages/recommended_car_features.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:car_loan/widgets/action_button.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class RecommendedCarLifestyle extends StatefulWidget {
  @override
  _RecommendedCarLifestyleState createState() =>
      _RecommendedCarLifestyleState();
}

class _RecommendedCarLifestyleState extends State<RecommendedCarLifestyle> {
  List<bool> options = List.filled(5, false);

  _select(int index) {
    setState(() {
      options[index] = true;
    });
    for (int i = 0; i < options.length; i++) {
      if (i != index) {
        setState(() {
          options[i] = false;
        });
      }
    }
  }

  _navigateAccordingToOption() {
    int index = options.indexOf(true);
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.pushNamed(context, strings.recommended_car_features_route);
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(context, popAction: true, leading: true, color: AppColors.bg),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: options.contains(true)
          ? AppActionButton(
              title: strings.cont,
              routeFunction: _navigateAccordingToOption,
            )
          : Container(),
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 70.0),
              child: Text(
                strings.lifestyleTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 2.0,
                    color: AppColors.black,
                    fontSize: 19,
                    fontFamily: strings.openSans_font,
                    fontWeight: FontWeight.bold),
              ),
            ),
            consumerLoanCard(strings.eco_friendly, strings.ecoFriendly, 0),
            consumerLoanCard(strings.prestige_asset, strings.prestige, 1),
            consumerLoanCard(strings.heavy_duty, strings.heavyDutyOffRoad, 2),
            consumerLoanCard(strings.sporty_asset, strings.sporty, 3),
            consumerLoanCard(strings.family_first, strings.familyComesfirst, 4),
          ]),
        ),
      ),
    );
  }

  Widget consumerLoanCard(String image, String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Container(
        height: 80.0,
        child: Card(
          color: options[index] ? AppColors.selectedCard : Colors.white,
          //shadowColor: AppColors.shadow,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: options[index]
                  ? BorderSide(width: 2, color: AppColors.green)
                  : BorderSide(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              onTap: () {
                _select(index);
              },
              leading: Container(width: 80.0, child: Image.asset(image)),
              title: Text(
                title,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontFamily: strings.openSans_font,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
