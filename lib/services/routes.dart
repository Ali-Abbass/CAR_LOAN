import 'package:car_loan/pages/auto_loan_method.dart';
import 'package:car_loan/pages/bank_Options.dart';
import 'package:car_loan/pages/choose_language.dart';
import 'package:car_loan/pages/consumer_loans.dart';
import 'package:car_loan/pages/details_of_selected_car.dart';
import 'package:car_loan/pages/find_your_car.dart';
import 'package:car_loan/pages/loan_details.dart';
import 'package:car_loan/pages/recommended_car_budget.dart';
import 'package:car_loan/pages/recommended_car_features.dart';
import 'package:car_loan/pages/recommended_car_lifestyle.dart';
import 'package:car_loan/pages/recommended_cars.dart';
import 'package:car_loan/pages/welcome.dart';
import 'package:car_loan/utils/strings.dart' as strings;
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case strings.chooseLanguage_route:
      return MaterialPageRoute(
          builder: (_) => ChooseLanguage(), settings: settings);
    case strings.welcome_route:
      return MaterialPageRoute(builder: (_) => Welcome(), settings: settings);
    case strings.consumer_loans_route:
      return MaterialPageRoute(
          builder: (_) => ConsumerLoans(), settings: settings);
    case strings.auto_loan_aroute:
      return MaterialPageRoute(
          builder: (_) => AutoLoanMethod(), settings: settings);
    case strings.find_your_car_route:
      return MaterialPageRoute(
          builder: (_) => FindYourCar(), settings: settings);
    case strings.recommended_car_lifestyle_route:
      return MaterialPageRoute(
          builder: (_) => RecommendedCarLifestyle(), settings: settings);
    case strings.recommended_car_features_route:
      return MaterialPageRoute(
          builder: (_) => RecommendedCarFeatures(), settings: settings);
    case strings.recommended_car_budget_route:
      return MaterialPageRoute(
          builder: (_) => RecommendedCarBudget(), settings: settings);
    case strings.recommended_cars_route:
      return MaterialPageRoute(
          builder: (_) => RecommendedCars(), settings: settings);
    case strings.details_of_selected_car_route:
      return MaterialPageRoute(
          builder: (_) => DetailsOfSelectedCar(), settings: settings);
    case strings.loan_details_route:
      return MaterialPageRoute(
          builder: (_) => LoanDetails(), settings: settings);
    case strings.bank_options_route:
      return MaterialPageRoute(
          builder: (_) => BankOptions(), settings: settings);
  }
}
