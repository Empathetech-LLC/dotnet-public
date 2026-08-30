/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

//* Files *//

export 'products/liminal.dart';
export 'products/open_ui.dart';
export 'products/sos.dart';

export 'contribute.dart';
export 'error.dart';
export 'home.dart';
export 'settings.dart';

//* Paths && URLs *//

const String baseURL = 'https://ywt.llc/#/';

/// Type query parameter == 'type'
const String typeQP = 'type';

/// Advanced query parameter == 'advanced'
const String advQP = 'advanced';

/// Page query parameter == 'advanced'
const String pageQP = 'page';

// Core //

/// https://ywt.llc/
const String homeURL = 'https://ywt.llc/';

/// contribute
const String contributePath = 'contribute';

/// https://ywt.llc/#/contribute
const String contributeURL = '${baseURL}contribute';

// Settings //

/// settings
const String settingsPath = 'settings';

/// https://ywt.llc/#/settings
const String settingsURL = '${baseURL}settings';

/// color-settings
const String colorSettingsPath = 'color-settings';

/// color
const String colorRedirect = 'color';

/// https://ywt.llc/#/settings?type=color
const String colorSettingsURL = '$settingsURL?$typeQP=$colorRedirect';

/// design-settings
const String designSettingsPath = 'design-settings';

/// design
const String designRedirect = 'design';

/// https://ywt.llc/#/settings?type=design
const String designSettingsURL = '$settingsURL?$typeQP=$designRedirect';

/// text-settings
const String textSettingsPath = 'text-settings';

/// text
const String textRedirect = 'text';

/// https://ywt.llc/#/settings?type=text
const String textSettingsURL = '$settingsURL?$typeQP=$textRedirect';

// Settings' lookups //

/// Gives order to the page redirects
/// color, design, text, null
const Map<String?, int?> targetLookup = <String?, int?>{
  colorRedirect: 1,
  designRedirect: 2,
  textRedirect: 3,
  null: null,
};

/// Quick bool parse
bool? qbParse(String? qp) => (qp == null)
    ? null
    : switch (qp.toLowerCase()) {
        'true' => true,
        'false' => false,
        _ => null,
      };
