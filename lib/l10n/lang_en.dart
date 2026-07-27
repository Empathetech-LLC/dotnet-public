// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LangEn extends Lang {
  LangEn([String locale = 'en']) : super(locale);

  @override
  String get gYWTLogoLabel => 'a two dimensional hourglass.';

  @override
  String get gYWTLogoHint => 'Activate to go to the home page.';

  @override
  String gLearn(Object name) {
    return 'Learn about $name';
  }

  @override
  String get gHomeHint => 'Open the home page';

  @override
  String get gProductsHint => 'Open a product page';

  @override
  String get gMissionHint => 'Open the mission page';

  @override
  String get gTeamHint => 'Open the team page';

  @override
  String get gContributeHint => 'Open the contribute page';

  @override
  String get gShare => 'Share';

  @override
  String get gEmail => 'Email';

  @override
  String gEmailTo(Object recipient) {
    return 'Email $recipient';
  }

  @override
  String get gAnEmail => 'an email';

  @override
  String get gEmailHint => 'Opens your email client';

  @override
  String get gNewsletter => 'Newsletter';

  @override
  String gLogoLabel(Object thing) {
    return '$thing logo: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'The icon for $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Download $app for $platform.';
  }

  @override
  String get gRepoHint => 'Open a link to the development repo.';

  @override
  String get gYWTGitHint => 'Open the GitHub page for YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Image credit: $creator';
  }

  @override
  String get gReachOut => 'Reach out';

  @override
  String gProfile(Object name) {
    return '$name\'s profile';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Open $user\'s Fiverr page';
  }

  @override
  String get gDontChaWish => 'Don\'t cha wish your frontend was fun ';

  @override
  String get gMeQ => 'like me?';

  @override
  String get gDontCha => 'Don\'t cha?';

  @override
  String get gDontChaHint =>
      'Open the GitHub page for this screen\'s source code';

  @override
  String get hsAnimLabel =>
      'YWT animated logo: the letters YWT transform into a two dimensional hourglass';

  @override
  String get hsChange => 'It\'s time for change.';

  @override
  String get hsmIDProblem => 'Identifying the problem';

  @override
  String get hsmIDProblemContent =>
      'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.';

  @override
  String get hsmSoWe => 'So we';

  @override
  String get hsmFindSolution => 'Find a solution';

  @override
  String get hsmFindSolutionContent =>
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get hsmBy => 'By';

  @override
  String get hsmProvideValue => 'Doing the work';

  @override
  String get hsmProvideValueContent1 =>
      'YWT is re-balancing tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get hsmProvideValueContent2 =>
      ' exists.\nWe take pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get hsmFirst => 'By first';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psTitleHint => 'Show list';

  @override
  String get psShowDemo => 'Show demo';

  @override
  String get psHideDemo => 'Hide demo';

  @override
  String get psShowPromo => 'Show promo';

  @override
  String get psHidePromo => 'Hide promo';

  @override
  String get psLearnMore => ' to learn more.';

  @override
  String get psDownloadNow => 'Download now';

  @override
  String get psComingSoon => 'Coming soon...';

  @override
  String get ouSlogan => 'Build apps for anyone';

  @override
  String get ouLike => 'Like users who need...';

  @override
  String get ouAccessible => 'Accessible controls';

  @override
  String get ouZeroStrain => 'zero eye strain';

  @override
  String get ouEverything => 'Everything in-between';

  @override
  String get ouRandom => 'Random config applied.';

  @override
  String get ouIs => 'Open UI is an app generator.';

  @override
  String get ouDemo => 'Demonstration of Open UI creating a new app.';

  @override
  String get ouFoundation =>
      'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.';

  @override
  String get ouLocal =>
      'Everything runs on your computer. There are no credentials, credit cards, or cookies.';

  @override
  String get ouRequirements =>
      'The only requirements are an internet connection and an idea.';

  @override
  String get ouFlutterToo => '...and Flutter...';

  @override
  String get ouPlatform => 'Platform availability';

  @override
  String get ouPlatformContent =>
      'You can use Open UI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get ouResponsive => 'Responsive design';

  @override
  String get ouResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get ouScreen => 'Screen reader support';

  @override
  String get ouScreenContent => 'OUI apps support users who need ';

  @override
  String get ouTalkBackHint => 'Open a link to TalkBack documentation';

  @override
  String get ouAnd => ' and ';

  @override
  String get ouVoiceOverHint => 'Open a link to VoiceOver documentation';

  @override
  String get ouCustom => 'User customization';

  @override
  String get ouCustomContent =>
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nOpen UI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get ouInternational => 'Internationalization';

  @override
  String get ouInternationalContent =>
      'OUI has been translated to 14 languages (so far).\nOUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouReliability => 'Reliability';

  @override
  String get ouReliabilityContent =>
      'YWT software is built to last. This is NOT AI code generation.\nProgrammers are people. LLMs are rubber ducks.';

  @override
  String get ouGetStarted => 'Get started';

  @override
  String get ouIconLabel => 'a settings sandbox.';

  @override
  String get ouTagLine =>
      'When built with Open UI, your apps can truly reach any audience!\n';

  @override
  String get sosPromoLabel => 'A promotional video for Insta SOS.';

  @override
  String get sosDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in 14 languages and supports screen readers.';

  @override
  String get sosPrivate => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get sosFree => 'It\'s completely free and the code is ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosConsider => 'Please consider ';

  @override
  String get sosContributing => 'contributing';

  @override
  String get sosSAPS => ' to support software as a public service.';

  @override
  String get sosIconLabel => 'a loudly colored notification bell.';

  @override
  String get sosWeb =>
      'One specific, and highly impactful, way to contribute would be to foot the bill for hosting InstaSOS online.\n\nThe app store owners have made their allegiances clear, and InstaSOS may be removed if/when it gains traction.\nAndroid users will always have the option to self install, but the only viable alternative for iOS users would be a web app.\n\nThankfully, Flutter apps are client side compute, so the bill would be low.\nWe\'d (you\'d) only need to pay for traffic management.';

  @override
  String get sosTranslators => 'Translators';

  @override
  String get llInDev =>
      'Liminal is in development.\nIts design leans towards minimalism, but it\'s built with ';

  @override
  String get llWhimsy =>
      'So, your home screen will be free of clutter and distractions, AND be limitlessly customizable.\nWith a bit of whimsy to boot.';

  @override
  String get llTheHood =>
      'A sample home screen with a picture of Portland\'s Mount Hood.';

  @override
  String get llLasRosas =>
      'A sample home screen with a picture of Portland\'s Rose garden.';

  @override
  String get llFrogAndPigs =>
      'A sample home screen with a picture of Portland\'s wildlife.';

  @override
  String get llModel =>
      'Liminal will be released under a \"pay what you can\" model.\nThe Google Play version will be paid, because (good) code doesn\'t write itself.\nThe APK will also be on GitHub, because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.';

  @override
  String get fahJoin => 'Join the Fold';

  @override
  String get fahIconLabel => 'a protein molecule.';

  @override
  String get fahIconHint => 'Activate to open their site.';

  @override
  String get fahIntro1 => 'Join the ';

  @override
  String get fahIntro2 => ' Folding@home team!';

  @override
  String get fahTeamHint => 'Open the YWT folding at home team page';

  @override
  String get fahWhats => 'What\'s ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Open Folding at Home\'s about page';

  @override
  String get fahStats =>
      'Together, we\'ve earned over 400 million points.\nThat puts us in the top 2% of all teams worldwide!';

  @override
  String get csPageTitle => 'Contribute';

  @override
  String get csEveryBit => 'Every bit to us is a byte out of big tech.';

  @override
  String get csTime => 'Time';

  @override
  String get csBecome => ' about becoming a ';

  @override
  String get csGit => 'GitHub contributor';

  @override
  String get csMoney => 'Money';

  @override
  String csOpenLink(Object page) {
    return 'Open a link to YWT\'s $page';
  }

  @override
  String get csPower => 'Power';

  @override
  String get csThanks => 'Many thanks for any and all support!';
}

/// The translations for English, as used in the United States (`en_US`).
class LangEnUs extends LangEn {
  LangEnUs() : super('en_US');

  @override
  String get gYWTLogoLabel => 'a two dimensional hourglass.';

  @override
  String get gYWTLogoHint => 'Activate to go to the home page.';

  @override
  String gLearn(Object name) {
    return 'Learn about $name';
  }

  @override
  String get gHomeHint => 'Open the home page';

  @override
  String get gProductsHint => 'Open a product page';

  @override
  String get gMissionHint => 'Open the mission page';

  @override
  String get gTeamHint => 'Open the team page';

  @override
  String get gContributeHint => 'Open the contribute page';

  @override
  String get gShare => 'Share';

  @override
  String get gEmail => 'Email';

  @override
  String gEmailTo(Object recipient) {
    return 'Email $recipient';
  }

  @override
  String get gAnEmail => 'an email';

  @override
  String get gEmailHint => 'Opens your email client';

  @override
  String get gNewsletter => 'Newsletter';

  @override
  String gLogoLabel(Object thing) {
    return '$thing logo: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'The icon for $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Download $app for $platform.';
  }

  @override
  String get gRepoHint => 'Open a link to the development repo.';

  @override
  String get gYWTGitHint => 'Open the GitHub page for YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Image credit: $creator';
  }

  @override
  String get gReachOut => 'Reach out';

  @override
  String gProfile(Object name) {
    return '$name\'s profile';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Open $user\'s Fiverr page';
  }

  @override
  String get gDontChaWish => 'Don\'t cha wish your frontend was fun ';

  @override
  String get gMeQ => 'like me?';

  @override
  String get gDontCha => 'Don\'t cha?';

  @override
  String get gDontChaHint =>
      'Open the GitHub page for this screen\'s source code';

  @override
  String get hsAnimLabel =>
      'YWT animated logo: the letters YWT transform into a two dimensional hourglass';

  @override
  String get hsChange => 'It\'s time for change.';

  @override
  String get hsmIDProblem => 'Identifying the problem';

  @override
  String get hsmIDProblemContent =>
      'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.';

  @override
  String get hsmSoWe => 'So we';

  @override
  String get hsmFindSolution => 'Find a solution';

  @override
  String get hsmFindSolutionContent =>
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get hsmBy => 'By';

  @override
  String get hsmProvideValue => 'Doing the work';

  @override
  String get hsmProvideValueContent1 =>
      'YWT is re-balancing tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get hsmProvideValueContent2 =>
      ' exists.\nWe take pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get hsmFirst => 'By first';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psTitleHint => 'Show list';

  @override
  String get psShowDemo => 'Show demo';

  @override
  String get psHideDemo => 'Hide demo';

  @override
  String get psShowPromo => 'Show promo';

  @override
  String get psHidePromo => 'Hide promo';

  @override
  String get psLearnMore => ' to learn more.';

  @override
  String get psDownloadNow => 'Download now';

  @override
  String get psComingSoon => 'Coming soon...';

  @override
  String get ouSlogan => 'Build apps for anyone';

  @override
  String get ouLike => 'Like users who need...';

  @override
  String get ouAccessible => 'Accessible controls';

  @override
  String get ouZeroStrain => 'zero eye strain';

  @override
  String get ouEverything => 'Everything in-between';

  @override
  String get ouRandom => 'Random config applied.';

  @override
  String get ouIs => 'Open UI is an app generator.';

  @override
  String get ouDemo => 'Demonstration of Open UI creating a new app.';

  @override
  String get ouFoundation =>
      'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.';

  @override
  String get ouLocal =>
      'Everything runs on your computer. There are no credentials, credit cards, or cookies.';

  @override
  String get ouRequirements =>
      'The only requirements are an internet connection and an idea.';

  @override
  String get ouFlutterToo => '...and Flutter...';

  @override
  String get ouPlatform => 'Platform availability';

  @override
  String get ouPlatformContent =>
      'You can use Open UI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get ouResponsive => 'Responsive design';

  @override
  String get ouResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get ouScreen => 'Screen reader support';

  @override
  String get ouScreenContent => 'OUI apps support users who need ';

  @override
  String get ouTalkBackHint => 'Open a link to TalkBack documentation';

  @override
  String get ouAnd => ' and ';

  @override
  String get ouVoiceOverHint => 'Open a link to VoiceOver documentation';

  @override
  String get ouCustom => 'User customization';

  @override
  String get ouCustomContent =>
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nOpen UI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get ouInternational => 'Internationalization';

  @override
  String get ouInternationalContent =>
      'OUI has been translated to 14 languages (so far).\nOUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouReliability => 'Reliability';

  @override
  String get ouReliabilityContent =>
      'YWT software is built to last. This is NOT AI code generation.\nProgrammers are people. LLMs are rubber ducks.';

  @override
  String get ouGetStarted => 'Get started';

  @override
  String get ouIconLabel => 'a settings sandbox.';

  @override
  String get ouTagLine =>
      'When built with Open UI, your apps can truly reach any audience!\n';

  @override
  String get sosPromoLabel => 'A promotional video for Insta SOS.';

  @override
  String get sosDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in 14 languages and supports screen readers.';

  @override
  String get sosPrivate => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get sosFree => 'It\'s completely free and the code is ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosConsider => 'Please consider ';

  @override
  String get sosContributing => 'contributing';

  @override
  String get sosSAPS => ' to support software as a public service.';

  @override
  String get sosIconLabel => 'a loudly colored notification bell.';

  @override
  String get sosWeb =>
      'One specific, and highly impactful, way to contribute would be to foot the bill for hosting InstaSOS online.\n\nThe app store owners have made their allegiances clear, and InstaSOS may be removed if/when it gains traction.\nAndroid users will always have the option to self install, but the only viable alternative for iOS users would be a web app.\n\nThankfully, Flutter apps are client side compute, so the bill would be low.\nWe\'d (you\'d) only need to pay for traffic management.';

  @override
  String get sosTranslators => 'Translators';

  @override
  String get llInDev =>
      'Liminal is in development.\nIts design leans towards minimalism, but it\'s built with ';

  @override
  String get llWhimsy =>
      'So, your home screen will be free of clutter and distractions, AND be limitlessly customizable.\nWith a bit of whimsy to boot.';

  @override
  String get llTheHood =>
      'A sample home screen with a picture of Portland\'s Mount Hood.';

  @override
  String get llLasRosas =>
      'A sample home screen with a picture of Portland\'s Rose garden.';

  @override
  String get llFrogAndPigs =>
      'A sample home screen with a picture of Portland\'s wildlife.';

  @override
  String get llModel =>
      'Liminal will be released under a \"pay what you can\" model.\nThe Google Play version will be paid, because (good) code doesn\'t write itself.\nThe APK will also be on GitHub, because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.';

  @override
  String get fahJoin => 'Join the Fold';

  @override
  String get fahIconLabel => 'a protein molecule.';

  @override
  String get fahIconHint => 'Activate to open their site.';

  @override
  String get fahIntro1 => 'Join the ';

  @override
  String get fahIntro2 => ' Folding@home team!';

  @override
  String get fahTeamHint => 'Open the YWT folding at home team page';

  @override
  String get fahWhats => 'What\'s ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Open Folding at Home\'s about page';

  @override
  String get fahStats =>
      'Together, we\'ve earned over 400 million points.\nThat puts us in the top 2% of all teams worldwide!';

  @override
  String get csPageTitle => 'Contribute';

  @override
  String get csEveryBit => 'Every bit to us is a byte out of big tech.';

  @override
  String get csTime => 'Time';

  @override
  String get csBecome => ' about becoming a ';

  @override
  String get csGit => 'GitHub contributor';

  @override
  String get csMoney => 'Money';

  @override
  String csOpenLink(Object page) {
    return 'Open a link to YWT\'s $page';
  }

  @override
  String get csPower => 'Power';

  @override
  String get csThanks => 'Many thanks for any and all support!';
}
