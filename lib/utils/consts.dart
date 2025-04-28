/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

//* App config *//

const String showDevProducts = 'showDeveloperProducts';

const Map<String, Object> mobileDotnetConfig = <String, Object>{
  ...mobileEmpathConfig,
  showDevProducts: false,
};

const Map<String, Object> desktopDotnetConfig = <String, Object>{
  ...desktopEmpathConfig,
  showDevProducts: true,
};

//* Names *//

// People //

/// 'Michael Waldron'; Founder
const String mike = 'Michael Waldron';

/// 'Sara Herrera'; Freelance Spanish translator
const String saraH = 'Sara Herrera';

/// 'Alexis Nguyen'; Freelance French translator
const String alexisN = 'Alexis Nguyen';

// Things //

/// 'Empathetech'
const String empathetech = 'Empathetech';

/// 'Empathetic'
const String empathetic = 'Empathetic';

/// 'Empathetech LLC'
const String empathetechLLC = 'Empathetech LLC';

/// 'Empathetic LLC'
const String empatheticLLC = 'Empathetic LLC';

/// 'Open UI'
const String openUI = 'Open UI';

/// 'InstaSOS'
const String sosName = 'InstaSOS';

/// 'Insta SOS'
const String sosLabel = 'Insta SOS';

/// 'Smoke Signal'
const String smokeSignal = 'Smoke Signal';

//* Assets *//

// Paths //

/// 'assets/videos/eag-demo.mp4'
const String openUIDemoPath = 'assets/videos/eag-demo.mp4';

/// 'assets/images/open-ui-icon.png'
const String openUIIconPath = 'assets/images/open-ui-icon.png';

/// 'assets/images/sos-icon.png'
const String sosIconPath = 'assets/images/sos-icon.png';

/// 'assets/images/smoke-signal-icon.png'
const String smokeSignalIconPath = 'assets/images/smoke-signal-icon.png';

/// 'assets/images/founder.png'
const String founderIconPath = 'assets/images/founder.png';

/// 'assets/images/fah.png'
const String fahIconPath = 'assets/images/fah.png';

// Images //

/// [AssetImage] of [openUIIconPath]
const ImageProvider openUIImage = AssetImage(openUIIconPath);

/// [AssetImage] of [sosImage]
const ImageProvider sosImage = AssetImage(sosIconPath);

/// [AssetImage] of [smokeSignalIconPath]
const ImageProvider smokeSignalImage = AssetImage(smokeSignalIconPath);

/// [AssetImage] of [founderIconPath]
const ImageProvider founderImage = AssetImage(founderIconPath);

/// [NetworkImage] of [saraHProfileLink]
const ImageProvider saraHProfile = NetworkImage(saraHProfileLink);

/// [NetworkImage] of [alexisNProfileLink]
const ImageProvider alexisNProfile = NetworkImage(alexisNProfileLink);

/// [AssetImage] of [fahIconPath]
const ImageProvider fahImage = AssetImage(fahIconPath);

// Trackers //

const Set<String> assetPaths = <String>{
  openUIDemoPath,
  openUIIconPath,
  sosIconPath,
  smokeSignalIconPath,
  founderIconPath,
  fahIconPath,
};

/// aka assetSources
const Map<String, String> credits = <String, String>{
  openUIDemoPath: mike,
  openUIIconPath: '$mike & Google Gemini',
  sosIconPath: materialIconsLink,
  smokeSignalIconPath: '$mike & $pimenLink',
  founderIconPath: '$mike & $dunvekLink',
  fahIconPath: faHLink,
};

//* Links *//

// Code //

/// https://github.com/Empathetech-LLC/empathetech_flutter_ui
const String efuiSource =
    'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

/// https://github.com/Empathetech-LLC/sos
const String sosSource = 'https://github.com/Empathetech-LLC/sos';

/// https://github.com/Empathetech-LLC/smoke_signal
const String smokeSignalSource =
    'https://github.com/Empathetech-LLC/smoke_signal';

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings/settings_home.dart';

// Non-profits //

/// https://foldingathome.org/
const String faHLink = 'https://foldingathome.org/';

/// https://foldingathome.org/about-2/
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

// Freelancers //

/// [https://www.fiverr.com/saraqua]
const String saraHLink = 'https://www.fiverr.com/saraqua';

const String saraHProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/caeeca93d8d9dba80063f3bd7a58d4cb-1644185296216/02ace6d1-a57f-47c6-8a4e-68e491d55f60.jpg';

/// [https://www.fiverr.com/alexisnguyen2]
const String alexisNLink = 'https://www.fiverr.com/alexisnguyen2';

const String alexisNProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/fa4ca8fc941f2c5e25aaa1814867e90c-1672317477265/e9da2515-5e39-4384-b6bc-2d6eec587f33.png';

/// Dunvek, graphic designer
/// https://www.fiverr.com/dunvek
/// Created the founder profile
const String dunvekLink = 'https://www.fiverr.com/dunvek';

// Asset artists //

/// Pimen, graphic designer
/// https://pimen.itch.io/
/// Created an asset used for the Smoke Signal icon
const String pimenLink = 'https://pimen.itch.io/';

/// Google/Material
/// https://fonts.google.com/icons
const String materialIconsLink = 'https://fonts.google.com/icons';
