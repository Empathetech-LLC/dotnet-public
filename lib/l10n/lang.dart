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

  /// No description provided for @gAnEmail.
  ///
  /// In en, this message translates to:
  /// **'an email'**
  String get gAnEmail;

  /// No description provided for @gEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Opens your email client'**
  String get gEmailHint;

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

  /// No description provided for @gImageCredit.
  ///
  /// In en, this message translates to:
  /// **'Image credit: {creator}'**
  String gImageCredit(Object creator);

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
  /// **'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.'**
  String get msFindSolutionContent;

  /// No description provided for @msProvideValue.
  ///
  /// In en, this message translates to:
  /// **'Doing the work'**
  String get msProvideValue;

  /// No description provided for @msProvideValueContent1.
  ///
  /// In en, this message translates to:
  /// **'The Empathetech mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get msProvideValueContent1;

  /// No description provided for @msProvideValueContent1Fix.
  ///
  /// In en, this message translates to:
  /// **'The Empathetic mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
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

  /// No description provided for @psShowPromo.
  ///
  /// In en, this message translates to:
  /// **'Show promo'**
  String get psShowPromo;

  /// No description provided for @psHidePromo.
  ///
  /// In en, this message translates to:
  /// **'Hide promo'**
  String get psHidePromo;

  /// No description provided for @psLearnMore.
  ///
  /// In en, this message translates to:
  /// **' to learn more.'**
  String get psLearnMore;

  /// No description provided for @psDownloadNow.
  ///
  /// In en, this message translates to:
  /// **'Download now'**
  String get psDownloadNow;

  /// No description provided for @psComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon...'**
  String get psComingSoon;

  /// No description provided for @ouSlogan.
  ///
  /// In en, this message translates to:
  /// **'Build apps for anyone'**
  String get ouSlogan;

  /// No description provided for @ouLike.
  ///
  /// In en, this message translates to:
  /// **'Like users who need...'**
  String get ouLike;

  /// No description provided for @ouAccessible.
  ///
  /// In en, this message translates to:
  /// **'Accessible controls'**
  String get ouAccessible;

  /// No description provided for @ouZeroStrain.
  ///
  /// In en, this message translates to:
  /// **'zero eye strain'**
  String get ouZeroStrain;

  /// No description provided for @ouEverything.
  ///
  /// In en, this message translates to:
  /// **'Everything in-between'**
  String get ouEverything;

  /// No description provided for @ouRandom.
  ///
  /// In en, this message translates to:
  /// **'Random config applied.'**
  String get ouRandom;

  /// No description provided for @ouIs.
  ///
  /// In en, this message translates to:
  /// **'Open UI is an app generator.'**
  String get ouIs;

  /// No description provided for @ouDemo.
  ///
  /// In en, this message translates to:
  /// **'Demonstration of Open UI creating a new app.'**
  String get ouDemo;

  /// No description provided for @ouFoundation.
  ///
  /// In en, this message translates to:
  /// **'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.'**
  String get ouFoundation;

  /// No description provided for @ouLocal.
  ///
  /// In en, this message translates to:
  /// **'Everything runs on your computer. There are no credentials, credit cards, or cookies.'**
  String get ouLocal;

  /// No description provided for @ouRequirements.
  ///
  /// In en, this message translates to:
  /// **'The only requirements are an internet connection and an idea.'**
  String get ouRequirements;

  /// No description provided for @ouFlutterToo.
  ///
  /// In en, this message translates to:
  /// **'...and Flutter...'**
  String get ouFlutterToo;

  /// No description provided for @ouHow.
  ///
  /// In en, this message translates to:
  /// **'How does it work?'**
  String get ouHow;

  /// No description provided for @ouEFUIsHow.
  ///
  /// In en, this message translates to:
  /// **'Open UI is built upon, and get\'s you started with, '**
  String get ouEFUIsHow;

  /// No description provided for @ouSimplifies.
  ///
  /// In en, this message translates to:
  /// **'EFUI is a library for building truly accessible apps. It simplifies...'**
  String get ouSimplifies;

  /// No description provided for @ouPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform availability'**
  String get ouPlatform;

  /// No description provided for @ouPlatformContent.
  ///
  /// In en, this message translates to:
  /// **'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!'**
  String get ouPlatformContent;

  /// No description provided for @ouResponsive.
  ///
  /// In en, this message translates to:
  /// **'Responsive design'**
  String get ouResponsive;

  /// No description provided for @ouResponsiveContent.
  ///
  /// In en, this message translates to:
  /// **'To see it in action, play with the window you\'re using right now!'**
  String get ouResponsiveContent;

  /// No description provided for @ouScreen.
  ///
  /// In en, this message translates to:
  /// **'Screen reader support'**
  String get ouScreen;

  /// No description provided for @ouScreenContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps support users who need '**
  String get ouScreenContent;

  /// No description provided for @ouScreenContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps support users who need '**
  String get ouScreenContentFix;

  /// No description provided for @ouTalkBackHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to TalkBack documentation'**
  String get ouTalkBackHint;

  /// No description provided for @ouAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get ouAnd;

  /// No description provided for @ouVoiceOverHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to VoiceOver documentation'**
  String get ouVoiceOverHint;

  /// No description provided for @ouCustom.
  ///
  /// In en, this message translates to:
  /// **'User customization'**
  String get ouCustom;

  /// No description provided for @ouCustomContent.
  ///
  /// In en, this message translates to:
  /// **'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.'**
  String get ouCustomContent;

  /// No description provided for @ouInternational.
  ///
  /// In en, this message translates to:
  /// **'Internationalization'**
  String get ouInternational;

  /// No description provided for @ouInternationalContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.'**
  String get ouInternationalContent;

  /// No description provided for @ouInternationalContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.'**
  String get ouInternationalContentFix;

  /// No description provided for @ouReliability.
  ///
  /// In en, this message translates to:
  /// **'Reliability'**
  String get ouReliability;

  /// No description provided for @ouReliabilityContent.
  ///
  /// In en, this message translates to:
  /// **'Empathetech software is built to last. This is NOT AI code generation.\nEmpathetech programmers are people. LLMs are rubber ducks.'**
  String get ouReliabilityContent;

  /// No description provided for @ouReliabilityContentFix.
  ///
  /// In en, this message translates to:
  /// **'Empathetic software is built to last. This is NOT AI code generation.\nEmpathetic programmers are people. LLMs are rubber ducks.'**
  String get ouReliabilityContentFix;

  /// No description provided for @ouGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get ouGetStarted;

  /// No description provided for @ouOpenUIIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a settings sandbox.'**
  String get ouOpenUIIconLabel;

  /// No description provided for @ouEFUITagLine.
  ///
  /// In en, this message translates to:
  /// **'When built with EFUI, your apps can truly reach any audience!\n'**
  String get ouEFUITagLine;

  /// No description provided for @ouConsult.
  ///
  /// In en, this message translates to:
  /// **' for consultation and contracting.'**
  String get ouConsult;

  /// No description provided for @sosPromoLabel.
  ///
  /// In en, this message translates to:
  /// **'A promotional video for Insta SOS.'**
  String get sosPromoLabel;

  /// No description provided for @sosDescription.
  ///
  /// In en, this message translates to:
  /// **'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.'**
  String get sosDescription;

  /// No description provided for @sosPrivate.
  ///
  /// In en, this message translates to:
  /// **'InstaSOS has no accounts, cookies, or ads.\n'**
  String get sosPrivate;

  /// No description provided for @sosFree.
  ///
  /// In en, this message translates to:
  /// **'It\'s completely free and the code is '**
  String get sosFree;

  /// No description provided for @sosOpenSource.
  ///
  /// In en, this message translates to:
  /// **'open source'**
  String get sosOpenSource;

  /// No description provided for @sosWeAlso.
  ///
  /// In en, this message translates to:
  /// **'We also made a '**
  String get sosWeAlso;

  /// No description provided for @sosSetupGuide.
  ///
  /// In en, this message translates to:
  /// **'setup guide'**
  String get sosSetupGuide;

  /// No description provided for @sosSetupGuideHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to the README'**
  String get sosSetupGuideHint;

  /// No description provided for @sosConsider.
  ///
  /// In en, this message translates to:
  /// **'Please consider '**
  String get sosConsider;

  /// No description provided for @sosContributing.
  ///
  /// In en, this message translates to:
  /// **'contributing'**
  String get sosContributing;

  /// No description provided for @sosSAPS.
  ///
  /// In en, this message translates to:
  /// **' to support software as a public service.'**
  String get sosSAPS;

  /// No description provided for @sosIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a loudly colored notification bell.'**
  String get sosIconLabel;

  /// No description provided for @llDescription.
  ///
  /// In en, this message translates to:
  /// **'An Empathetech Android Launcher.'**
  String get llDescription;

  /// No description provided for @llDescriptionFix.
  ///
  /// In en, this message translates to:
  /// **'An Empathetic Android Launcher.'**
  String get llDescriptionFix;

  /// No description provided for @llInDev.
  ///
  /// In en, this message translates to:
  /// **'Liminal is in development.\nIt\'s design leans towards minimalism, because our phones should be tools for us to use, not the other way around.'**
  String get llInDev;

  /// No description provided for @llBut.
  ///
  /// In en, this message translates to:
  /// **'But, it\'s a minimalist launcher built with '**
  String get llBut;

  /// No description provided for @llWhimsy.
  ///
  /// In en, this message translates to:
  /// **'.\nSo, your home screen will be free of clutter and distractions, AND be limitlessly customizable. With a bit of whimsy to boot.'**
  String get llWhimsy;

  /// No description provided for @llTheHood.
  ///
  /// In en, this message translates to:
  /// **'A sample home screen with a picture of Portland\'s Mount Hood.'**
  String get llTheHood;

  /// No description provided for @llLasRosas.
  ///
  /// In en, this message translates to:
  /// **'A sample home screen with a picture of Portland\'s Rose garden.'**
  String get llLasRosas;

  /// No description provided for @llFrogAndPigs.
  ///
  /// In en, this message translates to:
  /// **'A sample home screen with a picture of Portland\'s wildlife.'**
  String get llFrogAndPigs;

  /// No description provided for @llModel.
  ///
  /// In en, this message translates to:
  /// **'Liminal will be released under a \"pay what you can\" model.\nThe Google Play version will be paid, because (good) code doesn\'t write itself.\nThe GitHub repo will also have a freely available APK, because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.'**
  String get llModel;

  /// No description provided for @ssPreview1.
  ///
  /// In en, this message translates to:
  /// **'Another Empathetech app, '**
  String get ssPreview1;

  /// No description provided for @ssPreview1Fix.
  ///
  /// In en, this message translates to:
  /// **'Another Empathetic app, '**
  String get ssPreview1Fix;

  /// No description provided for @ssPreview2.
  ///
  /// In en, this message translates to:
  /// **', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.'**
  String get ssPreview2;

  /// No description provided for @ssPreview3.
  ///
  /// In en, this message translates to:
  /// **'Smoke Signal will also be fully self-hosted, thanks to '**
  String get ssPreview3;

  /// No description provided for @ssAPHint.
  ///
  /// In en, this message translates to:
  /// **'Open a link to Activity Pub documentation'**
  String get ssAPHint;

  /// No description provided for @vaIntro.
  ///
  /// In en, this message translates to:
  /// **'The way a technology is used cannot be decided by those who create it.'**
  String get vaIntro;

  /// No description provided for @vaTheBad.
  ///
  /// In en, this message translates to:
  /// **'Which can be a good thing, a bad thing, or an in-between thing.\nLet\'s take a moment to discuss the bad: scam apps.'**
  String get vaTheBad;

  /// No description provided for @vaScamRisk.
  ///
  /// In en, this message translates to:
  /// **' massively reduces the difficulty for building production ready apps. Combined with AI coding tools, it\'s easier than ever for scammers to create apps that look and feel legitimate. To help combat this, we\'ll maintain a list of verified apps.'**
  String get vaScamRisk;

  /// No description provided for @vaCheckIn.
  ///
  /// In en, this message translates to:
  /// **'If you see an app that uses our UI, check here first. If it\'s not verified, our advice is: don\'t download it.\nBeyond that, this is not a list of recommendations. The only requirement to be on this list, is to not be a scam.\nWith that covered, the known UIniverse contains...'**
  String get vaCheckIn;

  /// No description provided for @vaFirst.
  ///
  /// In en, this message translates to:
  /// **'First party'**
  String get vaFirst;

  /// No description provided for @vaThird.
  ///
  /// In en, this message translates to:
  /// **'Third party verified'**
  String get vaThird;

  /// No description provided for @vaWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get vaWaiting;

  /// No description provided for @vaWillYou.
  ///
  /// In en, this message translates to:
  /// **'Will you be the first?'**
  String get vaWillYou;

  /// No description provided for @vaKnown.
  ///
  /// In en, this message translates to:
  /// **'Known scams'**
  String get vaKnown;

  /// No description provided for @vaSoGood.
  ///
  /// In en, this message translates to:
  /// **'So far, so good!\nPlease don\'t be the first :)'**
  String get vaSoGood;

  /// No description provided for @vaPublished.
  ///
  /// In en, this message translates to:
  /// **'If you\'ve published an app using EFUI, send us '**
  String get vaPublished;

  /// No description provided for @vaDoNoHarm.
  ///
  /// In en, this message translates to:
  /// **'.\nWe don\'t have to love the app, and we\'re not publicly reviewing it.\nWe\'ll check the code, and as long as it doesn\'t cause harm, it\'ll be verified.'**
  String get vaDoNoHarm;

  /// No description provided for @vaPrivateFree.
  ///
  /// In en, this message translates to:
  /// **'If your app isn\'t publicly available, don\'t worry!\nBut if people you don\'t know can download it, let us know so we can verify it.'**
  String get vaPrivateFree;

  /// No description provided for @vaDoYourPart.
  ///
  /// In en, this message translates to:
  /// **'If we haven\'t heard from you, we\'ll assume your product is a scam until proven otherwise.\nIf you think that\'s intense, think again. Open UI is years of work, shared freely. Sending an email is the least you can do.'**
  String get vaDoYourPart;

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

  /// No description provided for @tsBoardMember.
  ///
  /// In en, this message translates to:
  /// **'Board Member'**
  String get tsBoardMember;

  /// No description provided for @tsYou.
  ///
  /// In en, this message translates to:
  /// **'You?'**
  String get tsYou;

  /// No description provided for @tsMirrorLabel.
  ///
  /// In en, this message translates to:
  /// **'A black circle with a shimmer, to mimic a mirror.'**
  String get tsMirrorLabel;

  /// No description provided for @tsMirrorTip.
  ///
  /// In en, this message translates to:
  /// **'Activate to send us an email'**
  String get tsMirrorTip;

  /// No description provided for @tsMirrorHint.
  ///
  /// In en, this message translates to:
  /// **'Ask about joining the team.'**
  String get tsMirrorHint;

  /// No description provided for @tsNonProfit.
  ///
  /// In en, this message translates to:
  /// **'The only thing in the way of Empathetech becoming a proper nonprofit is the head count.\nIf you believe in the mission I\'ve laid out, and have a few hours a week to spare, please reach out!\n\nIt will be fully volunteer to start. I\'m not getting paid (yet) either.\nBut, I wouldn\'t be doing this if I didn\'t have a good plan for that too.\n\nAll who are interested are encouraged to reach out, but there is a particular need for folks with experience in:\nsocial media management, fundraising, and grant writing.'**
  String get tsNonProfit;

  /// No description provided for @tsWild.
  ///
  /// In en, this message translates to:
  /// **'In the wild'**
  String get tsWild;

  /// No description provided for @ts2025BoothLabel.
  ///
  /// In en, this message translates to:
  /// **'The Empathetech booth for Open Sauce 2025.'**
  String get ts2025BoothLabel;

  /// No description provided for @ts2025BoothHint.
  ///
  /// In en, this message translates to:
  /// **'Activate to open the Open Sauce exhibits page.'**
  String get ts2025BoothHint;

  /// No description provided for @ts2025BoothDescription.
  ///
  /// In en, this message translates to:
  /// **'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetech booth, and here\'s to next year!'**
  String get ts2025BoothDescription;

  /// No description provided for @ts2025BoothDescriptionFix.
  ///
  /// In en, this message translates to:
  /// **'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetic booth, and here\'s to next year!'**
  String get ts2025BoothDescriptionFix;

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

  /// No description provided for @csTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get csTime;

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

  /// No description provided for @csMoney.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get csMoney;

  /// No description provided for @csOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Open a link to Empathetic\'s {page}'**
  String csOpenLink(Object page);

  /// No description provided for @csPower.
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get csPower;

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
