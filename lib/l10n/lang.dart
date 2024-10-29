import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'lang_en.dart' deferred as lang_en;
import 'lang_es.dart' deferred as lang_es;
import 'lang_fr.dart' deferred as lang_fr;

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Lang
/// returned by `Lang.of(context)`.
///
/// Applications need to include `Lang.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/lang.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Lang.localizationsDelegates,
///   supportedLocales: Lang.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Lang.supportedLocales
/// property.
abstract class Lang {
  Lang(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Lang? of(BuildContext context) {
    return Localizations.of<Lang>(context, Lang);
  }

  static const LocalizationsDelegate<Lang> delegate = _LangDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr')
  ];

  /// No description provided for @gLogoHint.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC logo: a two dimensional hourglass. Activate to go to the home page'**
  String get gLogoHint;

  /// No description provided for @gHomeHint.
  ///
  /// In en, this message translates to:
  /// **'Open the home page'**
  String get gHomeHint;

  /// No description provided for @gProductsHint.
  ///
  /// In en, this message translates to:
  /// **'Open the products page'**
  String get gProductsHint;

  /// No description provided for @gMissionHint.
  ///
  /// In en, this message translates to:
  /// **'Open the mission page'**
  String get gMissionHint;

  /// No description provided for @gTeamHint.
  ///
  /// In en, this message translates to:
  /// **'Open the team page'**
  String get gTeamHint;

  /// No description provided for @gContributeHint.
  ///
  /// In en, this message translates to:
  /// **'Open the contribute page'**
  String get gContributeHint;

  /// No description provided for @gShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get gShare;

  /// No description provided for @gEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get gEmail;

  /// No description provided for @gEmailTo.
  ///
  /// In en, this message translates to:
  /// **'Email {recipient}'**
  String gEmailTo(Object recipient);

  /// No description provided for @gNewsletter.
  ///
  /// In en, this message translates to:
  /// **'Newsletter'**
  String get gNewsletter;

  /// No description provided for @gSettingsHint.
  ///
  /// In en, this message translates to:
  /// **'Open the settings page'**
  String get gSettingsHint;

  /// No description provided for @gReachOut.
  ///
  /// In en, this message translates to:
  /// **'Reach out'**
  String get gReachOut;

  /// No description provided for @gEmpathetechGitHint.
  ///
  /// In en, this message translates to:
  /// **'Open the GitHub page for Empathetic LLC'**
  String get gEmpathetechGitHint;

  /// No description provided for @gDontChaWish.
  ///
  /// In en, this message translates to:
  /// **'Don\'t cha wish your frontend was fun '**
  String get gDontChaWish;

  /// No description provided for @gMeQ.
  ///
  /// In en, this message translates to:
  /// **'like me?'**
  String get gMeQ;

  /// No description provided for @gDontCha.
  ///
  /// In en, this message translates to:
  /// **'Don\'t cha?'**
  String get gDontCha;

  /// No description provided for @gDontChaHint.
  ///
  /// In en, this message translates to:
  /// **'Open the GitHub page for this screen\'s source code'**
  String get gDontChaHint;

  /// No description provided for @gFahIconHint.
  ///
  /// In en, this message translates to:
  /// **'Folding at home logo: a protein molecule. Activate to open their site'**
  String get gFahIconHint;

  /// No description provided for @gFiverrPage.
  ///
  /// In en, this message translates to:
  /// **'Open {user}\'s Fiverr page'**
  String gFiverrPage(Object user);

  /// No description provided for @hsSlogan.
  ///
  /// In en, this message translates to:
  /// **'Let\'s build a better world together\nbit x bit'**
  String get hsSlogan;

  /// No description provided for @hsSloganFix.
  ///
  /// In en, this message translates to:
  /// **'Let\'s build a better world together\nbit by bit'**
  String get hsSloganFix;

  /// No description provided for @hsVideoHint.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo'**
  String get hsVideoHint;

  /// No description provided for @hsPeople.
  ///
  /// In en, this message translates to:
  /// **'People aren\'t products.'**
  String get hsPeople;

  /// No description provided for @hsWell.
  ///
  /// In en, this message translates to:
  /// **'Well, they shouldn\'t be.'**
  String get hsWell;

  /// No description provided for @hsReality.
  ///
  /// In en, this message translates to:
  /// **'The unfortunate reality is our identities, our '**
  String get hsReality;

  /// No description provided for @hsData.
  ///
  /// In en, this message translates to:
  /// **'data'**
  String get hsData;

  /// No description provided for @hsGold.
  ///
  /// In en, this message translates to:
  /// **', is big tech\'s latest gold rush.'**
  String get hsGold;

  /// No description provided for @hsRush.
  ///
  /// In en, this message translates to:
  /// **'And big tech sure does love to rush.\nThanks to their never-ending sprint, the dystopian sci-fi movies are coming true far too quickly.'**
  String get hsRush;

  /// No description provided for @hsSlow.
  ///
  /// In en, this message translates to:
  /// **'It\'s time to slow down.\nIt\'s time we had ownership of our digital selves.\nIt\'s time for a better '**
  String get hsSlow;

  /// No description provided for @hsPlan.
  ///
  /// In en, this message translates to:
  /// **'plan.'**
  String get hsPlan;

  /// No description provided for @psPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get psPageTitle;

  /// No description provided for @psCreate.
  ///
  /// In en, this message translates to:
  /// **'For creating'**
  String get psCreate;

  /// No description provided for @psUse.
  ///
  /// In en, this message translates to:
  /// **'For using'**
  String get psUse;

  /// No description provided for @psEFUISlogan.
  ///
  /// In en, this message translates to:
  /// **'Build apps for anyone'**
  String get psEFUISlogan;

  /// No description provided for @psLike.
  ///
  /// In en, this message translates to:
  /// **'Like users who need...'**
  String get psLike;

  /// No description provided for @psAccessible.
  ///
  /// In en, this message translates to:
  /// **'Accessible controls'**
  String get psAccessible;

  /// No description provided for @psZeroStrain.
  ///
  /// In en, this message translates to:
  /// **'zero eye strain'**
  String get psZeroStrain;

  /// No description provided for @psEverything.
  ///
  /// In en, this message translates to:
  /// **'everything in-between'**
  String get psEverything;

  /// No description provided for @psRandom.
  ///
  /// In en, this message translates to:
  /// **'Random config applied.'**
  String get psRandom;

  /// No description provided for @psEFUIDescription.
  ///
  /// In en, this message translates to:
  /// **'EFUI is a starter kit for building truly accessible apps.\nEFUI handles every aspect of digital accessibility...'**
  String get psEFUIDescription;

  /// No description provided for @psPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform availability'**
  String get psPlatform;

  /// No description provided for @psPlatformContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support users on all platforms.\nYou can use EFUI to create on Android, iOS, Linux, MacOS, Windows and Web!'**
  String get psPlatformContent;

  /// No description provided for @psPlatformContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support users on all platforms.\nYou can use EFUI to create on Android, iOS, Linux, MacOS, Windows and Web!'**
  String get psPlatformContentFix;

  /// No description provided for @psResponsive.
  ///
  /// In en, this message translates to:
  /// **'Responsive design'**
  String get psResponsive;

  /// No description provided for @psResponsiveContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support users on any screen.\nTo see it in action, play with the window you\'re using right now!'**
  String get psResponsiveContent;

  /// No description provided for @psResponsiveContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support users on any screen.\nTo see it in action, play with the window you\'re using right now!'**
  String get psResponsiveContentFix;

  /// No description provided for @psScreen.
  ///
  /// In en, this message translates to:
  /// **'Screen reader support'**
  String get psScreen;

  /// No description provided for @psScreenContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support users who need '**
  String get psScreenContent;

  /// No description provided for @psScreenContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support users who need '**
  String get psScreenContentFix;

  /// No description provided for @psTalkBackHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to TalkBack documentation'**
  String get psTalkBackHint;

  /// No description provided for @psAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get psAnd;

  /// No description provided for @psVoiceOverHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to VoiceOver documentation'**
  String get psVoiceOverHint;

  /// No description provided for @psCustom.
  ///
  /// In en, this message translates to:
  /// **'User customization'**
  String get psCustom;

  /// No description provided for @psCustomContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support all users by empowering them with the freedom of choice.\nEFUI exposes every aspect of an app\'s theme to be controlled by the user.\nTo see it in action, click the settings cog on the bottom of your screen!'**
  String get psCustomContent;

  /// No description provided for @psCustomContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support all users by empowering them with the freedom of choice.\nEFUI exposes every aspect of an app\'s theme to be controlled by the user.\nTo see it in action, click the settings cog on the bottom of your screen!'**
  String get psCustomContentFix;

  /// No description provided for @psInternational.
  ///
  /// In en, this message translates to:
  /// **'Internationalization'**
  String get psInternational;

  /// No description provided for @psInternationalContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support users where they are.\nCurrently, EFUI supports English, Spanish, French.\nAnd, infrastructure for unlimited future translations.'**
  String get psInternationalContent;

  /// No description provided for @psInternationalContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support users where they are.\nCurrently, EFUI supports English, Spanish, French.\nAnd, infrastructure for unlimited future translations.'**
  String get psInternationalContentFix;

  /// No description provided for @psLive.
  ///
  /// In en, this message translates to:
  /// **'See it live'**
  String get psLive;

  /// No description provided for @psLiveHint.
  ///
  /// In en, this message translates to:
  /// **'The icon for Open UI: a settings sandbox. Open a link to Open UI on {platform}'**
  String psLiveHint(Object platform);

  /// No description provided for @psEFUITagLine.
  ///
  /// In en, this message translates to:
  /// **'When built with EFUI, your apps can reach any audience.\n'**
  String get psEFUITagLine;

  /// No description provided for @psConsult.
  ///
  /// In en, this message translates to:
  /// **' for consultation and contracting.'**
  String get psConsult;

  /// No description provided for @psLearnMore.
  ///
  /// In en, this message translates to:
  /// **' to learn more.'**
  String get psLearnMore;

  /// No description provided for @psComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon...'**
  String get psComingSoon;

  /// No description provided for @psSignalHint.
  ///
  /// In en, this message translates to:
  /// **'The icon for Smoke Signal. Open a link to the development repo.'**
  String get psSignalHint;

  /// No description provided for @psSignalPreview1.
  ///
  /// In en, this message translates to:
  /// **'Empathetech\'s next app, '**
  String get psSignalPreview1;

  /// No description provided for @psSignalPreview1Fix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic\'s next app, '**
  String get psSignalPreview1Fix;

  /// No description provided for @psSignalPreview2.
  ///
  /// In en, this message translates to:
  /// **', is in development.\nSmoke Signal is a social media app designed to keep us off our screens.'**
  String get psSignalPreview2;

  /// No description provided for @psSignalPreview3.
  ///
  /// In en, this message translates to:
  /// **'Smoke Signal will also be fully self hosted, thanks to '**
  String get psSignalPreview3;

  /// No description provided for @psAPHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to Activity Pub documentation'**
  String get psAPHint;

  /// No description provided for @msPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Mission'**
  String get msPageTitle;

  /// No description provided for @msSoWe.
  ///
  /// In en, this message translates to:
  /// **'So we'**
  String get msSoWe;

  /// No description provided for @msBy.
  ///
  /// In en, this message translates to:
  /// **'By'**
  String get msBy;

  /// No description provided for @msFirst.
  ///
  /// In en, this message translates to:
  /// **'By first'**
  String get msFirst;

  /// No description provided for @msIDProblem.
  ///
  /// In en, this message translates to:
  /// **'Identifying the problem'**
  String get msIDProblem;

  /// No description provided for @msIDProblemContent.
  ///
  /// In en, this message translates to:
  /// **'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.'**
  String get msIDProblemContent;

  /// No description provided for @msFindSolution.
  ///
  /// In en, this message translates to:
  /// **'Find a solution'**
  String get msFindSolution;

  /// No description provided for @msFindSolutionContent.
  ///
  /// In en, this message translates to:
  /// **'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folx who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self hosting software.\n\nSelf hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.'**
  String get msFindSolutionContent;

  /// No description provided for @msProvideValue.
  ///
  /// In en, this message translates to:
  /// **'Doing the work'**
  String get msProvideValue;

  /// No description provided for @msProvideValueContent1.
  ///
  /// In en, this message translates to:
  /// **'Empathetech\'s mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get msProvideValueContent1;

  /// No description provided for @msProvideValueContent1Fix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic\'s mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get msProvideValueContent1Fix;

  /// No description provided for @msProvideValueContent2.
  ///
  /// In en, this message translates to:
  /// **' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.'**
  String get msProvideValueContent2;

  /// No description provided for @msProvideValueContent2Fix.
  ///
  /// In en, this message translates to:
  /// **' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.'**
  String get msProvideValueContent2Fix;

  /// No description provided for @tsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get tsPageTitle;

  /// No description provided for @tsCore.
  ///
  /// In en, this message translates to:
  /// **'Core'**
  String get tsCore;

  /// No description provided for @tsTheFounderImageHint.
  ///
  /// In en, this message translates to:
  /// **'A two dimensional profile of Michael Waldron. Activate to send him an email.'**
  String get tsTheFounderImageHint;

  /// No description provided for @tsTheFounder.
  ///
  /// In en, this message translates to:
  /// **'The Founder'**
  String get tsTheFounder;

  /// No description provided for @tsCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get tsCommunity;

  /// No description provided for @tsFreelance.
  ///
  /// In en, this message translates to:
  /// **'Freelance'**
  String get tsFreelance;

  /// No description provided for @tsSpanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish translator'**
  String get tsSpanish;

  /// No description provided for @tsFrench.
  ///
  /// In en, this message translates to:
  /// **'French translator'**
  String get tsFrench;

  /// No description provided for @csPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Contribute'**
  String get csPageTitle;

  /// No description provided for @csThanks.
  ///
  /// In en, this message translates to:
  /// **'Many thanks for any and all support!'**
  String get csThanks;

  /// No description provided for @csEveryBit.
  ///
  /// In en, this message translates to:
  /// **'Every bit you give to Empathetech takes a byte out of big tech.'**
  String get csEveryBit;

  /// No description provided for @csEveryBitFix.
  ///
  /// In en, this message translates to:
  /// **'Every bit you give to Empathetic takes a byte out of big tech.'**
  String get csEveryBitFix;

  /// No description provided for @csGive.
  ///
  /// In en, this message translates to:
  /// **'Would you like to give...'**
  String get csGive;

  /// No description provided for @csTimeQ.
  ///
  /// In en, this message translates to:
  /// **'Time?'**
  String get csTimeQ;

  /// No description provided for @csBecome.
  ///
  /// In en, this message translates to:
  /// **' about becoming a '**
  String get csBecome;

  /// No description provided for @csGit.
  ///
  /// In en, this message translates to:
  /// **'GitHub contributor'**
  String get csGit;

  /// No description provided for @csMoneyQ.
  ///
  /// In en, this message translates to:
  /// **'Money?'**
  String get csMoneyQ;

  /// No description provided for @csPowerQ.
  ///
  /// In en, this message translates to:
  /// **'Power?'**
  String get csPowerQ;

  /// No description provided for @fahJoin.
  ///
  /// In en, this message translates to:
  /// **'Join the Fold'**
  String get fahJoin;

  /// No description provided for @fahIntro1.
  ///
  /// In en, this message translates to:
  /// **'Join the '**
  String get fahIntro1;

  /// No description provided for @fahIntro2.
  ///
  /// In en, this message translates to:
  /// **' Folding@home team!'**
  String get fahIntro2;

  /// No description provided for @fahTeamHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Empathetic folding at home team page'**
  String get fahTeamHint;

  /// No description provided for @fahWhatQ.
  ///
  /// In en, this message translates to:
  /// **'What\'s Folding@home?'**
  String get fahWhatQ;

  /// No description provided for @fahWhatQHint.
  ///
  /// In en, this message translates to:
  /// **'Open Folding at Home\'s about page'**
  String get fahWhatQHint;

  /// No description provided for @fahStats.
  ///
  /// In en, this message translates to:
  /// **'Together, we\'ve earned over 350 million points.\nThat puts us in the top 2% of all teams worldwide!'**
  String get fahStats;
}

class _LangDelegate extends LocalizationsDelegate<Lang> {
  const _LangDelegate();

  @override
  Future<Lang> load(Locale locale) {
    return lookupLang(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_LangDelegate old) => false;
}

Future<Lang> lookupLang(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return lang_en.loadLibrary().then((dynamic _) => lang_en.LangEn());
    case 'es':
      return lang_es.loadLibrary().then((dynamic _) => lang_es.LangEs());
    case 'fr':
      return lang_fr.loadLibrary().then((dynamic _) => lang_fr.LangFr());
  }

  throw FlutterError(
      'Lang.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
