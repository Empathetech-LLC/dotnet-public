/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import 'package:flutter/material.dart';

// Titles //

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

// Image assets //

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

// Video assets //

const String openUIDemoPath = 'assets/videos/open-ui-demo.mp4';
const String sosPromoPath = 'assets/videos/sos-promo.mp4';

const String sosVerticalPromoPath = 'assets/videos/sos-promo-vertical.mp4';

const String sosArCaptionsPath = 'assets/videos/captions/sos-promo-ar.srt';
const String sosDeCaptionsPath = 'assets/videos/captions/sos-promo-de.srt';
const String sosEnCaptionsPath = 'assets/videos/captions/sos-promo-en.srt';
const String sosEsCaptionsPath = 'assets/videos/captions/sos-promo-es.srt';
const String sosFilCaptionsPath = 'assets/videos/captions/sos-promo-fil.srt';
const String sosFrCaptionsPath = 'assets/videos/captions/sos-promo-fr.srt';
const String sosHiCaptionsPath = 'assets/videos/captions/sos-promo-hi.srt';
const String sosHtCaptionsPath = 'assets/videos/captions/sos-promo-ht.srt';
const String sosJaCaptionsPath = 'assets/videos/captions/sos-promo-ja.srt';
const String sosKoCaptionsPath = 'assets/videos/captions/sos-promo-ko.srt';
const String sosRuCaptionsPath = 'assets/videos/captions/sos-promo-ru.srt';
const String sosSwCaptionsPath = 'assets/videos/captions/sos-promo-sw.srt';
const String sosUkCaptionsPath = 'assets/videos/captions/sos-promo-uk.srt';
const String sosZhCaptionsPath = 'assets/videos/captions/sos-promo-zh.srt';

// Local links //

/// https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings/settings_home.dart';

/// https://github.com/Empathetech-LLC/empathetech_flutter_ui
const String efuiSource = 'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

/// https://github.com/Empathetech-LLC/sos
const String sosSource = 'https://github.com/Empathetech-LLC/sos';

/// https://github.com/Empathetech-LLC/liminal_launcher
const String liminalSource = 'https://github.com/Empathetech-LLC/liminal_launcher';

/// https://github.com/Empathetech-LLC/smoke_signal
const String smokeSignalSource = 'https://github.com/Empathetech-LLC/smoke_signal';

// External links //

/// https://foldingathome.org/
const String faHLink = 'https://foldingathome.org/';

/// https://foldingathome.org/about-2/
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

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

/// aka assetSources
final Map<String, String> credits = <String, String>{
  // Images
  openUIIconPath: '$mike & Google Gemini',
  sosIconPath: 'https://fonts.google.com/icons',
  theHoodPath: '$crosby & $mike',
  lasRosasPath: mike,
  laGrenouillePath: '$nikkolas & $mike',
  smokeSignalIconPath: '$mike & $pimenLink',
  founderIconPath: '$mike & $dunvekLink',
  openSauce2025Path: mike,
  openSauceLogoPath: 'https://opensauce.com/',
  fahIconPath: faHLink,
  montanaHeadshotPath: montanaM.name,

  // Videos
  openUIDemoPath: mike,
  sosPromoPath: '$montanaM & $mike',
  sosVerticalPromoPath: '$montanaM & $mike',
};
