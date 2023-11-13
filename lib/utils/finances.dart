import '../utils/utils.dart';

import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

/// Display a double [value] as a United States Dollar amount
/// Auto formats decminals, comma separators, and $ symbol
String asUSD(double value) {
  return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(value);
}

/// Goal == total operation cost
/// Currently, Empathetech's operation costs are comprised of...
/// Salaries and general operating expenses
Future<double> calculateGoal() async {
  return _gatherSalaries() + await _gatherExpenses();
}

/// Team member's hours * [_comfortableWage]
double _gatherSalaries() {
  return hours.values.fold(
    0.0,
    (sum, value) => sum + (value * _comfortableWage()),
  );
}

/// Team member hours
/// Full time == 40 * 52 == 2080
const Map<String, double> hours = {"Michael Waldron": 2080};

/// Eventually, Empathetech will create its own comfortable wage calculator
/// For now, we will rely on adapting MIT's living wage calculator: https://livingwage.mit.edu/
/// Their methodology: https://livingwage.mit.edu/pages/methodology
/// Our goal: For Empathetech employees to be able to live a comfortable life anywhere in the Country of Domicile
/// Our methodology:
/// 1. Take the most expensive jurisdiction (NY, NY)
/// 2. Use the single adult table
/// 3. Use the living wage row
/// 4. Use the 3 children column to emulate a comfortable life...
///    Child 1: Caring for a dependent (actual child, pet, etc.)
///    Child 2: Going on vacations
///    Child 3: Having hobbies
/// 5. Value as of Q3 2023: $75.43/hour
double _comfortableWage() {
  return 75.43;
}

/// Sum the totals from the latest YTD expense report
Future<double> _gatherExpenses() async {
  final String csvData = await rootBundle.loadString(ytdReportPath);
  final List<String> lines = csvData.split('\n');

  double sum = 0.0;

  for (int i = 1; i < lines.length; i++) {
    final String line = lines[i].trim();

    if (line.isNotEmpty) {
      final List<String> parts = line.split(',');
      sum += double.tryParse(parts[1]) ?? 0.0;
    }
  }

  return sum;
}

/// Empathetech's current revenue streams...
/// Contracts and donations
double calculateIncome() {
  return _gatherContracts() + _gatherDonations();
}

/// Empathetech has yet to recieve income from any contracts
double _gatherContracts() {
  return 0;
}

/// Combine the income from...
/// Direct donation platforms: PayPal, Venmo, CashApp
/// Affiliate donation platforms: Patreon, Buy Me a Coffee, Ko-fi
double _gatherDonations() {
  final double directDonations = paypal() + venmo() + cashapp();
  final double affiliateDonations = patreon() + coffee() + kofi();
  return directDonations + affiliateDonations;
}

/// Empathetech has yet to recieve income from PayPal
double paypal() {
  return 0;
}

/// Empathetech has yet to recieve income from Venmo
double venmo() {
  return 0;
}

/// Empathetech has yet to recieve income from CashApp
double cashapp() {
  return 0;
}

/// Empathetech has yet to recieve income from Patreon
double patreon() {
  return 0;
}

/// Empathetech has yet to recieve income from Buy Me a Coffee
double coffee() {
  return 0;
}

/// Empathetech has yet to recieve income from Ko-fi
double kofi() {
  return 0;
}
