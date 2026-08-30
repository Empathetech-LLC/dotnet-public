import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'lang_ar.dart' deferred as lang_ar;
import 'lang_de.dart' deferred as lang_de;
import 'lang_en.dart' deferred as lang_en;
import 'lang_es.dart' deferred as lang_es;
import 'lang_fil.dart' deferred as lang_fil;
import 'lang_fr.dart' deferred as lang_fr;
import 'lang_hi.dart' deferred as lang_hi;
import 'lang_ht.dart' deferred as lang_ht;
import 'lang_ja.dart' deferred as lang_ja;
import 'lang_ko.dart' deferred as lang_ko;
import 'lang_ru.dart' deferred as lang_ru;
import 'lang_sw.dart' deferred as lang_sw;
import 'lang_uk.dart' deferred as lang_uk;
import 'lang_zh.dart' deferred as lang_zh;

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
    Locale('ar'),
    Locale('ar', 'EG'),
    Locale('de'),
    Locale('en'),
    Locale('en', 'US'),
    Locale('es'),
    Locale('fil'),
    Locale('fr'),
    Locale('hi'),
    Locale('ht'),
    Locale('ja'),
    Locale('ko'),
    Locale('ru'),
    Locale('sw'),
    Locale('uk'),
    Locale('zh'),
    Locale('zh', 'CN')
  ];

  /// No description provided for @gYWTLogoLabel.
  ///
  /// In en, this message translates to:
  /// **'a two dimensional hourglass.'**
  String get gYWTLogoLabel;

  /// No description provided for @gYWTLogoHint.
  ///
  /// In en, this message translates to:
  /// **'Activate to go to the home page.'**
  String get gYWTLogoHint;

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

  /// No description provided for @gYWTGitHint.
  ///
  /// In en, this message translates to:
  /// **'Open the GitHub page for YWT'**
  String get gYWTGitHint;

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

  /// No description provided for @gProfile.
  ///
  /// In en, this message translates to:
  /// **'{name}\'s profile'**
  String gProfile(Object name);

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

  /// No description provided for @hsAnimLabel.
  ///
  /// In en, this message translates to:
  /// **'YWT animated logo: the letters YWT transform into a two dimensional hourglass'**
  String get hsAnimLabel;

  /// No description provided for @hsChange.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for change.'**
  String get hsChange;

  /// No description provided for @hsmIDProblem.
  ///
  /// In en, this message translates to:
  /// **'Identifying the problem'**
  String get hsmIDProblem;

  /// No description provided for @hsmIDProblemContent.
  ///
  /// In en, this message translates to:
  /// **'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.'**
  String get hsmIDProblemContent;

  /// No description provided for @hsmSoWe.
  ///
  /// In en, this message translates to:
  /// **'So we'**
  String get hsmSoWe;

  /// No description provided for @hsmFindSolution.
  ///
  /// In en, this message translates to:
  /// **'Find a solution'**
  String get hsmFindSolution;

  /// No description provided for @hsmFindSolutionContent.
  ///
  /// In en, this message translates to:
  /// **'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.'**
  String get hsmFindSolutionContent;

  /// No description provided for @hsmBy.
  ///
  /// In en, this message translates to:
  /// **'By'**
  String get hsmBy;

  /// No description provided for @hsmProvideValue.
  ///
  /// In en, this message translates to:
  /// **'Doing the work'**
  String get hsmProvideValue;

  /// No description provided for @hsmProvideValueContent1.
  ///
  /// In en, this message translates to:
  /// **'YWT is re-balancing tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why '**
  String get hsmProvideValueContent1;

  /// No description provided for @hsmProvideValueContent2.
  ///
  /// In en, this message translates to:
  /// **' exists.\nWe take pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.'**
  String get hsmProvideValueContent2;

  /// No description provided for @hsmFirst.
  ///
  /// In en, this message translates to:
  /// **'By first'**
  String get hsmFirst;

  /// No description provided for @psPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get psPageTitle;

  /// No description provided for @psTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Show list'**
  String get psTitleHint;

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

  /// No description provided for @ouPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform availability'**
  String get ouPlatform;

  /// No description provided for @ouPlatformContent.
  ///
  /// In en, this message translates to:
  /// **'You can use Open UI to create on Android, iOS, Linux, macOS, Windows and Web!'**
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
  /// **'OUI apps support users who need '**
  String get ouScreenContent;

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
  /// **'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nOpen UI provides an elegant UX for full control over an app\'s appearance.'**
  String get ouCustomContent;

  /// No description provided for @ouInternational.
  ///
  /// In en, this message translates to:
  /// **'Internationalization'**
  String get ouInternational;

  /// No description provided for @ouInternationalContent.
  ///
  /// In en, this message translates to:
  /// **'OUI has been translated to 14 languages (so far).\nOUI also provides the infrastructure for unlimited future translations.'**
  String get ouInternationalContent;

  /// No description provided for @ouReliability.
  ///
  /// In en, this message translates to:
  /// **'Reliability'**
  String get ouReliability;

  /// No description provided for @ouReliabilityContent.
  ///
  /// In en, this message translates to:
  /// **'YWT software is built to last. This is NOT AI code generation.\nProgrammers are people. LLMs are rubber ducks.'**
  String get ouReliabilityContent;

  /// No description provided for @ouGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get ouGetStarted;

  /// No description provided for @ouIconLabel.
  ///
  /// In en, this message translates to:
  /// **'a settings sandbox.'**
  String get ouIconLabel;

  /// No description provided for @ouTagLine.
  ///
  /// In en, this message translates to:
  /// **'When built with Open UI, your apps can truly reach any audience!\n'**
  String get ouTagLine;

  /// No description provided for @sosPromoLabel.
  ///
  /// In en, this message translates to:
  /// **'A promotional video for Insta SOS.'**
  String get sosPromoLabel;

  /// No description provided for @sosDescription.
  ///
  /// In en, this message translates to:
  /// **'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in 14 languages and supports screen readers.'**
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

  /// No description provided for @sosWeb.
  ///
  /// In en, this message translates to:
  /// **'One specific, and highly impactful, way to contribute would be to foot the bill for hosting InstaSOS online.\n\nThe app store owners have made their allegiances clear, and InstaSOS may be removed if/when it gains traction.\nAndroid users will always have the option to self install, but the only viable alternative for iOS users would be a web app.\n\nThankfully, Flutter apps are client side compute, so the bill would be low.\nWe\'d (you\'d) only need to pay for traffic management.'**
  String get sosWeb;

  /// No description provided for @sosTranslators.
  ///
  /// In en, this message translates to:
  /// **'Translators'**
  String get sosTranslators;

  /// No description provided for @llSlogan.
  ///
  /// In en, this message translates to:
  /// **'The last launcher you\'ll ever load.'**
  String get llSlogan;

  /// No description provided for @llDesign.
  ///
  /// In en, this message translates to:
  /// **'Its design leans towards minimalism, but it\'s built with '**
  String get llDesign;

  /// No description provided for @llWhimsy.
  ///
  /// In en, this message translates to:
  /// **'So, your home screen will be free of clutter and distractions, AND be limitlessly customizable.\nWith a bit of whimsy to boot.'**
  String get llWhimsy;

  /// No description provided for @llModel.
  ///
  /// In en, this message translates to:
  /// **'Liminal has a \"pay what you can\" model.\nThe '**
  String get llModel;

  /// No description provided for @llPaid.
  ///
  /// In en, this message translates to:
  /// **' version is \$4.99, because (good) code doesn\'t write itself.\nThe APK is also available '**
  String get llPaid;

  /// No description provided for @llGit.
  ///
  /// In en, this message translates to:
  /// **'on GitHub'**
  String get llGit;

  /// No description provided for @llFree.
  ///
  /// In en, this message translates to:
  /// **', because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.'**
  String get llFree;

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
  /// **'Open the YWT folding at home team page'**
  String get fahTeamHint;

  /// No description provided for @fahWhats.
  ///
  /// In en, this message translates to:
  /// **'What\'s '**
  String get fahWhats;

  /// No description provided for @fahName.
  ///
  /// In en, this message translates to:
  /// **'Folding@home?'**
  String get fahName;

  /// No description provided for @fahNameHint.
  ///
  /// In en, this message translates to:
  /// **'Open Folding at Home\'s about page'**
  String get fahNameHint;

  /// No description provided for @fahStats.
  ///
  /// In en, this message translates to:
  /// **'Together, we\'ve earned over 400 million points.\nThat puts us in the top 2% of all teams worldwide!'**
  String get fahStats;

  /// No description provided for @csPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Contribute'**
  String get csPageTitle;

  /// No description provided for @csEveryBit.
  ///
  /// In en, this message translates to:
  /// **'Every bit to us is a byte out of big tech.'**
  String get csEveryBit;

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
  /// **'Open a link to YWT\'s {page}'**
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
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fil',
        'fr',
        'hi',
        'ht',
        'ja',
        'ko',
        'ru',
        'sw',
        'uk',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_LangDelegate old) => false;
}

Future<Lang> lookupLang(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'ar':
      {
        switch (locale.countryCode) {
          case 'EG':
            return lang_ar
                .loadLibrary()
                .then((dynamic _) => lang_ar.LangArEg());
        }
        break;
      }
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
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return lang_zh
                .loadLibrary()
                .then((dynamic _) => lang_zh.LangZhCn());
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return lang_ar.loadLibrary().then((dynamic _) => lang_ar.LangAr());
    case 'de':
      return lang_de.loadLibrary().then((dynamic _) => lang_de.LangDe());
    case 'en':
      return lang_en.loadLibrary().then((dynamic _) => lang_en.LangEn());
    case 'es':
      return lang_es.loadLibrary().then((dynamic _) => lang_es.LangEs());
    case 'fil':
      return lang_fil.loadLibrary().then((dynamic _) => lang_fil.LangFil());
    case 'fr':
      return lang_fr.loadLibrary().then((dynamic _) => lang_fr.LangFr());
    case 'hi':
      return lang_hi.loadLibrary().then((dynamic _) => lang_hi.LangHi());
    case 'ht':
      return lang_ht.loadLibrary().then((dynamic _) => lang_ht.LangHt());
    case 'ja':
      return lang_ja.loadLibrary().then((dynamic _) => lang_ja.LangJa());
    case 'ko':
      return lang_ko.loadLibrary().then((dynamic _) => lang_ko.LangKo());
    case 'ru':
      return lang_ru.loadLibrary().then((dynamic _) => lang_ru.LangRu());
    case 'sw':
      return lang_sw.loadLibrary().then((dynamic _) => lang_sw.LangSw());
    case 'uk':
      return lang_uk.loadLibrary().then((dynamic _) => lang_uk.LangUk());
    case 'zh':
      return lang_zh.loadLibrary().then((dynamic _) => lang_zh.LangZh());
  }

  throw FlutterError(
      'Lang.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
