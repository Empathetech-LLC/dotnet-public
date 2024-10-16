import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LangEn extends Lang {
  LangEn([String locale = 'en']) : super(locale);

  @override
  String get gLogoHint =>
      'Empathetic LLC logo: a two dimensional hourglass. Activate to go to the home page';

  @override
  String get gHomeHint => 'Open the home page';

  @override
  String get gProductsHint => 'Open the products page';

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
  String get gSettingsHint => 'Open the settings page';

  @override
  String get gReachOut => 'Reach out';

  @override
  String get gEmpathetechGitHint => 'Open the GitHub page for Empathetic LLC';

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
  String get gFahIconHint =>
      'Folding at home logo: a protein molecule. Activate to open their site';

  @override
  String get gAnitaBorgIconHint =>
      'AnitaB.org logo: a rainbow prism. Activate to open their site';

  @override
  String get gCodeDotOrgIconHint =>
      'code.org logo: keyboard keys spelling the word code. Activate to open their site';

  @override
  String get gWorldSavvyIconHint =>
      'World Savvy logo: a drawing of the globe in pencil style. Activate to open their site';

  @override
  String gFiverrPage(Object user) {
    return 'Open $user\'s Fiverr page';
  }

  @override
  String get hsSlogan => 'Let\'s build a better world together\nbit x bit';

  @override
  String get hsSloganFix => 'Let\'s build a better world together\nbit by bit';

  @override
  String get hsVideoHint =>
      'Empathetic LLC animated logo: the letters in Empathetic transform into the two dimensional hourglass logo';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psCreate => 'For creating';

  @override
  String get psUse => 'For using';

  @override
  String get psEFUISlogan => 'Build apps for anyone';

  @override
  String get psEFUIDescription =>
      'EFUI is a starter kit for building truly accessible apps.\nEFUI handles every aspect of digital accessibility...';

  @override
  String get psPlatform => 'Platform availability';

  @override
  String get psPlatformContent =>
      'Empathetech apps support users on all platforms.\nYou can use EFUI to create on Android, iOS, Linux, MacOS, Windows and Web!';

  @override
  String get psPlatformContentFix =>
      'Empathetic apps support users on all platforms.\nYou can use EFUI to create on Android, iOS, Linux, MacOS, Windows and Web!';

  @override
  String get psResponsive => 'Responsive design';

  @override
  String get psResponsiveContent =>
      'Empathetech apps support users on any screen.\nTo see it in action, play with the window you\'re using right now!';

  @override
  String get psResponsiveContentFix =>
      'Empathetic apps support users on any screen.\nTo see it in action, play with the window you\'re using right now!';

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
      'Empathetech apps support all users by empowering them with the freedom of choice.\nEFUI exposes every aspect of an app\'s theme to be controlled by the user.\nTo see it in action, click the settings cog on the bottom of your screen!';

  @override
  String get psCustomContentFix =>
      'Empathetic apps support all users by empowering them with the freedom of choice.\nEFUI exposes every aspect of an app\'s theme to be controlled by the user.\nTo see it in action, click the settings cog on the bottom of your screen!';

  @override
  String get psInternational => 'Internationalization';

  @override
  String get psInternationalContent =>
      'Empathetech apps support users where they are.\nCurrently, EFUI supports English, Spanish, French.\nAnd, infrastructure for unlimited future translations.';

  @override
  String get psInternationalContentFix =>
      'Empathetic apps support users where they are.\nCurrently, EFUI supports English, Spanish, French.\nAnd, infrastructure for unlimited future translations.';

  @override
  String get psLive => 'See it live';

  @override
  String psLiveHint(Object platform) {
    return 'The icon for Open UI: a settings sandbox. Open a link to Open UI on $platform';
  }

  @override
  String get psEFUITagLine =>
      'When built with EFUI, your apps can reach any audience.\n';

  @override
  String get psConsult => ' for consultation and contracting.';

  @override
  String get psLearnMore => ' to learn more.';

  @override
  String get psComingSoon => 'Coming soon...';

  @override
  String get psSignalHint =>
      'The icon for Smoke Signal. Open a link to the development repo.';

  @override
  String get psSignalPreview1 => 'Empathetech\'s next app, ';

  @override
  String get psSignalPreview1Fix => 'Empathetic\'s next app, ';

  @override
  String get psSignalPreview2 =>
      ', is in development.\nSmoke Signal is a social media app designed to keep us off our screens.';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal will also be fully self hosted, thanks to ';

  @override
  String get psAPHint => 'Open a link to Activity Pub documentation';

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
      'Empathetech\'s mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will builds apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent1Fix =>
      'Empathetic\'s mission is to re-balance the power in tech by making self hosting more accessible.\n\nWe will builds apps that enable anyone to own their digital identity.\n\nWe will build bridges between the open source community and those without the required time, energy, or prior knowledge.\n\nAnd you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get msProvideValueContent2 =>
      ' exists.\nEmpathetech takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get msProvideValueContent2Fix =>
      ' exists.\nEmpathetic takes pride in meeting words with actions, and have made our accessible UI open source.\n\nLet\'s build a better world together, bit by bit.';

  @override
  String get fpsPageTitle => 'Financial plan';

  @override
  String get fpsPageHint => 'Open the financial plan page';

  @override
  String get fpsGoal0 => 'Cover expenses';

  @override
  String get fpsGoal1 => 'Pay minimum wage';

  @override
  String get fpsGoal2 => 'Pay a survivable wage';

  @override
  String get fpsGoal3 => 'Pay a livable wage';

  @override
  String get fpsGoal4 => 'Pay a comfortable wage';

  @override
  String fpsRaised(Object goal, Object income) {
    return '$income of $goal raised';
  }

  @override
  String fpsSplit(Object split) {
    return '$split will be donated to...';
  }

  @override
  String get fpsEventual => 'Any future profits will be shared with...';

  @override
  String get fpsCheck => 'Check our math';

  @override
  String get fpsCheckHint =>
      'Open a GitHub link to the source code for this screen';

  @override
  String get tsPageTitle => 'Team';

  @override
  String get tsCore => 'Core';

  @override
  String get tsTheFounderImageHint =>
      'A two dimensional profile of Michael Waldron. Activate to send him an email.';

  @override
  String get tsTheFounder => 'The Founder';

  @override
  String get tsCommunity => 'Community';

  @override
  String get tsFreelance => 'Freelance';

  @override
  String get tsSpanish => 'Spanish translator';

  @override
  String get tsFrench => 'French translator';

  @override
  String get csPageTitle => 'Contribute';

  @override
  String get csThanks => 'Many thanks for any and all support!';

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
  String get csPowerQ => 'Power?';

  @override
  String get fahJoin => 'Join the Fold';

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
}
