/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

// App config //

/// Empathetech
const String empathetech = 'Empathetech';

/// Empathetic
const String empathetic = 'Empathetic';

/// Empathetech LLC
const String empathetechLLC = 'Empathetech LLC';

/// Empathetic LLC
const String empatheticLLC = 'Empathetic LLC';

// Assets //

const String darkLogoPath = 'assets/images/dark-logo.png';

const String fahIconPath = 'assets/images/fah.png';

const String founderIconPath = 'assets/images/founder.png';
const String mike = 'Michael Waldron';

const String openUIIconPath = 'assets/images/settings-sandbox-round.png';

const String ytdReportPath = 'assets/data/ytd-expenses.csv';

const String anitaBorgIconPath = 'assets/images/AnitaB.webp';
const String codeDotOrgIconPath = 'assets/images/code-dot-org.png';
const String worldSavvyIconPath = 'assets/images/world-savvy.webp';

const Set<String> assetPaths = <String>{
  darkLogoPath,
  fahIconPath,
  founderIconPath,
  openUIIconPath,
  ytdReportPath,
  anitaBorgIconPath,
  codeDotOrgIconPath,
  worldSavvyIconPath,
};

/// 171.0
/// Chosen by visual inspection
const double imageSize = 171.0;

//// Links ////

// Code //

/// https://github.com/Empathetech-LLC/empathetech_flutter_ui
const String efuiSource =
    'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings/settings_home.dart';

/// https://en.wikipedia.org/wiki/Software_as_a_service
const String saaSDocs = 'https://en.wikipedia.org/wiki/Software_as_a_service';

/// https://en.wikipedia.org/wiki/Multi-licensing
const String dualLicenseDocs = 'https://en.wikipedia.org/wiki/Multi-licensing';

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/utils/finances.dart
const String financesSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/utils/finances.dart';

// Freelancers //

/// Sara Herrera, Spanish translator
const String saraH = 'Sara Herrera';

/// [https://www.fiverr.com/saraqua]
const String saraHLink = 'https://www.fiverr.com/saraqua';

const String saraHProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/caeeca93d8d9dba80063f3bd7a58d4cb-1644185296216/02ace6d1-a57f-47c6-8a4e-68e491d55f60.jpg';

/// Alexis Nguyen, French translator
const String alexisN = 'Alexis Nguyen';

/// [https://www.fiverr.com/alexisnguyen2]
const String alexisNLink = 'https://www.fiverr.com/alexisnguyen2';

const String alexisNProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/fa4ca8fc941f2c5e25aaa1814867e90c-1672317477265/e9da2515-5e39-4384-b6bc-2d6eec587f33.png';

/// Dunvek, graphic designer
/// https://www.fiverr.com/dunvek
/// Created the founder profile
const String dunvekLink = 'https://www.fiverr.com/dunvek';

// Non-profits //

/// https://anitab.org/
const String anitaBorgLink = 'https://anitab.org/';

/// https://www.charitynavigator.org/ein/770480427
const String anitaBorgCNavLink =
    'https://www.charitynavigator.org/ein/770480427';

/// https://code.org/
const String codeDotOrgLink = 'https://code.org/';

/// https://www.charitynavigator.org/ein/460858543
const String codeDotOrgCNavLink =
    'https://www.charitynavigator.org/ein/460858543';

/// https://worldsavvy.org/
const String worldSavvyLink = 'https://worldsavvy.org/';

/// https://www.charitynavigator.org/ein/450473508
const String worldSavvyCNavLink =
    'https://www.charitynavigator.org/ein/450473508';

/// https://foldingathome.org/
const String faHLink = 'https://foldingathome.org/';

/// https://foldingathome.org/about-2/
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

// Asset sources //

const Map<String, String> credits = <String, String>{
  darkLogoPath: mike,
  fahIconPath: faHLink,
  founderIconPath: '$mike & $dunvekLink',
  openUIIconPath: '$mike & Gemini',
  anitaBorgIconPath: anitaBorgLink,
  codeDotOrgIconPath: codeDotOrgLink,
  worldSavvyIconPath: worldSavvyLink,
};
