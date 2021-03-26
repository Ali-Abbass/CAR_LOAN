import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class RecommendedCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          leading: true,
          popAction: true,
          title: strings.recommendedCarsTitle,
          color: AppColors.bg),
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              carCard(
                  strings.car_bmw_1_asset,
                  strings.car_bmw_1,
                  strings.car_bmw_1_price,
                  strings.petrol,
                  strings.car_bmw_1_consumption),
              SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                    context, strings.details_of_selected_car_route),
                child: carCard(
                    strings.car_bmw_2_asset,
                    strings.car_bmw_2,
                    strings.car_bmw_2_price,
                    strings.diesel,
                    strings.car_bmw_2_consumption),
              )
            ],
          ),
        ),
      ),
    );
  }

  carCard(String image, String title, String price, String fuel,
      String consumption) {
    return Container(
      height: 336,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 3.0),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: strings.openSans_font,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 5.0, 5.0),
              child: Text(
                price,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.description,
                  fontSize: 14,
                  fontFamily: strings.openSans_font,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                          height: 24, child: Image.asset(strings.station)),
                      Text(
                        fuel,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontFamily: strings.openSans_font,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 24,
                          child: Image.asset(strings.gearbox_asset)),
                      Text(
                        strings.automatic,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontFamily: strings.openSans_font,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 16, child: Image.asset(strings.speedometer_asset)),
                      Row(
                        children: [
                          Text(
                            consumption,
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 16,
                                fontFamily: strings.openSans_font,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            strings.consumption_km,
                            style: TextStyle(
                                color: AppColors.description,
                                fontSize: 14,
                                fontFamily: strings.openSans_font),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
