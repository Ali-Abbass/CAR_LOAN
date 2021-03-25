import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:flutter_xlider/flutter_xlider.dart';

class RecommendedCarBudget extends StatefulWidget {
  @override
  _RecommendedCarBudgetState createState() => _RecommendedCarBudgetState();
}

class _RecommendedCarBudgetState extends State<RecommendedCarBudget> {
  double minimumBudget = 15;

  double maximumBudget = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, leading: true, popAction: true),
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
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
              onPressed: () => {},
              child: Text(
                strings.seeRecommendedCars,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ))),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                strings.budgetTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  strings.budgetSubtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2.0,
                    color: AppColors.description,
                    fontSize: 14,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(strings.kwd,
                      style: TextStyle(
                        color: AppColors.description,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                  Text(minimumBudget.toInt().toString() + ',000',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                  Text(strings.minus,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                  Text(strings.kwd,
                      style: TextStyle(
                        color: AppColors.description,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                  Text(maximumBudget.toInt().toString() + ',000',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              FlutterSlider(
                values: [minimumBudget, maximumBudget],
                rangeSlider: true,
                jump: true,
                max: 65.0,
                min: 0.0,
                handlerWidth: 32.0,
                handler: FlutterSliderHandler(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: AppColors.green, width: 2.0)),
                  child: Container(
                      child: Icon(
                    Icons.pause_outlined,
                    size: 25,
                    color: AppColors.green,
                  )),
                ),
                rightHandler: FlutterSliderHandler(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: AppColors.green, width: 2.0)),
                  child: Container(
                      child: Icon(
                    Icons.pause_outlined,
                    size: 25,
                    color: AppColors.green,
                  )),
                ),
                trackBar: FlutterSliderTrackBar(
                  activeTrackBarHeight: 2.0,
                  inactiveTrackBarHeight: 2.0,
                  inactiveTrackBar: BoxDecoration(
                    color: AppColors.lightGray,
                  ),
                  activeTrackBar: BoxDecoration(
                    color: AppColors.green,
                  ),
                ),
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  setState(() {
                    if (minimumBudget != lowerValue) minimumBudget = lowerValue;
                    if (maximumBudget != upperValue) maximumBudget = upperValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
