// App config //

const String empathetech = "Empathetech";
const String empathetech_llc = "Empathetech LLC";

// Assets //

const String lightLogoPath = 'assets/light-logo.png';
const String darkLogoPath = 'assets/dark-logo.png';
const String lightLogoVideoPath = 'assets/light-animation.mp4';
const String darkLogoVideoPath = 'assets/dark-animation.mp4';

const String smokeSignalIconPath = 'assets/smoke-signal-icon.png';

const String founderIconPath = 'assets/founder.png';
const String mike = "Michael Waldron";

const String anitaBorgIconPath = 'assets/AnitaB.webp';
const String codeDotOrgIconPath = 'assets/code-dot-org.png';
const String worldSavvyIconPath = 'assets/world-savvy.webp';
const String fahIconPath = 'assets/fah.png';

const String ytdReportPath = 'assets/ytd-expenses.csv';

const Set<String> assetPaths = {
  lightLogoPath,
  darkLogoPath,
  lightLogoVideoPath,
  darkLogoVideoPath,
  smokeSignalIconPath,
  founderIconPath,
  anitaBorgIconPath,
  codeDotOrgIconPath,
  worldSavvyIconPath,
  fahIconPath,
  ytdReportPath,
};

// Links //

const EFUILink = 'https://github.com/Empathetech-LLC/empathetech_flutter_ui';

const settingsLink =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/Settings.dart';
const colorSettingsLink =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/ColorSettings.dart';
const styleSettingsLink =
    'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/StyleSettings.dart';
const financesLink =
    "https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/utils/finances.dart";

const graphicAlertLink = 'https://www.fiverr.com/graphic_alert';
const pimenLink = 'https://pimen.itch.io/';
const dunvekLink = 'https://www.fiverr.com/dunvek';

const anitaBorgLink = 'https://anitab.org/';
const anitaBorgCNavLink = 'https://www.charitynavigator.org/ein/770480427';

const codeDotOrgLink = 'https://code.org/';
const codeDotOrgCNavLink = 'https://www.charitynavigator.org/ein/460858543';

const worldSavvyLink = 'https://worldsavvy.org/';
const worldSavvyCNavLink = 'https://www.charitynavigator.org/ein/450473508';

const faHLink = 'https://foldingathome.org/';
const aboutFaHLink = 'https://foldingathome.org/about-2/';

// Asset sources //

const Map<String, String> credits = {
  lightLogoPath: empathetech_llc,
  darkLogoPath: empathetech_llc,
  lightLogoVideoPath: "$empathetech_llc & $graphicAlertLink",
  darkLogoVideoPath: "$empathetech_llc & $graphicAlertLink",
  smokeSignalIconPath: "$empathetech_llc & $pimenLink",
  founderIconPath: "$mike & $dunvekLink",
  anitaBorgIconPath: anitaBorgLink,
  codeDotOrgIconPath: codeDotOrgLink,
  worldSavvyIconPath: worldSavvyLink,
  fahIconPath: faHLink,
};

// Custom defaults //

const double CircleAvatarRadius = 100;
