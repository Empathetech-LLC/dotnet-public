import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'lang_en.dart' deferred as lang_en;
import 'lang_es.dart' deferred as lang_es;

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
    Locale('es')
  ];

  /// No description provided for @gGitHint.
  ///
  /// In en, this message translates to:
  /// **'GitHub icon, activate to open the page for Empathetic LLC'**
  String get gGitHint;

  /// No description provided for @gLinkedHint.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn icon, activate to open the page for Empathetic LLC'**
  String get gLinkedHint;

  /// No description provided for @gMastodonHint.
  ///
  /// In en, this message translates to:
  /// **'Mastodon icon, activate to open the page for Empathetic LLC'**
  String get gMastodonHint;

  /// No description provided for @gEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Email icon, activate to draft an email to Empathetic LLC'**
  String get gEmailHint;

  /// No description provided for @gFahIconHint.
  ///
  /// In en, this message translates to:
  /// **'Folding at home icon, activate to open their site'**
  String get gFahIconHint;

  /// No description provided for @gAnitaBorgIconHint.
  ///
  /// In en, this message translates to:
  /// **'AnitaB.org icon, activate to open their site'**
  String get gAnitaBorgIconHint;

  /// No description provided for @gCodeDotOrgIconHint.
  ///
  /// In en, this message translates to:
  /// **'code.org icon, activate to open their site'**
  String get gCodeDotOrgIconHint;

  /// No description provided for @gWorldSavvyIconHint.
  ///
  /// In en, this message translates to:
  /// **'World Savvy icon, activate to open their site'**
  String get gWorldSavvyIconHint;

  /// No description provided for @gBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get gBack;

  /// No description provided for @gSettings.
  ///
  /// In en, this message translates to:
  /// **'Go to the settings page'**
  String get gSettings;

  /// No description provided for @gReachOut.
  ///
  /// In en, this message translates to:
  /// **'Reach out'**
  String get gReachOut;

  /// No description provided for @gEFUIHint.
  ///
  /// In en, this message translates to:
  /// **'Empathetic Flutter UI'**
  String get gEFUIHint;

  /// No description provided for @gEFUILinkHint.
  ///
  /// In en, this message translates to:
  /// **'GitHub link to the UI package powering this app'**
  String get gEFUILinkHint;

  /// No description provided for @hsProductsHint.
  ///
  /// In en, this message translates to:
  /// **'Open the products page'**
  String get hsProductsHint;

  /// No description provided for @hsPlanHint.
  ///
  /// In en, this message translates to:
  /// **'Open the plan page'**
  String get hsPlanHint;

  /// No description provided for @hsTeamHint.
  ///
  /// In en, this message translates to:
  /// **'Open the team page'**
  String get hsTeamHint;

  /// No description provided for @hsSupportHint.
  ///
  /// In en, this message translates to:
  /// **'Open the support page'**
  String get hsSupportHint;

  /// No description provided for @hsSlogan.
  ///
  /// In en, this message translates to:
  /// **'Bringing OSS\nTo us'**
  String get hsSlogan;

  /// No description provided for @hsLogoHint.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC logo. Activate to go to the home page.'**
  String get hsLogoHint;

  /// No description provided for @hsVideoSemantics.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC logo animation.'**
  String get hsVideoSemantics;

  /// No description provided for @hsiOSWebVideo.
  ///
  /// In en, this message translates to:
  /// **'Currently, Flutter\'s video player does not work on iOS.\nWe apologize for the boring home page.'**
  String get hsiOSWebVideo;

  /// No description provided for @ssDontCha.
  ///
  /// In en, this message translates to:
  /// **'Don\'t cha?'**
  String get ssDontCha;

  /// No description provided for @ssDontChaHint.
  ///
  /// In en, this message translates to:
  /// **'GitHub link to the source code for this screen'**
  String get ssDontChaHint;

  /// No description provided for @ssDontChaWish.
  ///
  /// In en, this message translates to:
  /// **'Don\'t cha wish your frontend was fun like '**
  String get ssDontChaWish;

  /// No description provided for @ssMeQ.
  ///
  /// In en, this message translates to:
  /// **'me?'**
  String get ssMeQ;

  /// No description provided for @csReversedNote.
  ///
  /// In en, this message translates to:
  /// **'NOTE: The top bar\'s theme colors are (intentionally) reversed!'**
  String get csReversedNote;

  /// No description provided for @psPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get psPageTitle;

  /// No description provided for @psEFUISlogan.
  ///
  /// In en, this message translates to:
  /// **'Build apps for anyone'**
  String get psEFUISlogan;

  /// No description provided for @psEFUIDescription.
  ///
  /// In en, this message translates to:
  /// **'EFUI is an open source Flutter package that creates a holistic foundation for digital accessibility.\nEFUI provides a starter kit for every pillar of digital accessibility:'**
  String get psEFUIDescription;

  /// No description provided for @psPlatform.
  ///
  /// In en, this message translates to:
  /// **'\nPlatform availability'**
  String get psPlatform;

  /// No description provided for @psPlatformContent.
  ///
  /// In en, this message translates to:
  /// **'EFUI builds fully cross platform apps; Android, iOS, Linux, MacOS, Windows and Web!'**
  String get psPlatformContent;

  /// No description provided for @psScreen.
  ///
  /// In en, this message translates to:
  /// **'\nScreen reader compliance'**
  String get psScreen;

  /// No description provided for @psScreenContent.
  ///
  /// In en, this message translates to:
  /// **'Everything within EFUI has been manually verified with '**
  String get psScreenContent;

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
  /// **'\nUser customization'**
  String get psCustom;

  /// No description provided for @psCustomContent.
  ///
  /// In en, this message translates to:
  /// **'The only way to be truly accessible for ALL customers is to empower them with the freedom of choice.\nAnd that\'s exactly what EFUI does; it enables every aspect of an app\'s theme to be controlled by the user.'**
  String get psCustomContent;

  /// No description provided for @psInternational.
  ///
  /// In en, this message translates to:
  /// **'\nInternationalization'**
  String get psInternational;

  /// No description provided for @psInternationalContent.
  ///
  /// In en, this message translates to:
  /// **'All of EFUI\'s external text has been translated to Spanish. With this, EFUI provides well organized infrastructure for unlimited future translations.'**
  String get psInternationalContent;

  /// No description provided for @psResponsive.
  ///
  /// In en, this message translates to:
  /// **'\nResponsive design'**
  String get psResponsive;

  /// No description provided for @psResponsiveContent.
  ///
  /// In en, this message translates to:
  /// **'EFUI is full of tools to aid in building apps that elegantly respond to screen space. To see it in action, just mess around with the app window you\'re using right now!'**
  String get psResponsiveContent;

  /// No description provided for @psEFUITagLine.
  ///
  /// In en, this message translates to:
  /// **'When built with EFUI, your apps can truly reach any audience.\nLet\'s make the internet a more accessible place together!'**
  String get psEFUITagLine;

  /// No description provided for @psConsult.
  ///
  /// In en, this message translates to:
  /// **' for consultation and contracting'**
  String get psConsult;

  /// No description provided for @plsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get plsPageTitle;

  /// No description provided for @plsThen.
  ///
  /// In en, this message translates to:
  /// **'Then'**
  String get plsThen;

  /// No description provided for @plsBefore.
  ///
  /// In en, this message translates to:
  /// **'Before this'**
  String get plsBefore;

  /// No description provided for @plsIDProblem.
  ///
  /// In en, this message translates to:
  /// **'Identify the problem'**
  String get plsIDProblem;

  /// No description provided for @plsIDProblemContent.
  ///
  /// In en, this message translates to:
  /// **'Through their actions, big tech have shown they not only prioritize profits over our wellbeing, they\'re willing to sacrifice it for maximal profits.'**
  String get plsIDProblemContent;

  /// No description provided for @plsBeSolution.
  ///
  /// In en, this message translates to:
  /// **'Be a part of the solution'**
  String get plsBeSolution;

  /// No description provided for @plsBeSolutionContent.
  ///
  /// In en, this message translates to:
  /// **'Fortunately, there are amazing people all over the world working together towards a better narrative. One where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nSoftware is considered open source when the code is freely available for anyone to view (always), modify (often), and/or distribute (sometimes). It\'s software built by folx who recognize shared problems require shared solutions. Collaborative development creates better human experiences and allows for unlimited innovation.\n\nSo, how do we make the switch from closed to open source? It takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.'**
  String get plsBeSolutionContent;

  /// No description provided for @plsProvideValue.
  ///
  /// In en, this message translates to:
  /// **'Provide value'**
  String get plsProvideValue;

  /// No description provided for @plsProvideValueContent1.
  ///
  /// In en, this message translates to:
  /// **'Our mission is to re-balance the power in tech by making open source software more accessible.\n\nWe will build bridges between the open source community and those without enough time, energy, or prior knowledge.\nWe will build accessible, cross-platform applications for easily managing an ecosystem of open source tools.\n\nBut, you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get plsProvideValueContent1;

  /// No description provided for @plsProvideValueContent2.
  ///
  /// In en, this message translates to:
  /// **' exists. We take pride in meeting words with actions, and have pro-actively made our UI open source.'**
  String get plsProvideValueContent2;

  /// No description provided for @plsDoItRight.
  ///
  /// In en, this message translates to:
  /// **'Do it right'**
  String get plsDoItRight;

  /// No description provided for @plsDoItRightContent1.
  ///
  /// In en, this message translates to:
  /// **'If the service providers remember to stay Empathetech, '**
  String get plsDoItRightContent1;

  /// No description provided for @plsDoItRightContent1Fix.
  ///
  /// In en, this message translates to:
  /// **'If the service providers remember to stay Empathetic, '**
  String get plsDoItRightContent1Fix;

  /// No description provided for @plsSaaSHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Wikipedia article for software as a service'**
  String get plsSaaSHint;

  /// No description provided for @plsDoItRightContent2.
  ///
  /// In en, this message translates to:
  /// **' can benefit everyone.\n\nFor starters: a closed source ecosystem of open source software would be paradoxical. So, while official licensing commitments will come with the official launch, we aim to release under a '**
  String get plsDoItRightContent2;

  /// No description provided for @plsDualLicense.
  ///
  /// In en, this message translates to:
  /// **'dual license'**
  String get plsDualLicense;

  /// No description provided for @plsDualLicenseHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Wikipedia article for Multi-licensing'**
  String get plsDualLicenseHint;

  /// No description provided for @plsDoItRightContent3.
  ///
  /// In en, this message translates to:
  /// **'. Like we said: a shared problem requires a shared solution. One small team can\'t '**
  String get plsDoItRightContent3;

  /// No description provided for @plsBigTechHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Wikipedia article for Big Tech'**
  String get plsBigTechHint;

  /// No description provided for @plsDoItRightContent4.
  ///
  /// In en, this message translates to:
  /// **' the world alone.\n\nFor the closed source version(s), we are fully ready to commit that...\n\n\t\t1. All Empathetech made SaaS products will have a lifetime option.\n\t\t2. We find selling personal information to be immoral; we will never auction your digital identity. That\'s why we charge for our services.\n\nAlso, let\'s briefly return to the bridges metaphor. A bridge without a place to go, or anyone that wants to use it, isn\'t a bridge; it\'s a waste of resources. That\'s why we\'re ready to make another commitment:\n\nRegardless of official structure (currently LLC) Empathetech will operate as a not-for-profit, mission based entity. Meaning...\n\n\t\t100% of net profit derived from our open source ecosystem app(s) will be committed back to the projects they are built upon\n\t\t100% of net profit derived from all other sources (consulting, donations, merch, etc.) will be committed to promoting global equity in tech education'**
  String get plsDoItRightContent4;

  /// No description provided for @plsDoItRightContent4Fix.
  ///
  /// In en, this message translates to:
  /// **' the world alone.\n\nFor the closed source version(s), we are fully ready to commit that...\n\n\t\t1. All Empathetic made SaaS products will have be a lifetime option.\n\t\t2. We find selling personal information to be immoral; we will never auction your digital identity. That\'s why we charge for our services.\n\nAlso, let\'s briefly return to the bridges metaphor. A bridge without a place to go, or anyone that wants to use it, isn\'t a bridge; it\'s a waste of resources. That\'s why we\'re ready to make another commitment:\n\nRegardless of official structure (currently LLC) Empathetic will operate as a not-for-profit, mission based entity. Meaning...\n\n\t\t100% of net profit derived from our open source ecosystem app(s) will be committed back to the projects they are built upon\n\t\t100% of net profit derived from all other sources (consulting, donations, merch, etc.) will be committed to promoting global equity in tech education'**
  String get plsDoItRightContent4Fix;

  /// No description provided for @plsDoItRightContent5.
  ///
  /// In en, this message translates to:
  /// **'\n\nCheckout the '**
  String get plsDoItRightContent5;

  /// No description provided for @fpsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Financial plan'**
  String get fpsPageTitle;

  /// No description provided for @fpsPageHint.
  ///
  /// In en, this message translates to:
  /// **'Open the financial plan page'**
  String get fpsPageHint;

  /// No description provided for @fpsEventual.
  ///
  /// In en, this message translates to:
  /// **'eventual'**
  String get fpsEventual;

  /// No description provided for @fpsRaised.
  ///
  /// In en, this message translates to:
  /// **'{income} of {goal} raised'**
  String fpsRaised(Object goal, Object income);

  /// No description provided for @fpsYear.
  ///
  /// In en, this message translates to:
  /// **'for 2023'**
  String get fpsYear;

  /// No description provided for @fpsSplit.
  ///
  /// In en, this message translates to:
  /// **'The {profit} profit will be evenly split amongst...'**
  String fpsSplit(Object profit);

  /// No description provided for @fpsAnitaMission.
  ///
  /// In en, this message translates to:
  /// **'AnitaB.org envisions a future where the people who imagine and build technology mirror the people and societies for whom they build it. They connect, inspire, and guide women in computing, and organizations that view technology innovation as a strategic imperative.'**
  String get fpsAnitaMission;

  /// No description provided for @fpsCodeMission.
  ///
  /// In en, this message translates to:
  /// **'Code.org is an education innovation nonprofit dedicated to the vision that every student in every school has the opportunity to learn computer science as part of their core K-12 education.'**
  String get fpsCodeMission;

  /// No description provided for @fpsSavvyMission.
  ///
  /// In en, this message translates to:
  /// **'World Savvy collaborates with educators and school and district leaders to build future-ready learning environments that are inclusive, adaptive, and prepare students to thrive today and in the future.'**
  String get fpsSavvyMission;

  /// No description provided for @fpsAnitaCNavHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to AnitaB.org on Charity Navigator'**
  String get fpsAnitaCNavHint;

  /// No description provided for @fpsCodeCNavHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to code.org on Charity Navigator'**
  String get fpsCodeCNavHint;

  /// No description provided for @fpsSavvyCNavHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to World Savvy on Charity Navigator'**
  String get fpsSavvyCNavHint;

  /// No description provided for @fpsCheck.
  ///
  /// In en, this message translates to:
  /// **'Check our math'**
  String get fpsCheck;

  /// No description provided for @fpsCheckHint.
  ///
  /// In en, this message translates to:
  /// **'Check our math; open a GitHub link to the source code for this screen'**
  String get fpsCheckHint;

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
  /// **'A picture of the founder of Empathetic LLC'**
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

  /// No description provided for @tsGALinkHint.
  ///
  /// In en, this message translates to:
  /// **'Graphic Alert\'s Fiverr page'**
  String get tsGALinkHint;

  /// No description provided for @tsGADescription.
  ///
  /// In en, this message translates to:
  /// **'Did the After Effects work for Empathetech LLC\'s logo animation'**
  String get tsGADescription;

  /// No description provided for @tsGADescriptionFix.
  ///
  /// In en, this message translates to:
  /// **'Did the After Effects work for the Empathetic LLC logo animation'**
  String get tsGADescriptionFix;

  /// No description provided for @spsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get spsPageTitle;

  /// No description provided for @spsThanks.
  ///
  /// In en, this message translates to:
  /// **'Many thanks for any and all support!'**
  String get spsThanks;

  /// No description provided for @spsGive.
  ///
  /// In en, this message translates to:
  /// **'Would you like to give...'**
  String get spsGive;

  /// No description provided for @spsTimeQ.
  ///
  /// In en, this message translates to:
  /// **'Time?'**
  String get spsTimeQ;

  /// No description provided for @spsBecome.
  ///
  /// In en, this message translates to:
  /// **' about becoming a '**
  String get spsBecome;

  /// No description provided for @spsGit.
  ///
  /// In en, this message translates to:
  /// **'GitHub contributor'**
  String get spsGit;

  /// No description provided for @spsMoneyQ.
  ///
  /// In en, this message translates to:
  /// **'Money?'**
  String get spsMoneyQ;

  /// No description provided for @spsPowerQ.
  ///
  /// In en, this message translates to:
  /// **'Power?'**
  String get spsPowerQ;

  /// No description provided for @fahJoin.
  ///
  /// In en, this message translates to:
  /// **'Join the Fold!'**
  String get fahJoin;

  /// No description provided for @fahIntro.
  ///
  /// In en, this message translates to:
  /// **'Empathetech has a Folding@home '**
  String get fahIntro;

  /// No description provided for @fahIntroFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic has a Folding@home '**
  String get fahIntroFix;

  /// No description provided for @fahTeamHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Empathetic LLC folding at home team page'**
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
  /// **'Together, we\'ve earned over 150 million points!\nThat puts Empathetech in the top 2% of all teams worldwide!'**
  String get fahStats;

  /// No description provided for @fahStatsFix.
  ///
  /// In en, this message translates to:
  /// **'Together, we\'ve earned over 150 million points!\nThat puts Empathetic in the top 2% of all teams worldwide!'**
  String get fahStatsFix;
}

class _LangDelegate extends LocalizationsDelegate<Lang> {
  const _LangDelegate();

  @override
  Future<Lang> load(Locale locale) {
    return lookupLang(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

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
  }

  throw FlutterError(
      'Lang.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
