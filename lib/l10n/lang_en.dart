import 'lang.dart';

/// The translations for English (`en`).
class LangEn extends Lang {
  LangEn([String locale = 'en']) : super(locale);

  @override
  String get gLogoHint =>
      'Empathetic LLC logo: a 2D hourglass. Activate to go to the home page';

  @override
  String get gHomeHint => 'Open the home page';

  @override
  String get gProductsHint => 'Open the products page';

  @override
  String get gPlanHint => 'Open the plan page';

  @override
  String get gTeamHint => 'Open the team page';

  @override
  String get gSupportHint => 'Open the support page';

  @override
  String get gSocials => 'Socials';

  @override
  String get gEmail => 'Email';

  @override
  String gEmailTo(Object recipient) {
    return 'Email $recipient';
  }

  @override
  String get gSettingsHint => 'Open the settings page';

  @override
  String get gReachOut => 'Reach out';

  @override
  String get gEFUISourceHint => 'Activate to open the GitHub page for EFUI';

  @override
  String get gEmpathetechGitHint =>
      'Activate to open the GitHub page for Empathetic LLC';

  @override
  String get gDontChaWish => 'Don\'t cha wish your frontend was fun ';

  @override
  String get gMeQ => 'like me?';

  @override
  String get gDontCha => 'Don\'t cha?';

  @override
  String get gDontChaHint =>
      'Activate to open the GitHub page for this screen\'s source code';

  @override
  String get gFahIconHint =>
      'Folding at home logo, activate to open their site';

  @override
  String get gAnitaBorgIconHint =>
      'AnitaB.org logo, activate to open their site';

  @override
  String get gCodeDotOrgIconHint =>
      'code.org logo, activate to open their site';

  @override
  String get gWorldSavvyIconHint =>
      'World Savvy logo, activate to open their site';

  @override
  String get hsSlogan => 'Bringing OSS\nTo us';

  @override
  String get hsSloganFix => 'Bringing O-S-S\nto us';

  @override
  String get hsVideoHint =>
      'Empathetic LLC logo animation: Empathetic\'s name transforms into its logo';

  @override
  String get csReversedNote =>
      'NOTE: The top bar\'s theme colors are (intentionally) reversed!';

  @override
  String get psPageTitle => 'Products';

  @override
  String get psEFUISlogan => 'Build apps for anyone';

  @override
  String get psEFUIDescription =>
      'EFUI is an open source package that creates a holistic foundation for digital accessibility,\nby providing a starter kit in every pillar of digital accessibility:';

  @override
  String get psPlatform => 'Platform availability';

  @override
  String get psPlatformContent =>
      'EFUI builds fully cross platform apps; Android, iOS, Linux, MacOS, Windows and Web!';

  @override
  String get psScreen => 'Screen reader support';

  @override
  String get psScreenContent =>
      'Everything within EFUI has been manually verified with ';

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
      'The only way to be truly accessible for ALL customers is to empower them with the freedom of choice.\nAnd that\'s exactly what EFUI does; it enables every aspect of an app\'s theme to be controlled by the user.';

  @override
  String get psInternational => 'Internationalization';

  @override
  String get psInternationalContent =>
      'All of EFUI\'s external text has been translated to Spanish. With this, EFUI provides well organized infrastructure for unlimited future translations.';

  @override
  String get psResponsive => 'Responsive design';

  @override
  String get psResponsiveContent =>
      'EFUI is full of tools to aid in building apps that elegantly respond to screen space. To see it in action, just mess around with the app window you\'re using right now!';

  @override
  String get psEFUITagLine =>
      'When built with EFUI, your apps can truly reach any audience.\nLet\'s make the internet a more accessible place together!';

  @override
  String get psConsult => ' for consultation and contracting';

  @override
  String get plsPageTitle => 'Plan';

  @override
  String get plsThen => 'Then';

  @override
  String get plsBefore => 'Before this';

  @override
  String get plsIDProblem => 'Identify the problem';

  @override
  String get plsIDProblemContent =>
      'It\'s clear that profit first business models aren\'t sustainable.\n\nBy definition, if profit comes first, things like customer wellbeing and global responsibility are afterthoughts.\n\nEspecially in technology, where the service providers are often disconnected from their customers.';

  @override
  String get plsBeSolution => 'Be a part of the solution';

  @override
  String get plsBeSolutionContent =>
      'Fortunately, there are amazing technologists all over the world working together towards a better narrative. One where the service providers and the customers have an active, healthy, and mutually beneficial relationship.\n\nThe open source community.\n\nSoftware is considered open source when the code is freely available for anyone to view (always), modify (often), and/or distribute (sometimes). It\'s software built by folx who recognize shared problems require shared solutions.\n\nSo, how does one make the switch from profit first (closed source) to open source? It takes a lot of time, energy, and prior knowledge.\n\nThat\'s where we come in.';

  @override
  String get plsProvideValue => 'Provide value';

  @override
  String get plsProvideValueContent1 =>
      'Our mission is to re-balance the power in tech by making open source software more accessible.\n\nWe will build bridges between the open source community and those without enough time, energy, or prior knowledge.\n\nWe will build accessible, cross-platform applications for easily managing an ecosystem of open source tools.';

  @override
  String get plsProvideValueContent2 =>
      'But, you can\'t build bridges (or apps) without a strong foundation! That\'s why ';

  @override
  String get plsProvideValueContent3 =>
      ' exists. We take pride in meeting words with actions, and have pro-actively made our UI open source.';

  @override
  String get plsDoItRight => 'Do it right';

  @override
  String get plsDoItRightContent1 =>
      'If the service providers remember to stay Empathetech, ';

  @override
  String get plsDoItRightContent1Fix =>
      'If the service providers remember to stay Empathetic,';

  @override
  String get plsSaaS => 'Software as a Service';

  @override
  String get plsSaaSHint =>
      'Open the Wikipedia article for software as a service';

  @override
  String get plsDoItRightContent2 => ' (SaaS) can benefit everyone.';

  @override
  String get plsDoItRightContent3 =>
      'For starters: a closed source ecosystem of open source software would be paradoxical. So, while official licensing commitments will come with official launches, Empathetech apps will release under a ';

  @override
  String get plsDoItRightContent3Fix =>
      'For starters: a closed source ecosystem of open source software would be paradoxical. So, while official licensing commitments will come with official launches, Empathetic apps will release under a ';

  @override
  String get plsDualLicense => 'dual license';

  @override
  String get plsDualLicenseHint =>
      'Open the Wikipedia article for Multi-licensing';

  @override
  String get plsDoItRightContent4 =>
      'Also, for the closed source version(s)...\n\n\t\t1. All Empathetech SaaS products will have a lifetime option.\n\t\t2. Selling someone else\'s personal information is immoral; Empathetech software will never auction your digital identity.\n\nOne last note on bridges. A bridge without a place to go, or anyone that wants to use it, isn\'t a bridge; it\'s a waste of resources.\n\nSo, another commitment: regardless of official structure (currently LLC) Empathetech will operate as a not-for-profit, mission based entity. Meaning...\n\n\t\t- 100% of net profit derived from all open source ecosystem app(s) will be committed back to the projects they are built upon\n\t\t- 100% of net profit derived from all other sources (consulting, donations, merch, etc.) will be committed to promoting global equity in tech education.';

  @override
  String get plsDoItRightContent4Fix =>
      'Also, for the closed source version(s)...\n\n\t\t1. All Empathetic SaaS products will have be a lifetime option.\n\t\t2. Selling someone else\'s personal information is immoral; Empathetic software will never auction your digital identity.\n\nOne last note on bridges. A bridge without a place to go, or anyone that wants to use it, isn\'t a bridge; it\'s a waste of resources.\n\nSo, another commitment: regardless of official structure (currently LLC) Empathetic will operate as a not-for-profit, mission based entity. Meaning...\n\n\t\t- 100% of net profit derived from all open source ecosystem app(s) will be committed back to the projects they are built upon\n\t\t- 100% of net profit derived from all other sources (consulting, donations, merch, etc.) will be committed to promoting global equity in tech education.';

  @override
  String get plsDoItRightContent5 => 'Checkout the ';

  @override
  String get fpsPageTitle => 'Financial plan';

  @override
  String get fpsPageHint => 'Open the financial plan page';

  @override
  String fpsRaised(Object goal, Object income) {
    return '$income of $goal raised';
  }

  @override
  String get fpsYear => 'for 2023';

  @override
  String fpsSplit(Object profit) {
    return 'The $profit profit will be evenly split amongst...';
  }

  @override
  String get fpsEventual => 'eventual';

  @override
  String get fpsAnitaCNavHint =>
      'Open a link to AnitaB.org on Charity Navigator';

  @override
  String get fpsCodeCNavHint => 'Open a link to code.org on Charity Navigator';

  @override
  String get fpsSavvyCNavHint =>
      'Open a link to World Savvy on Charity Navigator';

  @override
  String get fpsAnitaMission =>
      'AnitaB.org envisions a future where the people who imagine and build technology mirror the people and societies for whom they build it. They connect, inspire, and guide women in computing, and organizations that view technology innovation as a strategic imperative.';

  @override
  String get fpsCodeMission =>
      'Code.org is an education innovation nonprofit dedicated to the vision that every student in every school has the opportunity to learn computer science as part of their core K-12 education.';

  @override
  String get fpsSavvyMission =>
      'World Savvy collaborates with educators and school and district leaders to build future-ready learning environments that are inclusive, adaptive, and prepare students to thrive today and in the future.';

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
  String get tsTheFounderImageHint => 'A 2D profile photo of Michael Waldron';

  @override
  String get tsTheFounder => 'The Founder';

  @override
  String get tsCommunity => 'Community';

  @override
  String get tsFreelance => 'Freelance';

  @override
  String get tsGALinkHint => 'Graphic Alert\'s Fiverr page';

  @override
  String get tsGADescription =>
      'Implemented the logo animation in After Effects';

  @override
  String get spsPageTitle => 'Support';

  @override
  String get spsThanks => 'Many thanks for any and all support!';

  @override
  String get spsGive => 'Would you like to give...';

  @override
  String get spsTimeQ => 'Time?';

  @override
  String get spsBecome => ' about becoming a ';

  @override
  String get spsGit => 'GitHub contributor';

  @override
  String get spsMoneyQ => 'Money?';

  @override
  String get spsPowerQ => 'Power?';

  @override
  String get fahJoin => 'Join the Fold!';

  @override
  String get fahIntro => 'Empathetech has a Folding@home';

  @override
  String get fahIntroFix => 'Empathetic has a Folding@home';

  @override
  String get fahTeamHint => 'Open the Empathetic LLC folding at home team page';

  @override
  String get fahWhatQ => 'What\'s Folding@home?';

  @override
  String get fahWhatQHint => 'Open Folding at Home\'s about page';

  @override
  String get fahStats =>
      'Together, we\'ve earned over 200 million points!\nThat puts Empathetech in the top 2% of all teams worldwide!';

  @override
  String get fahStatsFix =>
      'Together, we\'ve earned over 200 million points!\nThat puts Empathetic in the top 2% of all teams worldwide!';
}
