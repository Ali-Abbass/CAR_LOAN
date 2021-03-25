
import 'package:car_loan/pages/recommended_car_budget.dart';
import 'package:car_loan/utils/colors.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:car_loan/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class RecommendedCarFeatures extends StatefulWidget {
  @override
  _RecommendedCarFeaturesState createState() => _RecommendedCarFeaturesState();
}

class _RecommendedCarFeaturesState extends State<RecommendedCarFeatures> {
  List<bool> options = List.filled(11, false);

  _select(int index) {
    int index1 = options.indexOf(true);
    int index2 = options.lastIndexOf(true);
    setState(() {
      options[index] = !options[index];
    });
    for (int i = 0; i < options.length; i++) {
      if (i != index && (index == index1 ? i != index2 : i != index1 )) {
        setState(() {
          options[i] = false;
        });
      }
    }
  }

  bool _twoSelected(){
    int count =0;
    for(int i = 0; i < options.length; i++){
      if(options[i] == true){
        count++;
      }
    }
    if(count == 2)
      return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      appBar(context, popAction: true, leading: true, color: AppColors.bg),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _twoSelected()
          ? Container(
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
              onPressed: () => Navigator.pushNamed(context, strings.recommended_car_budget_route),
              child: Text(
                strings.cont,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )))
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
                strings.topFeaturesTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 2.0,
                    color: AppColors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            consumerLoanCard('assets/recommended_car_features/power.png', strings.power, 0),
            consumerLoanCard('assets/recommended_car_features/roar.png', strings.rourEngineSound, 1),
            consumerLoanCard('assets/recommended_car_features/safety.png', strings.safety, 2),
            consumerLoanCard('assets/recommended_car_features/design.png', strings.design, 3),
            consumerLoanCard('assets/recommended_car_features/entertainment.png', strings.entertainment, 4),
            consumerLoanCard('assets/recommended_car_features/easy_to_park.png', strings.easyToPark, 5),
            consumerLoanCard('assets/recommended_car_features/lowest_co2.png', strings.lowestCO2, 6),
            consumerLoanCard('assets/recommended_car_features/comfort.png', strings.comfort, 7),
            consumerLoanCard('assets/recommended_car_features/performance.png', strings.performance, 8),
            consumerLoanCard('assets/recommended_car_features/leading_trailing.png', strings.leadingTrailing, 9),
            consumerLoanCard('assets/recommended_car_features/fuel_efficient.png', strings.fuelEfficient, 10),
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
