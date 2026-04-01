/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

//* Files *//

export 'content/products/open_ui.dart';
export 'content/products/sos.dart';
export 'content/products/liminal.dart';
export 'content/products/smoke_signal.dart';
export 'content/products/verified.dart';

export 'content/contribute.dart';
export 'content/mission.dart';
export 'content/team.dart';

export 'error.dart';
export 'home.dart';
export 'settings.dart';

//* Paths && URLs *//

const String baseURL = 'https://www.empathetech.net/#/';

/// Type query parameter == 'type'
const String typeQP = 'type';

/// Advanced query parameter == 'advanced'
const String advQP = 'advanced';

// Core //

/// const String homePath = FROM_EFUI

/// https://www.empathetech.net/#/?fin=true
const String homeURL = '$baseURL?fin=true';

/// mission
const String missionPath = 'mission';

/// https://www.empathetech.net/#/mission
const String missionURL = '${baseURL}mission';

/// team
const String teamPath = 'team';

/// https://www.empathetech.net/#/team
const String teamURL = '${baseURL}team';

/// contribute
const String contributePath = 'contribute';

/// https://www.empathetech.net/#/contribute
const String contributeURL = '${baseURL}contribute';

// Settings //

/// settings
const String settingsPath = 'settings';

/// https://www.empathetech.net/#/settings
const String settingsURL = '${baseURL}settings';

/// color-settings
const String colorSettingsPath = 'color-settings';

/// color
const String colorRedirect = 'color';

/// https://www.empathetech.net/#/settings?type=color
const String colorSettingsURL = '$settingsURL?$typeQP=$colorRedirect';

/// design-settings
const String designSettingsPath = 'design-settings';

/// design
const String designRedirect = 'design';

/// https://www.empathetech.net/#/settings?type=design
const String designSettingsURL = '$settingsURL?$typeQP=$designRedirect';

/// layout-settings
const String layoutSettingsPath = 'layout-settings';

/// layout
const String layoutRedirect = 'layout';

/// https://www.empathetech.net/#/settings?type=layout
const String layoutSettingsURL = '$settingsURL?$typeQP=$layoutRedirect';

/// text-settings
const String textSettingsPath = 'text-settings';

/// text
const String textRedirect = 'text';

/// https://www.empathetech.net/#/settings?type=text
const String textSettingsURL = '$settingsURL?$typeQP=$textRedirect';

// Settings' lookups //

const Map<String?, int?> targetLookup = <String?, int?>{
  colorRedirect: 1,
  designRedirect: 2,
  layoutRedirect: 3,
  textRedirect: 4,
  null: null,
};

bool? advancedLookup(String? qp) {
  switch (qp) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      return null;
  }
}
