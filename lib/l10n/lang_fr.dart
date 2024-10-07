import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class LangFr extends Lang {
  LangFr([String locale = 'fr']) : super(locale);

  @override
  String get gLogoHint =>
      'Logo de Empathetic LLC : un sablier en deux dimensions. Activer pour accéder à la page d\'accueil';

  @override
  String get gHomeHint => 'Ouvre la page d\'accueil';

  @override
  String get gProductsHint => 'Ouvre la page des produits';

  @override
  String get gPlanHint => 'Ouvre la page du plan';

  @override
  String get gTeamHint => 'Ouvre la page de l\'équipe';

  @override
  String get gSupportHint => 'Ouvre la page d\'assistance';

  @override
  String get gSocials => 'Réseaux sociaux';

  @override
  String get gEmail => 'E-mail';

  @override
  String gEmailTo(Object recipient) {
    return 'E-mail à $recipient';
  }

  @override
  String get gNewsletter => 'Lettre d\'information';

  @override
  String get gSettingsHint => 'Ouvre la page des paramètres';

  @override
  String get gReachOut => 'Contactez-nous';

  @override
  String get gEmpathetechGitHint => 'Ouvre la page GitHub d\'Empathetic LLC';

  @override
  String get gDontChaWish =>
      'N\'avez-vous pas envie que vos interfaces soient cool, ';

  @override
  String get gMeQ => 'comme les miennes ?';

  @override
  String get gDontCha => 'Hein ?';

  @override
  String get gDontChaHint =>
      'Ouvre la page GitHub pour le code source de cette interface';

  @override
  String get gFahIconHint =>
      'Logo de Folding at home : une molécule de protéine. Activer pour ouvrir leur site';

  @override
  String get gAnitaBorgIconHint =>
      'Logo d\'AnitaB.org : un prisme arc-en-ciel. Activer pour ouvrir leur site';

  @override
  String get gCodeDotOrgIconHint =>
      'Logo code.org : touches du clavier épelant le mot code. Activer pour ouvrir leur site';

  @override
  String get gWorldSavvyIconHint =>
      'Logo de World Savvy : un dessin au crayon de la terre. Activer pour ouvrir leur site';

  @override
  String gFiverrPage(Object user) {
    return 'Ouvre la page Fiverr de $user';
  }

  @override
  String get hsSlogan => 'Construisons un monde meilleur\bit x bit';

  @override
  String get hsSloganFix => 'Construisons un monde meilleur\npas à pas';

  @override
  String get hsVideoHint =>
      'Logo animé d\'Empathetic LLC : les lettres d\'Empathetic se transforment en un logo, un sablier en deux dimensions';

  @override
  String get psPageTitle => 'Produits';

  @override
  String get psEFUISlogan => 'Créer des applications pour tous';

  @override
  String get psEFUIDescription1 =>
      'EFUI est un kit de démarrage pour créer des environnements d\'applications réellement ';

  @override
  String get psEFUIDescription2 =>
      ' accessibles.\nEFUI gère tous les aspects de l\'accessibilité numérique...';

  @override
  String get psPlatform => 'Multiplateforme';

  @override
  String get psPlatformContent =>
      'Les applications Empathetech prennent en charge les utilisateurs sur toutes les plateformes.\nVous pouvez utiliser EFUI pour créer sur Android, iOS, Linux, MacOS, Windows et Web !';

  @override
  String get psPlatformContentFix =>
      'Les applications Empathetic prennent en charge les utilisateurs sur toutes les plateformes.\nVous pouvez utiliser EFUI pour créer sur Android, iOS, Linux, MacOS, Windows et Web !';

  @override
  String get psResponsive => 'Design réactif';

  @override
  String get psResponsiveContent =>
      'Les applications Empathetech prennent en charge les utilisateurs sur n\'importe quel écran.\nPour voir cela en action, jouez avec la fenêtre que vous utilisez actuellement !';

  @override
  String get psResponsiveContentFix =>
      'Les applications Empathetic prennent en charge les utilisateurs sur n\'importe quel écran.\nPour voir cela en action, jouez avec la fenêtre que vous utilisez actuellement !';

  @override
  String get psScreen => 'Prise en charge du lecteur d\'écran';

  @override
  String get psScreenContent =>
      'Les applications Empathetech soutiennent les utilisateurs qui en ont besoin ';

  @override
  String get psScreenContentFix =>
      'Les applications Empathetic soutiennent les utilisateurs qui en ont besoin';

  @override
  String get psTalkBackHint => 'Ouvre un lien vers la documentation TalkBack';

  @override
  String get psAnd => ' et ';

  @override
  String get psVoiceOverHint => 'Ouvre un lien vers la documentation VoiceOver';

  @override
  String get psCustom => 'Personnalisation utilisateur';

  @override
  String get psCustomContent =>
      'Les applications Empathetech soutiennent tous les utilisateurs en leur offrant la liberté de choix.\nEFUI expose chaque aspect du thème d\'une application au contrôle de l\'utilisateur.\nPour le voir en action, cliquez sur le rouage des paramètres en bas de votre écran !';

  @override
  String get psCustomContentFix =>
      'Les applications Empathetic soutiennent tous les utilisateurs en leur offrant la liberté de choix.\nEFUI expose chaque aspect du thème d\'une application au contrôle de l\'utilisateur.\nPour le voir en action, cliquez sur le rouage des paramètres en bas de votre écran !';

  @override
  String get psInternational => 'Internationalisation';

  @override
  String get psInternationalContent =>
      'Les applications Empathetech accompagnent les utilisateurs là où ils se trouvent.\nActuellement, EFUI prend en charge l\'anglais, l\'espagnol et le français.\nIl possède également une infrastructure pour des traductions ultérieures illimitées.';

  @override
  String get psInternationalContentFix =>
      'Les applications Empathetic accompagnent les utilisateurs là où ils se trouvent.\nActuellement, EFUI prend en charge l\'anglais, l\'espagnol et le français.\nIl possède également une infrastructure pour des traductions ultérieures illimitées.';

  @override
  String get psLive => 'Testez-le en direct';

  @override
  String psLiveHint(Object platform) {
    return 'L\'icône de Open UI : un paramètres bac à sable. Ouvre un lien vers Open UI sur $platform';
  }

  @override
  String get psEFUITagLine =>
      'En utilisant EFUI, vos applications peuvent toucher tous les publics.\nConstruisons ensemble un meilleur Internet !';

  @override
  String get psConsult => ' pour consultation et contractualisation.';

  @override
  String get plsPageTitle => 'Plan';

  @override
  String get plsThen => 'Ensuite';

  @override
  String get plsBefore => 'Avant cela';

  @override
  String get plsIDProblem => 'Identifier le problème';

  @override
  String get plsIDProblemContent =>
      'Les modèles économiques axés sur le profit ne sont pas durables.\n\nPar définition : Si le profit vient en premier, alors des choses comme travailler pour une mission, bien traiter les gens et consommer de manière responsable les ressources deviennent des sujets de second plan.\n\nEt cette cupidité n\'a pas été maîtrisée dans les grandes entreprises technologiques. Les géants de la technologie ne se contentent plus de prendre notre argent. Ils créent désormais des produits qui ciblent nos identités et monopolisent nos esprits.';

  @override
  String get plsBeSolution => 'Faire partie de la solution';

  @override
  String get plsBeSolutionContent =>
      'Heureusement, il existe partout dans le monde des technologues formidables qui travaillent ensemble pour un meilleur avenir. Un avenir dans lequel les fournisseurs de services et les clients entretiennent une relation active, saine et mutuellement bénéfique.\n\nLa communauté open source.\n\nÀ la base, les logiciels open source sont librement accessibles à tous. De nombreux projets peuvent également être librement modifiés et redistribués. Ce sont des logiciels qui n\'ont rien à cacher, créés par des gens qui reconnaissent que les problèmes communs nécessitent des solutions communes.\n\nAlors, comment passer du profit avant tout (source fermée) à l\'open source ? Cela prend beaucoup de temps, d\'énergie et de connaissances préalables.\n\nC\'est là que nous intervenons.';

  @override
  String get plsProvideValue => 'Fournir de la valeur';

  @override
  String get plsProvideValueContent1 =>
      'Notre mission est de rééquilibrer le pouvoir dans le domaine technologique en rendant les logiciels open source plus accessibles.\n\nNous créerons des applications accessibles et multiplateformes pour gérer facilement un écosystème d\'outils open source.\n\nNous construirons des ponts entre la communauté open source et ceux qui n\'ont pas assez de temps, d\'énergie ou de connaissances préalables.\n\nEt vous ne pouvez pas construire de ponts (ou d\'applications) sans une base solide ! C\'est pourquoi ';

  @override
  String get plsProvideValueContent2 =>
      ' existe. Nous sommes fiers de joindre les actes à la parole et avons rendu notre interface utilisateur accessible open source.\n\nConstruisons ensemble un monde meilleur, pas à pas.';

  @override
  String get fpsPageTitle => 'Plan financier';

  @override
  String get fpsPageHint => 'Ouvre la page du plan financier';

  @override
  String get fpsGoal0 => 'Couvrir les dépenses';

  @override
  String get fpsGoal1 => 'Verser un salaire minimum';

  @override
  String get fpsGoal2 => 'Verser un salaire de survie';

  @override
  String get fpsGoal3 => 'Verser un salaire décent';

  @override
  String get fpsGoal4 => 'Verser un salaire confortable';

  @override
  String fpsRaised(Object goal, Object income) {
    return '$income sur $goal collectés';
  }

  @override
  String fpsSplit(Object split) {
    return '$split sera reversé à...';
  }

  @override
  String get fpsEventual =>
      'Tous les futurs bénéfices seront partagés entre...';

  @override
  String get fpsCheck => 'Vérifiez nos calculs';

  @override
  String get fpsCheckHint =>
      'Ouvre la page GitHub pour le code source de cette interface';

  @override
  String get tsPageTitle => 'Équipe';

  @override
  String get tsCore => 'Cœur';

  @override
  String get tsTheFounderImageHint =>
      'Un photo en deux dimensions de Michael Waldron';

  @override
  String get tsTheFounder => 'Le fondateur';

  @override
  String get tsCommunity => 'Communauté';

  @override
  String get tsFreelance => 'Free-lance';

  @override
  String get tsSpanish => 'Traducteur espagnol';

  @override
  String get tsFrench => 'Traducteur français';

  @override
  String get spsPageTitle => 'Support';

  @override
  String get spsThanks => 'Merci beaucoup pour tout votre soutien !';

  @override
  String get spsGive => 'Souhaitez-vous donner...';

  @override
  String get spsTimeQ => 'Du temps ?';

  @override
  String get spsBecome => ' pour devenir un ';

  @override
  String get spsGit => 'contributeur GitHub';

  @override
  String get spsMoneyQ => 'De l\'argent ?';

  @override
  String get spsPowerQ => 'De l\'énergie ?';

  @override
  String get fahJoin => 'Rejoignez le Fold';

  @override
  String get fahIntro1 => 'Rejoignez ';

  @override
  String get fahIntro2 => ' Folding@home !';

  @override
  String get fahTeamHint =>
      'Ouvre la page de l\'équipe Empathetic de folding at home';

  @override
  String get fahWhatQ => 'Qu\'est-ce que Folding@home ?';

  @override
  String get fahWhatQHint => 'Ouvre la page à propos de folding at home';

  @override
  String get fahStats =>
      'Ensemble, nous avons gagné plus de 350 millions de points.\nCela nous place dans les 2 % des meilleures équipes du monde !';
}
