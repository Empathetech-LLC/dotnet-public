// App config //

/// Empathetech
const String empathetech = 'Empathetech';
const String empathetic = 'Empathetic';

/// Empathetech LLC
const String empathetechLLC = 'Empathetech LLC';
const String empatheticLLC = 'Empathetic LLC';

// Assets //

const String lightLogoPath = 'assets/light-logo.png';
const String darkLogoPath = 'assets/dark-logo.png';
const String lightLogoVideoPath = 'assets/light-animation.mp4';
const String darkLogoVideoPath = 'assets/dark-animation.mp4';

const String founderIconPath = 'assets/founder.png';

/// Michael Waldron
const String mike = 'Michael Waldron';

const String anitaBorgIconPath = 'assets/AnitaB.webp';
const String codeDotOrgIconPath = 'assets/code-dot-org.png';
const String worldSavvyIconPath = 'assets/world-savvy.webp';

const String fahIconPath = 'assets/fah.png';

const String ytdReportPath = 'assets/ytd-expenses.csv';

const Set<String> assetPaths = <String>{
  lightLogoPath,
  darkLogoPath,
  lightLogoVideoPath,
  darkLogoVideoPath,
  founderIconPath,
  anitaBorgIconPath,
  codeDotOrgIconPath,
  worldSavvyIconPath,
  fahIconPath,
  ytdReportPath,
};

/// 3x the Display style's fontSize
const double imageSize = 171.0;

// Links //

const String efuiSource =
    'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

const String settingsSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings.dart';

const String saaSDocs = 'https://en.wikipedia.org/wiki/Software_as_a_service';
const String dualLicenseDocs = 'https://en.wikipedia.org/wiki/Multi-licensing';
const String bigTechDocs = 'https://en.wikipedia.org/wiki/Big_Tech';

const String anitaBorgLink = 'https://anitab.org/';
const String anitaBorgCNavLink =
    'https://www.charitynavigator.org/ein/770480427';

const String codeDotOrgLink = 'https://code.org/';
const String codeDotOrgCNavLink =
    'https://www.charitynavigator.org/ein/460858543';

const String worldSavvyLink = 'https://worldsavvy.org/';
const String worldSavvyCNavLink =
    'https://www.charitynavigator.org/ein/450473508';

const String financesSource =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/utils/finances.dart';

const String dunvekLink = 'https://www.fiverr.com/dunvek';

const String faHLink = 'https://foldingathome.org/';
const String aboutFaHLink = 'https://foldingathome.org/about-2/';

// Asset sources //

const Map<String, String> credits = <String, String>{
  lightLogoPath: mike,
  darkLogoPath: mike,
  lightLogoVideoPath: mike,
  darkLogoVideoPath: mike,
  founderIconPath: '$mike & $dunvekLink',
  anitaBorgIconPath: anitaBorgLink,
  codeDotOrgIconPath: codeDotOrgLink,
  worldSavvyIconPath: worldSavvyLink,
  fahIconPath: faHLink,
};
