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

  /// No description provided for @gPlanHint.
  ///
  /// In en, this message translates to:
  /// **'Open the plan page'**
  String get gPlanHint;

  /// No description provided for @gTeamHint.
  ///
  /// In en, this message translates to:
  /// **'Open the team page'**
  String get gTeamHint;

  /// No description provided for @gSupportHint.
  ///
  /// In en, this message translates to:
  /// **'Open the support page'**
  String get gSupportHint;

  /// No description provided for @gSocials.
  ///
  /// In en, this message translates to:
  /// **'Socials'**
  String get gSocials;

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

  /// No description provided for @gAnitaBorgIconHint.
  ///
  /// In en, this message translates to:
  /// **'AnitaB.org logo: a rainbow prism. Activate to open their site'**
  String get gAnitaBorgIconHint;

  /// No description provided for @gCodeDotOrgIconHint.
  ///
  /// In en, this message translates to:
  /// **'code.org logo: keyboard keys spelling the word code. Activate to open their site'**
  String get gCodeDotOrgIconHint;

  /// No description provided for @gWorldSavvyIconHint.
  ///
  /// In en, this message translates to:
  /// **'World Savvy logo: a drawing of the globe in pencil style. Activate to open their site'**
  String get gWorldSavvyIconHint;

  /// No description provided for @gFiverrPage.
  ///
  /// In en, this message translates to:
  /// **'Open {user}\'s Fiverr page'**
  String gFiverrPage(Object user);

  /// No description provided for @hsSlogan.
  ///
  /// In en, this message translates to:
  /// **'Build a better world\nbit x bit'**
  String get hsSlogan;

  /// No description provided for @hsSloganFix.
  ///
  /// In en, this message translates to:
  /// **'Build a better world\nbit by bit'**
  String get hsSloganFix;

  /// No description provided for @hsVideoHint.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo'**
  String get hsVideoHint;

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

  /// No description provided for @psEFUIDescription1.
  ///
  /// In en, this message translates to:
  /// **'EFUI is a starter kit for building truly accessible '**
  String get psEFUIDescription1;

  /// No description provided for @psEFUIDescription2.
  ///
  /// In en, this message translates to:
  /// **' apps.\nEFUI handles every aspect of digital accessibility...'**
  String get psEFUIDescription2;

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
  /// **'When built with EFUI, your apps can reach any audience.\nLet\'s build a better internet together!'**
  String get psEFUITagLine;

  /// No description provided for @psConsult.
  ///
  /// In en, this message translates to:
  /// **' for consultation and contracting.'**
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
  /// **'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.'**
  String get plsIDProblemContent;

  /// No description provided for @plsBeSolution.
  ///
  /// In en, this message translates to:
  /// **'Be a part of the solution'**
  String get plsBeSolution;

  /// No description provided for @plsBeSolutionContent.
  ///
  /// In en, this message translates to:
  /// **'Fortunately, there are amazing technologists all over the world working together towards a better narrative. One where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed. It\'s software with nothing to hide, built by folx who recognize shared problems require shared solutions.\n\nSo, how does one make the switch from profit first (closed source) to open source? It takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.'**
  String get plsBeSolutionContent;

  /// No description provided for @plsProvideValue.
  ///
  /// In en, this message translates to:
  /// **'Provide value'**
  String get plsProvideValue;

  /// No description provided for @plsProvideValueContent1.
  ///
  /// In en, this message translates to:
  /// **'Our mission is to re-balance the power in tech by making open source software more accessible.\n\nWe will build accessible, cross-platform applications for easily managing an ecosystem of open source tools.\n\nWe will build bridges between the open source community and those without enough time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get plsProvideValueContent1;

  /// No description provided for @plsProvideValueContent2.
  ///
  /// In en, this message translates to:
  /// **' exists. We take pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.'**
  String get plsProvideValueContent2;

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

  /// No description provided for @fpsGoal0.
  ///
  /// In en, this message translates to:
  /// **'Cover expenses'**
  String get fpsGoal0;

  /// No description provided for @fpsGoal1.
  ///
  /// In en, this message translates to:
  /// **'Pay minimum wage'**
  String get fpsGoal1;

  /// No description provided for @fpsGoal2.
  ///
  /// In en, this message translates to:
  /// **'Pay a survivable wage'**
  String get fpsGoal2;

  /// No description provided for @fpsGoal3.
  ///
  /// In en, this message translates to:
  /// **'Pay a livable wage'**
  String get fpsGoal3;

  /// No description provided for @fpsGoal4.
  ///
  /// In en, this message translates to:
  /// **'Pay a comfortable wage'**
  String get fpsGoal4;

  /// No description provided for @fpsRaised.
  ///
  /// In en, this message translates to:
  /// **'{income} of {goal} raised'**
  String fpsRaised(Object goal, Object income);

  /// No description provided for @fpsSplit.
  ///
  /// In en, this message translates to:
  /// **'{split} will be donated to...'**
  String fpsSplit(Object split);

  /// No description provided for @fpsEventual.
  ///
  /// In en, this message translates to:
  /// **'Any future profits will be shared with...'**
  String get fpsEventual;

  /// No description provided for @fpsCheck.
  ///
  /// In en, this message translates to:
  /// **'Check our math'**
  String get fpsCheck;

  /// No description provided for @fpsCheckHint.
  ///
  /// In en, this message translates to:
  /// **'Open a GitHub link to the source code for this screen'**
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
  /// **'A two dimensional profile of Michael Waldron'**
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
