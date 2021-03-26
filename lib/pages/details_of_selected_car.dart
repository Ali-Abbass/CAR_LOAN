import 'package:car_loan/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:flutter/services.dart';

class DetailsOfSelectedCar extends StatefulWidget {
  @override
  _DetailsOfSelectedCarState createState() => _DetailsOfSelectedCarState();
}

class _DetailsOfSelectedCarState extends State<DetailsOfSelectedCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.description,
        unselectedItemColor: AppColors.description,
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              Navigator.pushNamed(context, strings.loan_details_route);
              break;
            case 3:
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(strings.steering_wheel),
              ),
              label: strings.testDrive),
          BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(strings.front_car),
              ),
              label: strings.reserve),
          BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(strings.loan),
              ),
              label: strings.applyLoan),
          BottomNavigationBarItem(
              icon: Container(
                height: 16,
                child: Image.asset(strings.mail),
              ),
              label: strings.contactUs),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Container(
              height: 16,
              child: Image.asset(strings.path_backward_white)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              strings.car_bmw,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                    child: Text(
                      strings.car_bmw_2,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontFamily: strings.openSans_font),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
                    child: Text(
                      strings.car_bmw_2_price,
                      style: TextStyle(
                          color: AppColors.description,
                          fontSize: 16,
                          fontFamily: strings.openSans_font),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: options(strings.camera, strings.exterior),
                      ),
                      InkWell(
                        onTap: () {},
                        child: options(strings.camera, strings.exterior),
                      ),
                      InkWell(
                        onTap: () {},
                        child: options(strings.share_asset, strings.share),
                      ),
                      InkWell(
                        onTap: () {},
                        child: options(strings.heart, strings.save),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        specifications(
                            strings.car, strings.carType, strings.sedan),
                        specifications(
                            strings.gas_station, strings.fuel, strings.diesel),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        specifications(strings.speedometer, strings.consumption,
                            strings.car_bmw_2_consumption),
                        specifications(strings.gearbox, strings.transmission,
                            strings.automatic),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  dealerCard(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Divider(
                      color: AppColors.lightGray,
                      thickness: 1.0,
                    ),
                  ),
                  assistanceTile(strings.out_line, strings.maintenance,
                      strings.mainrenance_descr),
                  assistanceTile(strings.hand_car, strings.roadsideAssistance,
                      strings.roadsideAssistance_descr),
                  assistanceTile(
                      strings.protection,
                      strings.manufactureWarranty,
                      strings.manufactureWarranty_descr),
                  SizedBox(
                    height: 10.0,
                  ),
                  FeatureTile(
                      strings.engine, strings.technicalSpecifications, []),
                  FeatureTile(strings.shape, strings.exteriorFeatures, []),
                  FeatureTile(
                    strings.steering_wheel,
                    strings.interiorFeatures,
                    strings.interiorFeatures_details,
                  ),
                  FeatureTile(
                      strings.front_car_asset, strings.safetyFeatures, []),
                  FeatureTile(
                      strings.electronics, strings.infotainmentFeatures, []),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  options(String image, String title) {
    return Container(
      width: 90.0,
      child: Column(children: [
        Container(
          height: 16,
          child: Image.asset(image),
        ),
        title.compareTo(strings.interior) == 0 ||
                title.compareTo(strings.exterior) == 0
            ? Text(
                '360',
                style: TextStyle(
                    color: AppColors.description,
                    fontSize: 9,
                    fontFamily: strings.openSans_font),
              )
            : SizedBox(
                height: 10.0,
              ),
        Text(
          title,
          style: TextStyle(
              color: AppColors.description,
              fontSize: 12,
              fontFamily: strings.openSans_font),
        )
      ]),
    );
  }

  specifications(String image, String title, String subtitle) {
    return Container(
      width: 165.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.lightGreen,
            child: Container(width: 22, child: Image.asset(image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: AppColors.description,
                      fontSize: 14,
                      fontFamily: strings.openSans_font),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontFamily: strings.openSans_font,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  dealerCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Text(
              strings.dealerDetails,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.description,
                  fontSize: 14,
                  fontFamily: strings.openSans_font),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
            elevation: 0.0,
            color: AppColors.bg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      strings.dealer,
                      style: TextStyle(
                          color: AppColors.black,
                          fontFamily: strings.openSans_font,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 5.0, 7.0, 5.0),
                            child: Container(
                                width: 16, child: Image.asset(strings.star)),
                          ),
                        SizedBox(width: 10.0),
                        Text(
                          strings.noReviews,
                          style: TextStyle(
                            color: AppColors.description,
                            fontSize: 14,
                            fontFamily: strings.openSans_font,
                          ),
                        ),
                        SizedBox(
                          width: 65.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            strings.reviews,
                            style: TextStyle(
                                color: AppColors.green,
                                fontFamily: strings.openSans_font,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Text(
                      strings.city,
                      style: TextStyle(
                          color: AppColors.description,
                          fontSize: 16,
                          fontFamily: strings.openSans_font),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  assistanceTile(String image, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        horizontalTitleGap: 20.0,
        tileColor: AppColors.bg,
        leading: Container(width: 40, child: Image.asset(image)),
        title: Text(
          title,
          style: TextStyle(
              color: AppColors.black,
              fontFamily: strings.openSans_font,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              color: AppColors.description,
              fontFamily: strings.openSans_font,
              fontSize: 14),
        ),
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

class FeatureTile extends StatefulWidget {
  String image;
  String title;
  List<String> details;

  FeatureTile(this.image, this.title, this.details);

  @override
  _FeatureTileState createState() => _FeatureTileState();
}

class _FeatureTileState extends State<FeatureTile> {
  bool viewDetails = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Container(width: 24, child: Image.asset(widget.image)),
            title: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: strings.openSans_font,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
            trailing: Container(
                width: 16,
                child: viewDetails
                    ? Image.asset(strings.arrow_up)
                    : Image.asset(strings.arrow_down)),
            onTap: () {
              if (widget.details.isNotEmpty)
                setState(() {
                  if (viewDetails)
                    viewDetails = false;
                  else
                    viewDetails = true;
                });
            },
          ),
          Visibility(
            maintainState: false,
            maintainSize: false,
            maintainInteractivity: false,
            maintainAnimation: false,
            visible: viewDetails,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                child: Column(
                  children: [
                    for (int index = 0; index < widget.details.length; index++)
                      ListTile(
                        horizontalTitleGap: 5.0,
                        leading: Container(
                            width: 15, child: Image.asset(strings.check)),
                        title: Text(
                          widget.details[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: strings.openSans_font,
                              color: AppColors.description),
                        ),
                      )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
