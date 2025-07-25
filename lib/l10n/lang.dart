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
    Locale('en', 'US'),
    Locale('es'),
    Locale('fr')
  ];

  /// No description provided for @gEmpathLogoLabel.
  ///
  /// In en, this message translates to:
  /// **'a two dimensional hourglass.'**
  String get gEmpathLogoLabel;

  /// No description provided for @gEmpathLogoHint.
  ///
  /// In en, this message translates to:
  /// **'Activate to go to the home page.'**
  String get gEmpathLogoHint;

  /// No description provided for @gLearn.
  ///
  /// In en, this message translates to:
  /// **'Learn about {name}'**
  String gLearn(Object name);

  /// No description provided for @gHomeHint.
  ///
  /// In en, this message translates to:
  /// **'Open the home page'**
  String get gHomeHint;

  /// No description provided for @gProductsHint.
  ///
  /// In en, this message translates to:
  /// **'Open a product page'**
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

  /// No description provided for @gLogoLabel.
  ///
  /// In en, this message translates to:
  /// **'{thing} logo: '**
  String gLogoLabel(Object thing);

  /// No description provided for @gIconLabel.
  ///
  /// In en, this message translates to:
  /// **'The icon for {app}: '**
  String gIconLabel(Object app);

  /// No description provided for @gDownloadHint.
  ///
  /// In en, this message translates to:
  /// **'Download {app} for {platform}.'**
  String gDownloadHint(Object app, Object platform);

  /// No description provided for @gRepoHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to the development repo.'**
  String get gRepoHint;

  /// No description provided for @gEmpathetechGitHint.
  ///
  /// In en, this message translates to:
  /// **'Open the GitHub page for Empathetic LLC'**
  String get gEmpathetechGitHint;

  /// No description provided for @gReachOut.
  ///
  /// In en, this message translates to:
  /// **'Reach out'**
  String get gReachOut;

  /// No description provided for @gFiverrPage.
  ///
  /// In en, this message translates to:
  /// **'Open {user}\'s Fiverr page'**
  String gFiverrPage(Object user);

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

  /// No description provided for @hsVideoLabel.
  ///
  /// In en, this message translates to:
  /// **'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo'**
  String get hsVideoLabel;

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
  /// **'The Empathetech mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get msProvideValueContent1;

  /// No description provided for @msProvideValueContent1Fix.
  ///
  /// In en, this message translates to:
  /// **'The Empathetic mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
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

  /// No description provided for @psPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get psPageTitle;

  /// No description provided for @psCreator.
  ///
  /// In en, this message translates to:
  /// **'For creating'**
  String get psCreator;

  /// No description provided for @psUser.
  ///
  /// In en, this message translates to:
  /// **'For using'**
  String get psUser;

  /// No description provided for @psOpenUISlogan.
  ///
  /// In en, this message translates to:
  /// **'Build apps for anyone'**
  String get psOpenUISlogan;

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

  /// No description provided for @psTryMe.
  ///
  /// In en, this message translates to:
  /// **'Try me!'**
  String get psTryMe;

  /// No description provided for @psRandom.
  ///
  /// In en, this message translates to:
  /// **'Random config applied.'**
  String get psRandom;

  /// No description provided for @psOpenUIIs.
  ///
  /// In en, this message translates to:
  /// **'Open UI is an app generator.'**
  String get psOpenUIIs;

  /// No description provided for @psShowDemo.
  ///
  /// In en, this message translates to:
  /// **'Show demo'**
  String get psShowDemo;

  /// No description provided for @psHideDemo.
  ///
  /// In en, this message translates to:
  /// **'Hide demo'**
  String get psHideDemo;

  /// No description provided for @psOpenUIDemo.
  ///
  /// In en, this message translates to:
  /// **'Demonstration of Open UI creating a new app.'**
  String get psOpenUIDemo;

  /// No description provided for @psFoundation.
  ///
  /// In en, this message translates to:
  /// **'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.'**
  String get psFoundation;

  /// No description provided for @psLocal.
  ///
  /// In en, this message translates to:
  /// **'Everything runs on your computer. There are no credentials, credit cards, or cookies.'**
  String get psLocal;

  /// No description provided for @psRequirements.
  ///
  /// In en, this message translates to:
  /// **'The only requirements are an internet connection and an idea.'**
  String get psRequirements;

  /// No description provided for @psFlutterToo.
  ///
  /// In en, this message translates to:
  /// **'...and Flutter...'**
  String get psFlutterToo;

  /// No description provided for @psHow.
  ///
  /// In en, this message translates to:
  /// **'How does it work?'**
  String get psHow;

  /// No description provided for @psEFUIsHow.
  ///
  /// In en, this message translates to:
  /// **'Open UI is built upon, and get\'s you started with, '**
  String get psEFUIsHow;

  /// No description provided for @psSimplifies.
  ///
  /// In en, this message translates to:
  /// **'EFUI is a library for building truly accessible apps.\nIt simplifies...'**
  String get psSimplifies;

  /// No description provided for @psPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform availability'**
  String get psPlatform;

  /// No description provided for @psPlatformContent.
  ///
  /// In en, this message translates to:
  /// **'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!'**
  String get psPlatformContent;

  /// No description provided for @psResponsive.
  ///
  /// In en, this message translates to:
  /// **'Responsive design'**
  String get psResponsive;

  /// No description provided for @psResponsiveContent.
  ///
  /// In en, this message translates to:
  /// **'To see it in action, play with the window you\'re using right now!'**
  String get psResponsiveContent;

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
  /// **'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.'**
  String get psCustomContent;

  /// No description provided for @psInternational.
  ///
  /// In en, this message translates to:
  /// **'Internationalization'**
  String get psInternational;

  /// No description provided for @psInternationalContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.'**
  String get psInternationalContent;

  /// No description provided for @psInternationalContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.'**
  String get psInternationalContentFix;

  /// No description provided for @psGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get psGetStarted;

  /// No description provided for @psOpenUIIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a settings sandbox.'**
  String get psOpenUIIconLabel;

  /// No description provided for @psEFUITagLine.
  ///
  /// In en, this message translates to:
  /// **'When built with EFUI, your apps can truly reach any audience!\n'**
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

  /// No description provided for @psSOSIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a loudly colored notification bell.'**
  String get psSOSIconLabel;

  /// No description provided for @psSOSDescription.
  ///
  /// In en, this message translates to:
  /// **'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.'**
  String get psSOSDescription;

  /// No description provided for @psDocsLabel.
  ///
  /// In en, this message translates to:
  /// **'How it works.'**
  String get psDocsLabel;

  /// No description provided for @psDocsHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to the README'**
  String get psDocsHint;

  /// No description provided for @psSafeSOS.
  ///
  /// In en, this message translates to:
  /// **'InstaSOS has no accounts, cookies, or ads.\n'**
  String get psSafeSOS;

  /// No description provided for @psFreeSOS.
  ///
  /// In en, this message translates to:
  /// **'It\'s completely free and the code is '**
  String get psFreeSOS;

  /// No description provided for @psOpenSource.
  ///
  /// In en, this message translates to:
  /// **'open source'**
  String get psOpenSource;

  /// No description provided for @psConsider.
  ///
  /// In en, this message translates to:
  /// **'Please consider '**
  String get psConsider;

  /// No description provided for @psContributing.
  ///
  /// In en, this message translates to:
  /// **'contributing'**
  String get psContributing;

  /// No description provided for @psSAPS.
  ///
  /// In en, this message translates to:
  /// **' to support software as a public service.'**
  String get psSAPS;

  /// No description provided for @psComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon...'**
  String get psComingSoon;

  /// No description provided for @psSignalPreview1.
  ///
  /// In en, this message translates to:
  /// **'The next Empathetech app, '**
  String get psSignalPreview1;

  /// No description provided for @psSignalPreview1Fix.
  ///
  /// In en, this message translates to:
  /// **'The next Empathetic app, '**
  String get psSignalPreview1Fix;

  /// No description provided for @psSignalPreview2.
  ///
  /// In en, this message translates to:
  /// **', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.'**
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

  /// No description provided for @tsTheFounderLabel.
  ///
  /// In en, this message translates to:
  /// **'A two dimensional profile of Michael Waldron.'**
  String get tsTheFounderLabel;

  /// No description provided for @tsTheFounderHint.
  ///
  /// In en, this message translates to:
  /// **'Activate to send him an email.'**
  String get tsTheFounderHint;

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

  /// No description provided for @tsVideoProduction.
  ///
  /// In en, this message translates to:
  /// **'Video Production'**
  String get tsVideoProduction;

  /// No description provided for @tsTranslators.
  ///
  /// In en, this message translates to:
  /// **'Translators'**
  String get tsTranslators;

  /// No description provided for @tsAr.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get tsAr;

  /// No description provided for @tsEs.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get tsEs;

  /// No description provided for @tsFil.
  ///
  /// In en, this message translates to:
  /// **'Filipino'**
  String get tsFil;

  /// No description provided for @tsFr.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get tsFr;

  /// No description provided for @tsHt.
  ///
  /// In en, this message translates to:
  /// **'Creole'**
  String get tsHt;

  /// No description provided for @tsZh.
  ///
  /// In en, this message translates to:
  /// **'Chinese (simplified)'**
  String get tsZh;

  /// No description provided for @tsProfile.
  ///
  /// In en, this message translates to:
  /// **'{name}\'s profile'**
  String tsProfile(Object name);

  /// No description provided for @fahJoin.
  ///
  /// In en, this message translates to:
  /// **'Join the Fold'**
  String get fahJoin;

  /// No description provided for @fahIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a protein molecule.'**
  String get fahIconLabel;

  /// No description provided for @fahIconHint.
  ///
  /// In en, this message translates to:
  /// **'Activate to open their site.'**
  String get fahIconHint;

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

  /// No description provided for @csPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Contribute'**
  String get csPageTitle;

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

  /// No description provided for @csOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Open a link to Empathetic\'s {page}'**
  String csOpenLink(Object page);

  /// No description provided for @csPowerQ.
  ///
  /// In en, this message translates to:
  /// **'Power?'**
  String get csPowerQ;

  /// No description provided for @csThanks.
  ///
  /// In en, this message translates to:
  /// **'Many thanks for any and all support!'**
  String get csThanks;
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
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'US':
            return lang_en
                .loadLibrary()
                .then((dynamic _) => lang_en.LangEnUs());
        }
        break;
      }
  }

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
