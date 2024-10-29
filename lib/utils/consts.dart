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

const String fahIconPath = 'assets/images/fah.png';

const String founderIconPath = 'assets/images/founder.png';
const String mike = 'Michael Waldron';

const String openUIIconPath = 'assets/images/settings-sandbox-round.png';
const String smokeSignalIconPath = 'assets/images/smoke-signal-icon.png';

const Set<String> assetPaths = <String>{
  fahIconPath,
  founderIconPath,
  openUIIconPath,
  smokeSignalIconPath,
};

/// 171.0
/// Chosen by visual inspection
const double imageSize = 171.0;

//* Links *//

// Code //

/// https://github.com/Empathetech-LLC/empathetech_flutter_ui
const String efuiSource =
    'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

/// https://github.com/Empathetech-LLC/smoke_signal
const String smokeSignalSource =
    'https://github.com/Empathetech-LLC/smoke_signal';

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings/settings_home.dart';

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

/// Pimen, graphic designer
/// https://pimen.itch.io/
/// Created an asset used in the smoke signal icon
const String pimenLink = 'https://pimen.itch.io/';

// Non-profits //

/// https://foldingathome.org/
const String faHLink = 'https://foldingathome.org/';

/// https://foldingathome.org/about-2/
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

// Asset sources //

const Map<String, String> credits = <String, String>{
  fahIconPath: faHLink,
  founderIconPath: '$mike & $dunvekLink',
  openUIIconPath: '$mike & Gemini',
  smokeSignalIconPath: '$mike & $pimenLink',
};
