import 'package:car_loan/pages/consumer_loans.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, leading: true, popAction: false),
      body: Column(
        children: [
          Image.asset(strings.welcome_pic),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
            child: Text(
              strings.welcomeTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: strings.openSans_font,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
          ),
          Text(
            strings.welcomeSubtitle,
            style: TextStyle(
                fontSize: 16, fontFamily: strings.openSans_font, color: AppColors.gray),
          ),
          Container(
            height: 120.0,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(strings.get_started_btn),
              Container(
                height: 35,
                width: 264,
                child: InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, strings.consumer_loans_route),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () => {},
            child: Image.asset(strings.learn_more_btn),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 30.0, 90.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {},
                    child: Text(
                      strings.alreadyMember,
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                      ),
                    )),
                InkWell(
                    onTap: () {},
                    child: Text(
                      strings.login,
                      style: TextStyle(color: AppColors.green, fontSize: 16),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
