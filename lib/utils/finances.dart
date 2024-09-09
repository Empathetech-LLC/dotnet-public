/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

enum SalaryLevel { minimum, survivable, livable, comfortable }

/// Display double [value] as a United States Dollar amount
/// Auto formats decimals, comma separators, and $ symbol
String asUSD(double value) {
  return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(value);
}

/// Lvl 0: Cover expenses
/// Lvl 1: Pay minimum wage
/// Lvl 2: Pay a survivable wage
/// Lvl 3: Pay a livable wage
/// Lvl 4: Pay a comfortable wage
Future<List<double>> calculateGoals() async {
  // Full time == 40 * 52 == 2080
  const double hours = 2080;

  final double expenses = await gatherExpenses();

  return <double>[
    expenses,
    expenses + hours * getWage(SalaryLevel.minimum),
    expenses + hours * getWage(SalaryLevel.survivable),
    expenses + hours * getWage(SalaryLevel.livable),
    expenses + hours * getWage(SalaryLevel.comfortable),
  ];
}

/// ** Comfortable wage **
///
/// Eventually, Empathetech will create its own comfortable wage calculator.
/// Currently, we rely on adapting MIT's living wage calculator.
///
/// https://livingwage.mit.edu/
/// https://livingwage.mit.edu/pages/methodology
///
/// The Living Wage team asks "that users do not scrape the data".
/// So, all [getWage] values are hard-coded and updated manually.
/// Last review: August 2024.
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
///       Currently: $97.94/hour
///
/// ** Everything else **
///
/// From the same region, https://livingwage.mit.edu/counties/06075
///
/// Minimum wage: $16.00/hour
/// Survivable wage == living wage w/ 0 children: $28.74/hour
/// Livable wage == living wage w/ 1 child: $57.88/hour
double getWage(SalaryLevel salaryLevel) {
  switch (salaryLevel) {
    case SalaryLevel.minimum:
      return 16.00;
    case SalaryLevel.survivable:
      return 28.74;
    case SalaryLevel.livable:
      return 57.88;
    case SalaryLevel.comfortable:
    default:
      return 97.94;
  }
}

/// Sum the totals from the latest YTD expense report
/// See it here: https://github.com/Empathetech-LLC/expense-report
Future<double> gatherExpenses() async {
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
  return gatherContracts() + gatherDonations();
}

/// For prospective contractees: our rates follow the methodology in [getWage]
/// Discounts are available to affiliates/donors; see site(s) for details
double gatherContracts() {
  return 0;
}

/// Combine the income from...
/// Direct donation platforms: PayPal, Venmo, CashApp
/// Affiliate donation platforms: Patreon, Buy Me a Coffee, Ko-fi
double gatherDonations() {
  final double crowdFunding = goFundMe();
  final double affiliateDonations = patreon() + coffee() + kofi();
  final double directDonations = paypal() + venmo() + cashapp();
  return crowdFunding + affiliateDonations + directDonations;
}

/// Working on links, will revive the fin-plan page when ready
double goFundMe() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double patreon() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double coffee() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double kofi() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double paypal() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double venmo() {
  return 0;
}

/// Working on links, will revive the fin-plan page when ready
double cashapp() {
  return 0;
}

/// While Empathetech is not a profit first company, we do need to keep some money.
/// Primarily for:
///   - Sustainable growth
///   - Armor against angry tech giants
///
/// The current plan is to pay it forward.
/// For every (excess) dollar we make, the next three will be given to non-profits that share our mission.
String getSplit(double netProfit) {
  return asUSD(netProfit / 4);
}
