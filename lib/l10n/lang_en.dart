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
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folx who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self hosting software.\n\nSelf hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get msProvideValue => 'Doing the work';

  @override
  String get msProvideValueContent1 =>
      'The Empathetech mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent1Fix =>
      'The Empathetic mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent2 =>
      ' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get msProvideValueContent2Fix =>
      ' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psCreator => 'For creating';

  @override
  String get psUser => 'For using';

  @override
  String get psOpenUISlogan => 'Build apps for anyone';

  @override
  String get psLike => 'Like users who need...';

  @override
  String get psAccessible => 'Accessible controls';

  @override
  String get psZeroStrain => 'zero eye strain';

  @override
  String get psEverything => 'everything in-between';

  @override
  String get psTryMe => 'Try me!';

  @override
  String get psRandom => 'Random config applied.';

  @override
  String get psOpenUIIs => 'Open UI is an app generator.';

  @override
  String get psShowDemo => 'Show demo';

  @override
  String get psHideDemo => 'Hide demo';

  @override
  String get psOpenUIDemo => 'Demonstration of Open UI creating a new app.';

  @override
  String get psFoundation =>
      'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.';

  @override
  String get psLocal =>
      'Everything runs on your computer. There are no credentials, credit cards, or cookies.';

  @override
  String get psRequirements =>
      'The only requirements are an internet connection and an idea.';

  @override
  String get psFlutterToo => '...and Flutter...';

  @override
  String get psHow => 'How does it work?';

  @override
  String get psEFUIsHow =>
      'Open UI is built upon, and get\'s you started with, ';

  @override
  String get psSimplifies =>
      'EFUI is a library for building truly accessible apps.\nIt simplifies...';

  @override
  String get psPlatform => 'Platform availability';

  @override
  String get psPlatformContent =>
      'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get psResponsive => 'Responsive design';

  @override
  String get psResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get psScreen => 'Screen reader support';

  @override
  String get psScreenContent => 'Empathetech apps support users who need ';

  @override
  String get psScreenContentFix => 'Empathetic apps support users who need ';

  @override
  String get psTalkBackHint => 'Open a link to TalkBack documentation';

  @override
  String get psAnd => ' and ';

  @override
  String get psVoiceOverHint => 'Open a link to VoiceOver documentation';

  @override
  String get psCustom => 'User customization';

  @override
  String get psCustomContent =>
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get psInternational => 'Internationalization';

  @override
  String get psInternationalContent =>
      'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get psInternationalContentFix =>
      'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get psGetStarted => 'Get started';

  @override
  String get psOpenUIIconLabel => 'a settings sandbox.';

  @override
  String get psEFUITagLine =>
      'When built with EFUI, your apps can truly reach any audience!\n';

  @override
  String get psConsult => ' for consultation and contracting.';

  @override
  String get psLearnMore => ' to learn more.';

  @override
  String get psSOSIconLabel => 'a loudly colored notification bell.';

  @override
  String get psSOSDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.';

  @override
  String get psDocsLabel => 'How it works.';

  @override
  String get psDocsHint => 'Open a link to the README';

  @override
  String get psSafeSOS => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get psFreeSOS => 'It\'s completely free and the code is ';

  @override
  String get psOpenSource => 'open source';

  @override
  String get psConsider => 'Please consider ';

  @override
  String get psContributing => 'contributing';

  @override
  String get psSAPS => ' to support software as a public service.';

  @override
  String get psComingSoon => 'Coming soon...';

  @override
  String get psSignalPreview1 => 'The next Empathetech app, ';

  @override
  String get psSignalPreview1Fix => 'The next Empathetic app, ';

  @override
  String get psSignalPreview2 =>
      ', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal will also be fully self hosted, thanks to ';

  @override
  String get psAPHint => 'Open a link to Activity Pub documentation';

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
  String get fahWhatQ => 'What\'s Folding@home?';

  @override
  String get fahWhatQHint => 'Open Folding at Home\'s about page';

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
  String get csGive => 'Would you like to give...';

  @override
  String get csTimeQ => 'Time?';

  @override
  String get csBecome => ' about becoming a ';

  @override
  String get csGit => 'GitHub contributor';

  @override
  String get csMoneyQ => 'Money?';

  @override
  String csOpenLink(Object page) {
    return 'Open a link to Empathetic\'s $page';
  }

  @override
  String get csPowerQ => 'Power?';

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
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative.\nOne where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nAt its core, open source software is freely available for anyone to view. Many projects can also be freely modified and redistributed.\nIt\'s software with nothing to hide, built by folx who recognize shared problems require shared solutions.\n\nAnd in the wonderful world of open source software, there lies a sub category: self hosting software.\n\nSelf hosting lets us take any not-in-use computer (pocket sized ones too) and store our data there.\nBy self hosting, we can control our own digital presence, rather than sign away control to some far away server, owned by an un-empathetic corporation.\n\nAnd there are self hosted versions of just about everything! From Adobe to Zoom, there are passionate hacktivists building alternatives that put people over profits.\n\nSo, how does one make the switch from profit first/closed source to open source? How do they start self hosting?\nIt takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get msProvideValue => 'Doing the work';

  @override
  String get msProvideValueContent1 =>
      'The Empathetech mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent1Fix =>
      'The Empathetic mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will build apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent2 =>
      ' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get msProvideValueContent2Fix =>
      ' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psCreator => 'For creating';

  @override
  String get psUser => 'For using';

  @override
  String get psOpenUISlogan => 'Build apps for anyone';

  @override
  String get psLike => 'Like users who need...';

  @override
  String get psAccessible => 'Accessible controls';

  @override
  String get psZeroStrain => 'zero eye strain';

  @override
  String get psEverything => 'everything in-between';

  @override
  String get psTryMe => 'Try me!';

  @override
  String get psRandom => 'Random config applied.';

  @override
  String get psOpenUIIs => 'Open UI is an app generator.';

  @override
  String get psShowDemo => 'Show demo';

  @override
  String get psHideDemo => 'Hide demo';

  @override
  String get psOpenUIDemo => 'Demonstration of Open UI creating a new app.';

  @override
  String get psFoundation =>
      'It creates the foundation for accessible, cross-platform, multi-language, production ready apps in one click.';

  @override
  String get psLocal =>
      'Everything runs on your computer. There are no credentials, credit cards, or cookies.';

  @override
  String get psRequirements =>
      'The only requirements are an internet connection and an idea.';

  @override
  String get psFlutterToo => '...and Flutter...';

  @override
  String get psHow => 'How does it work?';

  @override
  String get psEFUIsHow =>
      'Open UI is built upon, and get\'s you started with, ';

  @override
  String get psSimplifies =>
      'EFUI is a library for building truly accessible apps.\nIt simplifies...';

  @override
  String get psPlatform => 'Platform availability';

  @override
  String get psPlatformContent =>
      'You can use EFUI to create on Android, iOS, Linux, macOS, Windows and Web!';

  @override
  String get psResponsive => 'Responsive design';

  @override
  String get psResponsiveContent =>
      'To see it in action, play with the window you\'re using right now!';

  @override
  String get psScreen => 'Screen reader support';

  @override
  String get psScreenContent => 'Empathetech apps support users who need ';

  @override
  String get psScreenContentFix => 'Empathetic apps support users who need ';

  @override
  String get psTalkBackHint => 'Open a link to TalkBack documentation';

  @override
  String get psAnd => ' and ';

  @override
  String get psVoiceOverHint => 'Open a link to VoiceOver documentation';

  @override
  String get psCustom => 'User customization';

  @override
  String get psCustomContent =>
      'The only way to be truly accessible to ALL customers is to empower them with the freedom of choice!\nEFUI provides an elegant UX for full control over an app\'s appearance.';

  @override
  String get psInternational => 'Internationalization';

  @override
  String get psInternationalContent =>
      'Empathetech apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get psInternationalContentFix =>
      'Empathetic apps have been translated to Spanish and French (so far).\nEFUI also provides the infrastructure for unlimited future translations.';

  @override
  String get psGetStarted => 'Get started';

  @override
  String get psOpenUIIconLabel => 'a settings sandbox.';

  @override
  String get psEFUITagLine =>
      'When built with EFUI, your apps can truly reach any audience!\n';

  @override
  String get psConsult => ' for consultation and contracting.';

  @override
  String get psLearnMore => ' to learn more.';

  @override
  String get psSOSIconLabel => 'a loudly colored notification bell.';

  @override
  String get psSOSDescription =>
      'A camera, SOS beacon, and list of your rights all in one place.\nIt\'s available in English, Arabic, Spanish, Filipino, French, Creole, Simplified Chinese, and supports screen readers.';

  @override
  String get psDocsLabel => 'How it works.';

  @override
  String get psDocsHint => 'Open a link to the README';

  @override
  String get psSafeSOS => 'InstaSOS has no accounts, cookies, or ads.\n';

  @override
  String get psFreeSOS => 'It\'s completely free and the code is ';

  @override
  String get psOpenSource => 'open source';

  @override
  String get psConsider => 'Please consider ';

  @override
  String get psContributing => 'contributing';

  @override
  String get psSAPS => ' to support software as a public service.';

  @override
  String get psComingSoon => 'Coming soon...';

  @override
  String get psSignalPreview1 => 'The next Empathetech app, ';

  @override
  String get psSignalPreview1Fix => 'The next Empathetic app, ';

  @override
  String get psSignalPreview2 =>
      ', is in development.\nSmoke Signal is a social network app designed to keep us off our screens.';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal will also be fully self hosted, thanks to ';

  @override
  String get psAPHint => 'Open a link to Activity Pub documentation';

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
  String get fahWhatQ => 'What\'s Folding@home?';

  @override
  String get fahWhatQHint => 'Open Folding at Home\'s about page';

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
  String get csGive => 'Would you like to give...';

  @override
  String get csTimeQ => 'Time?';

  @override
  String get csBecome => ' about becoming a ';

  @override
  String get csGit => 'GitHub contributor';

  @override
  String get csMoneyQ => 'Money?';

  @override
  String csOpenLink(Object page) {
    return 'Open a link to Empathetic\'s $page';
  }

  @override
  String get csPowerQ => 'Power?';

  @override
  String get csThanks => 'Many thanks for any and all support!';
}
