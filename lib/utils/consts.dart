/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:flutter/material.dart';

// Titles //

/// YWT
const String ywtName = 'YWT';

/// Open UI
const String openUI = 'Open UI';

/// InstaSOS
const String sosName = 'InstaSOS';

/// Insta SOS
const String sosLabel = 'Insta SOS';

// Image assets //

// Open UI
const String openUIIconPath = 'assets/images/open-ui/app-icon.png';
const ImageProvider openUIImage = AssetImage(openUIIconPath);

// SOS
const String sosIconPath = 'assets/images/sos/sos-icon.png';
const ImageProvider sosImage = AssetImage(sosIconPath);

// Liminal
const String cleanNebulaPath = 'assets/images/liminal/clean-nebula.png';
const ImageProvider cleanNebulaImage = AssetImage(cleanNebulaPath);

const String duckDuckFetchPath = 'assets/images/liminal/duck-duck-fetch.png';
const ImageProvider duckDuckFetchImage = AssetImage(duckDuckFetchPath);

const String lasRosasPath = 'assets/images/liminal/las-rosas.png';
const ImageProvider lasRosasImage = AssetImage(lasRosasPath);

const String natureIsFabPath = 'assets/images/liminal/nature-is-fab.png';
const ImageProvider natureIsFabImage = AssetImage(natureIsFabPath);

const String productivityPath = 'assets/images/liminal/productivity.png';
const ImageProvider productivityImage = AssetImage(productivityPath);

const String seaBombCleanerPath = 'assets/images/liminal/sea-bomb-cleaner.png';
const ImageProvider seaBombCleanerImage = AssetImage(seaBombCleanerPath);

const String theHoodPath = 'assets/images/liminal/the-hood.png';
const ImageProvider theHoodImage = AssetImage(theHoodPath);

const String twoDoorsPath = 'assets/images/liminal/two-doors.png';
const ImageProvider twoDoorsImage = AssetImage(twoDoorsPath);

// Community
const String fahIconPath = 'assets/images/community/fah.png';
const ImageProvider fahImage = AssetImage(fahIconPath);

// Video assets //

const String openUIDemoPath = 'assets/videos/open-ui/demo.mp4';

const String sosPromoPath = 'assets/videos/sos/promo.mp4';
const String sosVerticalPromoPath = 'assets/videos/sos/vertical-promo.mp4';

const String sosArCCPath = 'assets/videos/sos/captions/sos-promo-ar.srt';
const String sosDeCCPath = 'assets/videos/sos/captions/sos-promo-de.srt';
const String sosEnCCPath = 'assets/videos/sos/captions/sos-promo-en.srt';
const String sosEsCCPath = 'assets/videos/sos/captions/sos-promo-es.srt';
const String sosFilCCPath = 'assets/videos/sos/captions/sos-promo-fil.srt';
const String sosFrCCPath = 'assets/videos/sos/captions/sos-promo-fr.srt';
const String sosHiCCPath = 'assets/videos/sos/captions/sos-promo-hi.srt';
const String sosHtCCPath = 'assets/videos/sos/captions/sos-promo-ht.srt';
const String sosJaCCPath = 'assets/videos/sos/captions/sos-promo-ja.srt';
const String sosKoCCPath = 'assets/videos/sos/captions/sos-promo-ko.srt';
const String sosRuCCPath = 'assets/videos/sos/captions/sos-promo-ru.srt';
const String sosSwCCPath = 'assets/videos/sos/captions/sos-promo-sw.srt';
const String sosUkCCPath = 'assets/videos/sos/captions/sos-promo-uk.srt';
const String sosZhCCPath = 'assets/videos/sos/captions/sos-promo-zh.srt';

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
  fahIconPath: faHLink,

  // Videos
  openUIDemoPath: founder,
  sosPromoPath: '$founder & $montana',
  sosVerticalPromoPath: '$founder & $montana',
};
