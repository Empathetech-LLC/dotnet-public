/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/material.dart';

/// dotnet
const String appName = 'dotnet';

//* Names *//

// People //

/// Michael Waldron; Founder
const String mike = 'Michael Waldron';

/// Montana Monardes; Freelance video producer
const String montanaM = 'Montana Monardes';

/// Yasmin Sid; Freelance Arabic (ar) translator
const String yasminS = 'Yasmin Sid';

/// Sara Herrera; Freelance Spanish (es) translator
const String saraH = 'Sara Herrera';

/// Remalyn; Freelance Filipino (fil) translator
const String remalyn = 'Remalyn';

/// Alexis Nguyen; Freelance French (fr) translator
const String alexisN = 'Alexis Nguyen';

/// Carly; Freelance Creole (ht) translator
const String carly = 'Carly';

/// Leah; Freelance Simplified Chinese (zh) translator
const String leah = 'Leah';

/// Hilaria; Freelance Simplified Chinese (zh) translator
const String hilaria = 'Hilaria';

// Things //

/// Empathetech
const String empathetech = 'Empathetech';

/// Empathetic
const String empathetic = 'Empathetic';

/// Empathetech LLC
const String empathetechLLC = 'Empathetech LLC';

/// Empathetic LLC
const String empatheticLLC = 'Empathetic LLC';

/// Open UI
const String openUI = 'Open UI';

/// InstaSOS
const String sosName = 'InstaSOS';

/// Insta SOS
const String sosLabel = 'Insta SOS';

/// Smoke Signal
const String smokeSignal = 'Smoke Signal';

//* Assets *//

// Images //

/// assets/images/open-ui-icon.png
const String openUIIconPath = 'assets/images/open-ui-icon.png';

/// [AssetImage] of [openUIIconPath]
const ImageProvider openUIImage = AssetImage(openUIIconPath);

/// assets/images/sos-icon.png
const String sosIconPath = 'assets/images/sos-icon.png';

/// [AssetImage] of [sosImage]
const ImageProvider sosImage = AssetImage(sosIconPath);

/// assets/images/the-hood.png
const String theHoodPath = 'assets/images/the-hood.png';

/// [AssetImage] of [theHoodPath]
const ImageProvider theHoodImage = AssetImage(theHoodPath);

/// assets/images/las-rosas.png
const String lasRosasPath = 'assets/images/las-rosas.png';

/// [AssetImage] of [lasRosasPath]
const ImageProvider lasRosasImage = AssetImage(lasRosasPath);

/// assets/images/la-grenouille.png
const String laGrenouillePath = 'assets/images/la-grenouille.png';

/// [AssetImage] of [laGrenouillePath]
const ImageProvider laGrenouilleImage = AssetImage(laGrenouillePath);

/// assets/images/smoke-signal-icon.png
const String smokeSignalIconPath = 'assets/images/smoke-signal-icon.png';

/// [AssetImage] of [smokeSignalIconPath]
const ImageProvider smokeSignalImage = AssetImage(smokeSignalIconPath);

/// assets/images/founder.png
const String founderIconPath = 'assets/images/founder.png';

/// [AssetImage] of [founderIconPath]
const ImageProvider founderImage = AssetImage(founderIconPath);

/// assets/images/open-sauce-2025.jpg
const String openSauce2025Path = 'assets/images/open-sauce-2025.jpg';

/// [AssetImage] of [openSauce2025Path]
const ImageProvider openSauce2025Image = AssetImage(openSauce2025Path);

/// assets/images/open-sauce-logo.png
const String openSauceLogoPath = 'assets/images/open-sauce-logo.png';

/// [AssetImage] of [openSauceLogoPath]
const ImageProvider openSauceLogoImage = AssetImage(openSauceLogoPath);

/// assets/images/fah.png
const String fahIconPath = 'assets/images/fah.png';

/// [AssetImage] of [fahIconPath]
const ImageProvider fahImage = AssetImage(fahIconPath);

/// assets/images/montana-headshot.jpg
const String montanaHeadshotPath = 'assets/images/montana-headshot.jpg';

/// [AssetImage] of [montanaHeadshotPath]
const ImageProvider montanaImage = AssetImage(montanaHeadshotPath);

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

// Videos //

/// assets/videos/eag-demo.mp4
const String openUIDemoPath = 'assets/videos/eag-demo.mp4';

/// assets/videos/sos-promo.mp4
const String sosPromoPath = 'assets/videos/sos-promo.mp4';

/// assets/videos/sos-promo-vertical.mp4
const String sosVerticalPromoPath = 'assets/videos/sos-promo-vertical.mp4';

/// assets/videos/sos-promo-captions.srt
const String sosPromoCaptionsPath = 'assets/videos/sos-promo-captions.srt';

// Trackers //

const Set<String> assetPaths = <String>{
  // Images
  openUIIconPath,
  sosIconPath,
  theHoodPath,
  lasRosasPath,
  laGrenouillePath,
  smokeSignalIconPath,
  founderIconPath,
  openSauce2025Path,
  openSauceLogoPath,
  fahIconPath,
  montanaHeadshotPath,

  // Videos
  openUIDemoPath,
  sosPromoPath,
  sosVerticalPromoPath,
};

/// Nikkolas Smith
const String nikkolas = 'Nikkolas Smith';

/// Kevin Crosby
const String crosby = 'Kevin Crosby';

/// aka assetSources
const Map<String, String> credits = <String, String>{
  // Images
  openUIIconPath: '$mike & Google Gemini',
  sosIconPath: materialIconsLink,
  theHoodPath: '$crosby & $mike',
  lasRosasPath: mike,
  laGrenouillePath: '$nikkolas & $mike',
  smokeSignalIconPath: '$mike & $pimenLink',
  founderIconPath: '$mike & $dunvekLink',
  openSauce2025Path: mike,
  openSauceLogoPath: 'https://opensauce.com/',
  fahIconPath: faHLink,
  montanaHeadshotPath: montanaM,

  // Videos
  openUIDemoPath: mike,
  sosPromoPath: '$montanaM & $mike',
  sosVerticalPromoPath: '$montanaM & $mike',
};

//* Links *//

// Code //

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings/settings_home.dart';

/// https://github.com/Empathetech-LLC/empathetech_flutter_ui
const String efuiSource =
    'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

/// https://github.com/Empathetech-LLC/sos
const String sosSource = 'https://github.com/Empathetech-LLC/sos';

/// https://github.com/Empathetech-LLC/liminal_launcher
const String liminalSource =
    'https://github.com/Empathetech-LLC/liminal_launcher';

/// https://github.com/Empathetech-LLC/smoke_signal
const String smokeSignalSource =
    'https://github.com/Empathetech-LLC/smoke_signal';

// Non-profits //

/// https://foldingathome.org/
const String faHLink = 'https://foldingathome.org/';

/// https://foldingathome.org/about-2/
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

// Freelancers //

/// https://www.montanamonardes.com
const String montanaMLink = 'https://www.montanamonardes.com';

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
