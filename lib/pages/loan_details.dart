import 'package:car_loan/pages/bank_Options.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/action_button.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class LoanDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, leading: true, popAction: true),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              strings.loanDetailsTitle,
              style: TextStyle(
                  color: AppColors.black,
                  fontFamily: strings.openSans_font,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    strings.vehiclePrice,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontFamily: strings.openSans_font),
                  ),
                  TextFormField(
                    initialValue: strings.price,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: strings.openSans_font,
                        fontWeight: FontWeight.bold),
                    cursorColor: AppColors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.green, width: 2.0))),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    strings.downPayment,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontFamily: strings.openSans_font),
                  ),
                  TextFormField(
                    initialValue: strings.payment,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: strings.openSans_font,
                        fontWeight: FontWeight.bold),
                    cursorColor: AppColors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.green, width: 2.0))),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    strings.tradeInValue,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontFamily: strings.openSans_font),
                  ),
                  TextFormField(
                    initialValue: strings.dash,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: strings.openSans_font,
                        fontWeight: FontWeight.bold),
                    cursorColor: AppColors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.green, width: 2.0))),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    strings.tenure,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontFamily: strings.openSans_font),
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.green, width: 2.0))),
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: strings.openSans_font,
                        fontWeight: FontWeight.bold),
                    icon: Container(
                        width: 20.0,
                        child: Image.asset(
                            'assets/details_of_selected_car/arrow_down.png')),
                    value: strings.monthsList[0],
                    items: strings.monthsList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            AppActionButton(
              title: strings.viewOptions,
              routeFunction: () => BankOptions(),
            ),
          ],
        ),
      ),
    );
  }

  detailsItem(String title, String text) {
    return Column(
      children: [],
    );
  }
}
