// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LangEn extends Lang {
  LangEn([String locale = 'en']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'a two dimensional hourglass.';

  @override
  String get gEmpathLogoHint => 'Activate to go to the home page.';

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
  String get gEmpathetechGitHint => 'Open the GitHub page for Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'Image credit: $creator';
  }

  @override
  String get gReachOut => 'Reach out';

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
  String get hsSlogan => 'Let\'s build a better world together\nbit x bit';

  @override
  String get hsSloganFix => 'Let\'s build a better world together\nbit by bit';

  @override
  String get hsVideoLabel =>
      'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo';

  @override
  String get hsPeople => 'People aren\'t products.';

  @override
  String get hsWell => 'Well, they shouldn\'t be.';

  @override
  String get hsReality => 'The unfortunate reality is our identities, our ';

  @override
  String get hsData => 'data';

  @override
  String get hsGold => ', is big tech\'s latest gold rush.';

  @override
  String get hsRush =>
      'And big tech sure does love to rush.\nThanks to their never-ending sprint, the dystopian sci-fi movies are coming true far too quickly.';

  @override
  String get hsSlow =>
      'It\'s time to slow down.\nIt\'s time we had ownership of our digital selves.\nIt\'s time for a better ';

  @override
  String get hsPlan => 'plan.';

  @override
  String get msPageTitle => 'Mission';

  @override
  String get msSoWe => 'So we';

  @override
  String get msBy => 'By';

  @override
  String get msFirst => 'By first';

  @override
  String get msIDProblem => 'Identifying the problem';

  @override
  String get msIDProblemContent =>
      'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.';

  @override
  String get msFindSolution => 'Find a solution';

  @override
  String get msFindSolutionContent =>
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get msProvideValue => 'Doing the work';

  @override
  String get msProvideValueContent1 =>
      'The Empathetech mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent1Fix =>
      'The Empathetic mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent2 =>
      ' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get msProvideValueContent2Fix =>
      ' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get psPageTitle => 'Products';

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
  String get ouHow => 'How does it work?';

  @override
  String get ouEFUIsHow =>
      'Open UI is built upon, and get\'s you started with, ';

  @override
  String get ouSimplifies =>
      'EFUI is a library for building truly accessible apps. It simplifies...';

  @override
  String get ouPlatform => 'Platform availability';

  @override
  String get ouPlatformContent =>
      'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get ouResponsive => 'Responsive design';

  @override
  String get ouResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get ouScreen => 'Screen reader support';

  @override
  String get ouScreenContent => 'Empathetech apps support users who need ';

  @override
  String get ouScreenContentFix => 'Empathetic apps support users who need ';

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
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get ouInternational => 'Internationalization';

  @override
  String get ouInternationalContent =>
      'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouInternationalContentFix =>
      'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouReliability => 'Reliability';

  @override
  String get ouReliabilityContent =>
      'Empathetech software is built to last. This is NOT AI code generation.\nEmpathetech programmers are people. LLMs are rubber ducks.';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic software is built to last. This is NOT AI code generation.\nEmpathetic programmers are people. LLMs are rubber ducks.';

  @override
  String get ouGetStarted => 'Get started';

  @override
  String get ouOpenUIIconLabel => 'a settings sandbox.';

  @override
  String get ouEFUITagLine =>
      'When built with EFUI, your apps can truly reach any audience!\n';

  @override
  String get ouConsult => ' for consultation and contracting.';

  @override
  String get sosPromoLabel => 'A promotional video for Insta SOS.';

  @override
  String get sosDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.';

  @override
  String get sosPrivate => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get sosFree => 'It\'s completely free and the code is ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosWeAlso => 'We also made a ';

  @override
  String get sosSetupGuide => 'setup guide';

  @override
  String get sosSetupGuideHint => 'Open a link to the README';

  @override
  String get sosConsider => 'Please consider ';

  @override
  String get sosContributing => 'contributing';

  @override
  String get sosSAPS => ' to support software as a public service.';

  @override
  String get sosIconLabel => 'a loudly colored notification bell.';

  @override
  String get llDescription => 'An Empathetech Android Launcher.';

  @override
  String get llDescriptionFix => 'An Empathetic Android Launcher.';

  @override
  String get llInDev =>
      'Liminal is in development.\nIt\'s design leans towards minimalism, because our phones should be tools for us to use, not the other way around.';

  @override
  String get llBut => 'But, it\'s a minimalist launcher built with ';

  @override
  String get llWhimsy =>
      '.\nSo, your home screen will be free of clutter and distractions, AND be limitlessly customizable. With a bit of whimsy to boot.';

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
      'Liminal will be released under a \"pay what you can\" model.\nThe Google Play version will be paid, because (good) code doesn\'t write itself.\nThe GitHub repo will also have a freely available APK, because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.';

  @override
  String get ssPreview1 => 'Another Empathetech app, ';

  @override
  String get ssPreview1Fix => 'Another Empathetic app, ';

  @override
  String get ssPreview2 =>
      ', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.';

  @override
  String get ssPreview3 =>
      'Smoke Signal will also be fully self-hosted, thanks to ';

  @override
  String get ssAPHint => 'Open a link to Activity Pub documentation';

  @override
  String get vaIntro =>
      'The way a technology is used cannot be decided by those who create it.';

  @override
  String get vaTheBad =>
      'Which can be a good thing, a bad thing, or an in-between thing.\nLet\'s take a moment to discuss the bad: scam apps.';

  @override
  String get vaScamRisk =>
      ' massively reduces the difficulty for building production ready apps. Combined with AI coding tools, it\'s easier than ever for scammers to create apps that look and feel legitimate.\nTo help combat this, we\'ll maintain a list of verified apps.';

  @override
  String get vaCheckIn =>
      'If you see an app that uses our UI, check here first. If it\'s not verified, our advice is: don\'t download it.\nBeyond that, this is not a list of recommendations. The only requirement to be on this list, is to not be a scam.\nWith that covered, the known UIniverse contains...';

  @override
  String get vaFirst => 'First party';

  @override
  String get vaThird => 'Third party verified';

  @override
  String get vaWaiting => 'Waiting';

  @override
  String get vaWillYou => 'Will you be the first?';

  @override
  String get vaKnown => 'Known scams';

  @override
  String get vaSoGood => 'So far, so good!\nPlease don\'t be the first :)';

  @override
  String get vaPublished => 'If you\'ve published an app using EFUI, send us ';

  @override
  String get vaDoNoHarm =>
      '.\nWe don\'t have to love the app, and we\'re not publicly reviewing it.\nWe\'ll check the code, and as long as it doesn\'t cause harm, it\'ll be verified.';

  @override
  String get vaPrivateFree =>
      'If your app isn\'t publicly available, don\'t worry!\nBut if people you don\'t know can download it, let us know so we can verify it.';

  @override
  String get vaDoYourPart =>
      'If we haven\'t heard from you, we\'ll assume your product is a scam until proven otherwise.\nIf you think that\'s intense, think again. Open UI is years of work, shared freely. Sending an email is the least you can do.';

  @override
  String get tsPageTitle => 'Team';

  @override
  String get tsCore => 'Core';

  @override
  String get tsTheFounderLabel =>
      'A two dimensional profile of Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Activate to send him an email.';

  @override
  String get tsTheFounder => 'The Founder';

  @override
  String get tsBoardMember => 'Board Member';

  @override
  String get tsYou => 'You?';

  @override
  String get tsMirrorLabel =>
      'A black circle with a shimmer, to mimic a mirror.';

  @override
  String get tsMirrorTip => 'Activate to send us an email';

  @override
  String get tsMirrorHint => 'Ask about joining the team.';

  @override
  String get tsNonProfit =>
      'The only thing in the way of Empathetech becoming a proper nonprofit is the head count.\nIf you believe in the mission I\'ve laid out, and have a few hours a week to spare, please reach out!\n\nIt will be fully volunteer to start. I\'m not getting paid (yet) either.\nBut, I wouldn\'t be doing this if I didn\'t have a good plan for that too.\n\nAll who are interested are encouraged to reach out, but there is a particular need for folks with experience in:\nsocial media management, fundraising, and grant writing.';

  @override
  String get tsWild => 'In the wild';

  @override
  String get ts2025BoothLabel => 'The Empathetech booth for Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Activate to open the Open Sauce exhibits page.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetech booth, and here\'s to next year!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetic booth, and here\'s to next year!';

  @override
  String get tsCommunity => 'Community';

  @override
  String get tsFreelance => 'Freelance';

  @override
  String get tsVideoProduction => 'Video Production';

  @override
  String get tsTranslators => 'Translators';

  @override
  String get tsAr => 'Arabic';

  @override
  String get tsEs => 'Spanish';

  @override
  String get tsFil => 'Filipino';

  @override
  String get tsFr => 'French';

  @override
  String get tsHt => 'Creole';

  @override
  String get tsZh => 'Chinese (simplified)';

  @override
  String tsProfile(Object name) {
    return '$name\'s profile';
  }

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
  String get fahTeamHint => 'Open the Empathetic folding at home team page';

  @override
  String get fahWhats => 'What\'s ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Open Folding at Home\'s about page';

  @override
  String get fahStats =>
      'Together, we\'ve earned over 350 million points.\nThat puts us in the top 2% of all teams worldwide!';

  @override
  String get csPageTitle => 'Contribute';

  @override
  String get csEveryBit =>
      'Every bit you give to Empathetech takes a byte out of big tech.';

  @override
  String get csEveryBitFix =>
      'Every bit you give to Empathetic takes a byte out of big tech.';

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
    return 'Open a link to Empathetic\'s $page';
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
  String get gEmpathLogoLabel => 'a two dimensional hourglass.';

  @override
  String get gEmpathLogoHint => 'Activate to go to the home page.';

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
  String get gEmpathetechGitHint => 'Open the GitHub page for Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'Image credit: $creator';
  }

  @override
  String get gReachOut => 'Reach out';

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
  String get hsSlogan => 'Let\'s build a better world together\nbit x bit';

  @override
  String get hsSloganFix => 'Let\'s build a better world together\nbit by bit';

  @override
  String get hsVideoLabel =>
      'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo';

  @override
  String get hsPeople => 'People aren\'t products.';

  @override
  String get hsWell => 'Well, they shouldn\'t be.';

  @override
  String get hsReality => 'The unfortunate reality is our identities, our ';

  @override
  String get hsData => 'data';

  @override
  String get hsGold => ', is big tech\'s latest gold rush.';

  @override
  String get hsRush =>
      'And big tech sure does love to rush.\nThanks to their never-ending sprint, the dystopian sci-fi movies are coming true far too quickly.';

  @override
  String get hsSlow =>
      'It\'s time to slow down.\nIt\'s time we had ownership of our digital selves.\nIt\'s time for a better ';

  @override
  String get hsPlan => 'plan.';

  @override
  String get msPageTitle => 'Mission';

  @override
  String get msSoWe => 'So we';

  @override
  String get msBy => 'By';

  @override
  String get msFirst => 'By first';

  @override
  String get msIDProblem => 'Identifying the problem';

  @override
  String get msIDProblemContent =>
      'Profit first business models aren\'t sustainable.\n\nBy definition: if profit comes first, then things like working towards a mission, treating people right, and responsible consumption of resources all become afterthoughts.\n\nAnd this greed has gone unchecked in big tech. The tech giants have grown dissatisfied with our money, and are building products to target our identities and monopolize our minds.';

  @override
  String get msFindSolution => 'Find a solution';

  @override
  String get msFindSolutionContent =>
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folks who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self-hosting software.\n\nSelf-hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self-hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self-hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self-hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get msProvideValue => 'Doing the work';

  @override
  String get msProvideValueContent1 =>
      'The Empathetech mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent1Fix =>
      'The Empathetic mission is to re-balance the power in tech by making self-hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent2 =>
      ' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get msProvideValueContent2Fix =>
      ' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get psPageTitle => 'Products';

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
  String get ouHow => 'How does it work?';

  @override
  String get ouEFUIsHow =>
      'Open UI is built upon, and get\'s you started with, ';

  @override
  String get ouSimplifies =>
      'EFUI is a library for building truly accessible apps. It simplifies...';

  @override
  String get ouPlatform => 'Platform availability';

  @override
  String get ouPlatformContent =>
      'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get ouResponsive => 'Responsive design';

  @override
  String get ouResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get ouScreen => 'Screen reader support';

  @override
  String get ouScreenContent => 'Empathetech apps support users who need ';

  @override
  String get ouScreenContentFix => 'Empathetic apps support users who need ';

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
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get ouInternational => 'Internationalization';

  @override
  String get ouInternationalContent =>
      'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouInternationalContentFix =>
      'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get ouReliability => 'Reliability';

  @override
  String get ouReliabilityContent =>
      'Empathetech software is built to last. This is NOT AI code generation.\nEmpathetech programmers are people. LLMs are rubber ducks.';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic software is built to last. This is NOT AI code generation.\nEmpathetic programmers are people. LLMs are rubber ducks.';

  @override
  String get ouGetStarted => 'Get started';

  @override
  String get ouOpenUIIconLabel => 'a settings sandbox.';

  @override
  String get ouEFUITagLine =>
      'When built with EFUI, your apps can truly reach any audience!\n';

  @override
  String get ouConsult => ' for consultation and contracting.';

  @override
  String get sosPromoLabel => 'A promotional video for Insta SOS.';

  @override
  String get sosDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.';

  @override
  String get sosPrivate => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get sosFree => 'It\'s completely free and the code is ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosWeAlso => 'We also made a ';

  @override
  String get sosSetupGuide => 'setup guide';

  @override
  String get sosSetupGuideHint => 'Open a link to the README';

  @override
  String get sosConsider => 'Please consider ';

  @override
  String get sosContributing => 'contributing';

  @override
  String get sosSAPS => ' to support software as a public service.';

  @override
  String get sosIconLabel => 'a loudly colored notification bell.';

  @override
  String get llDescription => 'An Empathetech Android Launcher.';

  @override
  String get llDescriptionFix => 'An Empathetic Android Launcher.';

  @override
  String get llInDev =>
      'Liminal is in development.\nIt\'s design leans towards minimalism, because our phones should be tools for us to use, not the other way around.';

  @override
  String get llBut => 'But, it\'s a minimalist launcher built with ';

  @override
  String get llWhimsy =>
      '.\nSo, your home screen will be free of clutter and distractions, AND be limitlessly customizable. With a bit of whimsy to boot.';

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
      'Liminal will be released under a \"pay what you can\" model.\nThe Google Play version will be paid, because (good) code doesn\'t write itself.\nThe GitHub repo will also have a freely available APK, because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.';

  @override
  String get ssPreview1 => 'Another Empathetech app, ';

  @override
  String get ssPreview1Fix => 'Another Empathetic app, ';

  @override
  String get ssPreview2 =>
      ', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.';

  @override
  String get ssPreview3 =>
      'Smoke Signal will also be fully self-hosted, thanks to ';

  @override
  String get ssAPHint => 'Open a link to Activity Pub documentation';

  @override
  String get vaIntro =>
      'The way a technology is used cannot be decided by those who create it.';

  @override
  String get vaTheBad =>
      'Which can be a good thing, a bad thing, or an in-between thing.\nLet\'s take a moment to discuss the bad: scam apps.';

  @override
  String get vaScamRisk =>
      ' massively reduces the difficulty for building production ready apps. Combined with AI coding tools, it\'s easier than ever for scammers to create apps that look and feel legitimate.\nTo help combat this, we\'ll maintain a list of verified apps.';

  @override
  String get vaCheckIn =>
      'If you see an app that uses our UI, check here first. If it\'s not verified, our advice is: don\'t download it.\nBeyond that, this is not a list of recommendations. The only requirement to be on this list, is to not be a scam.\nWith that covered, the known UIniverse contains...';

  @override
  String get vaFirst => 'First party';

  @override
  String get vaThird => 'Third party verified';

  @override
  String get vaWaiting => 'Waiting';

  @override
  String get vaWillYou => 'Will you be the first?';

  @override
  String get vaKnown => 'Known scams';

  @override
  String get vaSoGood => 'So far, so good!\nPlease don\'t be the first :)';

  @override
  String get vaPublished => 'If you\'ve published an app using EFUI, send us ';

  @override
  String get vaDoNoHarm =>
      '.\nWe don\'t have to love the app, and we\'re not publicly reviewing it.\nWe\'ll check the code, and as long as it doesn\'t cause harm, it\'ll be verified.';

  @override
  String get vaPrivateFree =>
      'If your app isn\'t publicly available, don\'t worry!\nBut if people you don\'t know can download it, let us know so we can verify it.';

  @override
  String get vaDoYourPart =>
      'If we haven\'t heard from you, we\'ll assume your product is a scam until proven otherwise.\nIf you think that\'s intense, think again. Open UI is years of work, shared freely. Sending an email is the least you can do.';

  @override
  String get tsPageTitle => 'Team';

  @override
  String get tsCore => 'Core';

  @override
  String get tsTheFounderLabel =>
      'A two dimensional profile of Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Activate to send him an email.';

  @override
  String get tsTheFounder => 'The Founder';

  @override
  String get tsBoardMember => 'Board Member';

  @override
  String get tsYou => 'You?';

  @override
  String get tsMirrorLabel =>
      'A black circle with a shimmer, to mimic a mirror.';

  @override
  String get tsMirrorTip => 'Activate to send us an email';

  @override
  String get tsMirrorHint => 'Ask about joining the team.';

  @override
  String get tsNonProfit =>
      'The only thing in the way of Empathetech becoming a proper nonprofit is the head count.\nIf you believe in the mission I\'ve laid out, and have a few hours a week to spare, please reach out!\n\nIt will be fully volunteer to start. I\'m not getting paid (yet) either.\nBut, I wouldn\'t be doing this if I didn\'t have a good plan for that too.\n\nAll who are interested are encouraged to reach out, but there is a particular need for folks with experience in:\nsocial media management, fundraising, and grant writing.';

  @override
  String get tsWild => 'In the wild';

  @override
  String get ts2025BoothLabel => 'The Empathetech booth for Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Activate to open the Open Sauce exhibits page.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetech booth, and here\'s to next year!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) was a blast!\nIt was difficult to return to normal life, after being surrounded by so many kind, driven, intelligent, and creative people.\nThanks again if you stopped by the Empathetic booth, and here\'s to next year!';

  @override
  String get tsCommunity => 'Community';

  @override
  String get tsFreelance => 'Freelance';

  @override
  String get tsVideoProduction => 'Video Production';

  @override
  String get tsTranslators => 'Translators';

  @override
  String get tsAr => 'Arabic';

  @override
  String get tsEs => 'Spanish';

  @override
  String get tsFil => 'Filipino';

  @override
  String get tsFr => 'French';

  @override
  String get tsHt => 'Creole';

  @override
  String get tsZh => 'Chinese (simplified)';

  @override
  String tsProfile(Object name) {
    return '$name\'s profile';
  }

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
  String get fahTeamHint => 'Open the Empathetic folding at home team page';

  @override
  String get fahWhats => 'What\'s ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Open Folding at Home\'s about page';

  @override
  String get fahStats =>
      'Together, we\'ve earned over 350 million points.\nThat puts us in the top 2% of all teams worldwide!';

  @override
  String get csPageTitle => 'Contribute';

  @override
  String get csEveryBit =>
      'Every bit you give to Empathetech takes a byte out of big tech.';

  @override
  String get csEveryBitFix =>
      'Every bit you give to Empathetic takes a byte out of big tech.';

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
    return 'Open a link to Empathetic\'s $page';
  }

  @override
  String get csPower => 'Power';

  @override
  String get csThanks => 'Many thanks for any and all support!';
}
