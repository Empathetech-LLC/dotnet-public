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

/// 'Yasmin Sid'; Freelance Arabic (ar) translator
const String yasminS = 'Yasmin Sid';

/// 'Sara Herrera'; Freelance Spanish (es) translator
const String saraH = 'Sara Herrera';

/// 'Remalyn'; Freelance Filipino (fil) translator
const String remalyn = 'Remalyn';

/// 'Alexis Nguyen'; Freelance French (fr) translator
const String alexisN = 'Alexis Nguyen';

/// 'Carly'; Freelance Creole (ht) translator
const String carly = 'Carly';

/// 'Leah'; Freelance Simplified Chinese (zh) translator
const String leah = 'Leah';

/// 'Hilaria'; Freelance Simplified Chinese (zh) translator
const String hilaria = 'Hilaria';

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

/// [NetworkImage] of [yasminSProfileLink]
const ImageProvider yasminSProfile = NetworkImage(yasminSProfileLink);

/// [NetworkImage] of [saraHProfileLink]
const ImageProvider saraHProfile = NetworkImage(saraHProfileLink);

/// [NetworkImage] of [remalynProfileLink]
const ImageProvider remalynProfile = NetworkImage(remalynProfileLink);

/// [NetworkImage] of [alexisNProfileLink]
const ImageProvider alexisNProfile = NetworkImage(alexisNProfileLink);

/// [NetworkImage] of [carlyProfileLink]
const ImageProvider carlyProfile = NetworkImage(carlyProfileLink);

/// [NetworkImage] of [leahProfileLink]
const ImageProvider leahProfile = NetworkImage(leahProfileLink);

/// [NetworkImage] of [hilariaProfileLink]
const ImageProvider hilariaProfile = NetworkImage(hilariaProfileLink);

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

/// https://www.fiverr.com/yasminsid
const String yasminSLink = 'https://www.fiverr.com/yasminsid';

const String yasminSProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/9272e7a04390711a68fdde232f04e1b4-1560632522775/1a69d9e8-2c06-42e6-b79d-03e5d790032f.jpg';

/// https://www.fiverr.com/saraqua
const String saraHLink = 'https://www.fiverr.com/saraqua';

const String saraHProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/caeeca93d8d9dba80063f3bd7a58d4cb-1644185296216/02ace6d1-a57f-47c6-8a4e-68e491d55f60.jpg';

/// https://www.fiverr.com/remalynsayat
const String remalynLink = 'https://www.fiverr.com/remalynsayat';

const String remalynProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/ee71fe7797d38e2952c2b878acb71d5c-1706369353865/a2720aad-2b18-4907-8a7c-f1f6b4b18054.jpg';

/// https://www.fiverr.com/alexisnguyen2
const String alexisNLink = 'https://www.fiverr.com/alexisnguyen2';

const String alexisNProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/fa4ca8fc941f2c5e25aaa1814867e90c-1672317477265/e9da2515-5e39-4384-b6bc-2d6eec587f33.png';

/// https://www.fiverr.com/louiscarly
const String carlyLink = 'https://www.fiverr.com/louiscarly';

const String carlyProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/e753d4d365edb4f2a8a8e4aa0eb1f8de-1526514773546/6b5a9b8d-07b4-46d6-a33b-3c352a6b1204.png';

/// https://www.fiverr.com/leahli244
const String leahLink = 'https://www.fiverr.com/leahli244';

const String leahProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/219bf43d14dd11d4a38a1820b39b5f44-1579491837074/a6d9cf14-d70e-40bf-b263-b6de546b09bf.png';

/// https://www.fiverr.com/hilariazoey
const String hilariaLink = 'https://www.fiverr.com/hilariazoey';

const String hilariaProfileLink =
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/dbdf681e8134a0354b6d8ce46e65dc7c-1737204881968/9bf62bca-4a61-4b49-95f3-682aff62cd99.jpg';

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
