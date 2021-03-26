import 'package:car_loan/pages/auto_loan_method.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:car_loan/widgets/action_button.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ConsumerLoans extends StatefulWidget {
  @override
  _ConsumerLoansState createState() => _ConsumerLoansState();
}

class _ConsumerLoansState extends State<ConsumerLoans> {
  List<bool> options = List.filled(7, false);

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
        break;
      case 2:
        Navigator.pushNamed(context, strings.auto_loan_aroute);
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(context, popAction: true, leading: false, color: AppColors.bg),
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
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
              child: Text(
                strings.consumerLoan,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 2.0,
                    color: AppColors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            consumerLoanCard(strings.personal_loan, strings.personalLoan, 0),
            consumerLoanCard(
                strings.educational_loan, strings.educationalLoan, 1),
            consumerLoanCard(strings.auto_loan, strings.autoLoan, 2),
            consumerLoanCard(strings.medical_care_financing,
                strings.medicalCareFinancing, 3),
            consumerLoanCard(
                strings.furniture_appliances, strings.furnitureAppliances, 4),
            consumerLoanCard(
                strings.housing_financing, strings.housingFinancing, 5),
            consumerLoanCard(
                strings.top_up_financing, strings.topUpFinancing, 6),
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
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
