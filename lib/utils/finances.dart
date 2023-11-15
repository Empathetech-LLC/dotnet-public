import '../utils/utils.dart';

import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

/// Display double [value] as a United States Dollar amount
/// Auto formats decimals, comma separators, and $ symbol
String asUSD(double value) {
  return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(value);
}

/// Goal == total operation cost
/// Currently, Empathetech's operation costs are comprised of...
/// Salaries and general operating expenses
Future<double> calculateGoal() async {
  return _gatherSalaries() + await _gatherExpenses();
}

/// The sum of each member's annual hours * [_comfortableWage]
double _gatherSalaries() {
  final double wage = _comfortableWage();

  return annualHours.values.fold(
    0.0,
    (sum, hours) => sum + (hours * wage),
  );
}

/// Annual hours for each Empathetech member
/// Full time == 40 * 52 == 2080
const Map<String, double> annualHours = {"Michael Waldron": 2080};

/// Eventually, Empathetech will create its own comfortable wage calculator.
/// Currently, we rely on adapting MIT's living wage calculator.
///
/// https://livingwage.mit.edu/
/// https://livingwage.mit.edu/pages/methodology
///
/// The Living Wage team asks "that users do not scrape the data".
/// So, all [_comfortableWage] values are hard-coded and updated manually.
/// Last validated: Q4 2023
///
/// Our goal:
///   To enable Empathetech employees to live a comfortable life anywhere in the Country of Domicile.
///
/// Our methodology:
///   1.  Take the highest cost region, thus satisfying: "anywhere"
///         Currently: San Francisco County, California; https://livingwage.mit.edu/counties/06075
///   2.  Use the 1 (Single) Adult table
///   3.  Use the Living Wage row
///   4.  The Living Wage data encompasses families with up to 3 children
///       Use this column to emulate a comfortable wage, accounting for comfort concepts un-included in basic needs...
///         - Caring for dependents other than children
///         - Having hobbies
///         - Going on vacations
///         - Accruing wealth so you can retire earlier than the average of only 12 years before you die (in the US)
///         - Providing all of the above to your children as well
///       Currently: $99.90/hour
double _comfortableWage() {
  return 99.90;
}

/// Sum the totals from the latest YTD expense report
/// See it here: https://github.com/Empathetech-LLC/expense-report
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

/// Empathetech's current revenue streams are...
/// Contracts and donations
double calculateIncome() {
  return _gatherContracts() + _gatherDonations();
}

/// For prospective contractees: our rates follow a similar methodology to [_comfortableWage]
/// However, we adjust for whatever county you live in
/// If you're international: we'll work it out (there's probably a converter we can use)
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
