/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:flutter/material.dart';

// Titles //

/// YWT
const String ywt = 'YWT';

/// Open UI
const String openUI = 'Open UI';

/// InstaSOS
const String sosName = 'InstaSOS';

/// Insta SOS
const String sosLabel = 'Insta SOS';

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

/// assets/images/duck-duck-fetch.png
const String duckDuckFetchPath = 'assets/images/duck-duck-fetch.png';

/// [AssetImage] of [duckDuckFetchPath]
const ImageProvider duckDuckFetchImage = AssetImage(duckDuckFetchPath);

/// assets/images/las-rosas.png
const String lasRosasPath = 'assets/images/las-rosas.png';

/// [AssetImage] of [lasRosasPath]
const ImageProvider lasRosasImage = AssetImage(lasRosasPath);

/// assets/images/la-grenouille.png
const String laGrenouillePath = 'assets/images/la-grenouille.png';

/// [AssetImage] of [laGrenouillePath]
const ImageProvider laGrenouilleImage = AssetImage(laGrenouillePath);

/// assets/images/fah.png
const String fahIconPath = 'assets/images/fah.png';

/// [AssetImage] of [fahIconPath]
const ImageProvider fahImage = AssetImage(fahIconPath);

// Video assets //

const String openUIDemoPath = 'assets/videos/open-ui-demo.mp4';
const String sosPromoPath = 'assets/videos/sos-promo.mp4';

const String sosVerticalPromoPath = 'assets/videos/sos-promo-vertical.mp4';

const String sosArCCPath = 'assets/videos/captions/sos-promo-ar.srt';
const String sosDeCCPath = 'assets/videos/captions/sos-promo-de.srt';
const String sosEnCCPath = 'assets/videos/captions/sos-promo-en.srt';
const String sosEsCCPath = 'assets/videos/captions/sos-promo-es.srt';
const String sosFilCCPath = 'assets/videos/captions/sos-promo-fil.srt';
const String sosFrCCPath = 'assets/videos/captions/sos-promo-fr.srt';
const String sosHiCCPath = 'assets/videos/captions/sos-promo-hi.srt';
const String sosHtCCPath = 'assets/videos/captions/sos-promo-ht.srt';
const String sosJaCCPath = 'assets/videos/captions/sos-promo-ja.srt';
const String sosKoCCPath = 'assets/videos/captions/sos-promo-ko.srt';
const String sosRuCCPath = 'assets/videos/captions/sos-promo-ru.srt';
const String sosSwCCPath = 'assets/videos/captions/sos-promo-sw.srt';
const String sosUkCCPath = 'assets/videos/captions/sos-promo-uk.srt';
const String sosZhCCPath = 'assets/videos/captions/sos-promo-zh.srt';

// Local links //

/// https://github.com/YWT-LLC/web-mirror/blob/main/lib/screens/settings_home.dart
const String settingsSource =
    'https://github.com/YWT-LLC/web-mirror/blob/main/lib/screens/settings/settings_home.dart';

/// https://github.com/YWT-LLC/open_ui
const String ouiSource = 'https://github.com/YWT-LLC/open_ui';

/// https://github.com/YWT-LLC/sos
const String sosSource = 'https://github.com/YWT-LLC/sos';

/// https://github.com/YWT-LLC/liminal_launcher
const String liminalSource = 'https://github.com/YWT-LLC/liminal_launcher';

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
  duckDuckFetchPath,
  lasRosasPath,
  laGrenouillePath,
  fahIconPath,

  // Videos
  openUIDemoPath,
  sosPromoPath,
  sosVerticalPromoPath,
};

/// aka assetSources
final Map<String, String> credits = <String, String>{
  // Images
  openUIIconPath: founder,
  sosIconPath: 'https://fonts.google.com/icons',
  theHoodPath: crosby,
  duckDuckFetchPath: elinaV,
  lasRosasPath: founder,
  laGrenouillePath: nikkolas,
  fahIconPath: faHLink,

  // Videos
  openUIDemoPath: founder,
  sosPromoPath: '$founder & $montana',
  sosVerticalPromoPath: '$founder & $montana',
};
