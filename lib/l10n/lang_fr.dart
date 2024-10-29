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
  String get gMissionHint => 'Ouvre la page de mission';

  @override
  String get gTeamHint => 'Ouvre la page de l\'équipe';

  @override
  String get gContributeHint => 'Ouvre la page d\'contribuer';

  @override
  String get gShare => 'Partager';

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
  String gFiverrPage(Object user) {
    return 'Ouvre la page Fiverr de $user';
  }

  @override
  String get hsSlogan => 'Construisons ensemble un monde meilleur\nbit x bit';

  @override
  String get hsSloganFix =>
      'Construisons ensemble un monde meilleur\npas à pas';

  @override
  String get hsVideoHint =>
      'Logo animé d\'Empathetic LLC : les lettres d\'Empathetic se transforment en un logo, un sablier en deux dimensions';

  @override
  String get hsPeople => 'Les gens ne sont pas des produits.';

  @override
  String get hsWell => 'Eh bien, ils ne devraient pas l\'être.';

  @override
  String get hsReality => 'La triste réalité est que nos identités, nos ';

  @override
  String get hsData => 'données';

  @override
  String get hsGold =>
      ', sont la nouvelle ruée vers l\'or des grandes entreprises technologiques.';

  @override
  String get hsRush =>
      'Et les grandes entreprises technologiques adorent se précipiter.\nGrâce à leur sprint sans fin, les films de science-fiction dystopiques deviennent réalité beaucoup trop rapidement.';

  @override
  String get hsSlow =>
      'Il est temps de ralentir.\nIl est temps que nous ayons la propriété de notre moi numérique.\nIl est temps d\'un meilleur ';

  @override
  String get hsPlan => 'plan.';

  @override
  String get psPageTitle => 'Produits';

  @override
  String get psCreate => 'Pour créer';

  @override
  String get psUse => 'Pour utiliser';

  @override
  String get psEFUISlogan => 'Créer des applications pour tous';

  @override
  String get psLike => 'Comme les utilisateurs qui ont besoin...';

  @override
  String get psAccessible => 'Commandes accessibles';

  @override
  String get psZeroStrain => 'zéro fatigue oculaire';

  @override
  String get psEverything => 'autre chose';

  @override
  String get psRandom => 'Configuration aléatoire appliquée.';

  @override
  String get psEFUIDescription =>
      'EFUI est un kit de démarrage pour créer des environnements d\'applications réellement accessibles.\nEFUI gère tous les aspects de l\'accessibilité numérique...';

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
      'En utilisant EFUI, vos applications peuvent toucher tous les publics.\n';

  @override
  String get psConsult => ' pour consultation et contractualisation.';

  @override
  String get psLearnMore => ' pour en savoir plus.';

  @override
  String get psComingSoon => 'Bientôt disponible...';

  @override
  String get psSignalHint =>
      'L\'icône de Smoke Signal. Ouvrir un lien vers le dépôt de développement.';

  @override
  String get psSignalPreview1 => 'La prochaine application d\'Empathetech, ';

  @override
  String get psSignalPreview1Fix => 'La prochaine application d\'Empathetic, ';

  @override
  String get psSignalPreview2 =>
      ', est en cours de développement.\nSmoke Signal est une application de médias sociaux conçue pour nous éloigner de nos écrans.';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal sera également entièrement auto-hébergée, grâce à ';

  @override
  String get psAPHint => 'Ouvrir un lien vers la documentation d\'Activity Pub';

  @override
  String get msPageTitle => 'Mission';

  @override
  String get msSoWe => 'Alors nous';

  @override
  String get msBy => 'Par';

  @override
  String get msFirst => 'Par premier';

  @override
  String get msIDProblem => 'Identifier le problème';

  @override
  String get msIDProblemContent =>
      'Les modèles économiques axés sur le profit ne sont pas durables.\n\nPar définition : Si le profit vient en premier, alors des choses comme travailler pour une mission, bien traiter les gens et consommer de manière responsable les ressources deviennent des sujets de second plan.\n\nEt cette cupidité n\'a pas été maîtrisée dans les grandes entreprises technologiques. Les géants de la technologie ne se contentent plus de prendre notre argent. Ils créent désormais des produits qui ciblent nos identités et monopolisent nos esprits.';

  @override
  String get msFindSolution => 'Trouver une solution';

  @override
  String get msFindSolutionContent =>
      'Heureusement, il existe partout dans le monde des technologues extraordinaires qui travaillent ensemble pour un meilleur récit.\nUn récit dans lequel les fournisseurs de services et les clients entretiennent une relation active, saine et mutuellement bénéfique.\n\nLa communauté open source.\n\nÀ la base, les logiciels open source sont librement disponibles pour que tout le monde puisse les consulter. De nombreux projets peuvent également être librement modifiés et redistribués.\nIl s\'agit de logiciels qui n\'ont rien à cacher, créés par des gens qui reconnaissent que les problèmes communs nécessitent des solutions communes.\n\nEt dans le monde merveilleux des logiciels open source, il existe une sous-catégorie : les logiciels auto-hébergés.\n\nL\'auto-hébergement nous permet de prendre n\'importe quel ordinateur non utilisé (y compris ceux de poche) et d\'y stocker nos données.\nEn auto-hébergant, nous pouvons contrôler notre propre présence numérique, plutôt que de céder le contrôle à un serveur distant, appartenant à une société peu empathique.\n\nEt il existe des versions auto-hébergées de presque tout ! D\'Adobe à Zoom, des hacktivistes passionnés créent des alternatives qui privilégient les personnes au profit.\n\nAlors, comment passe-t-on du profit/fermé à l\'open source ? Comment commencent-ils à s\'auto-héberger ?\nCela prend beaucoup de temps, d\'énergie et de connaissances préalables.\n\nC\'est là que nous intervenons.';

  @override
  String get msProvideValue => 'Faire le travail';

  @override
  String get msProvideValueContent1 =>
      'La mission d\'Empathetech est de rééquilibrer le pouvoir dans la technologie en rendant l\'auto-hébergement plus accessible.\n\nNous allons construire des applications qui permettent à chacun de posséder sa propre identité numérique.\n\nNous allons construire des ponts entre la communauté open source et ceux qui n\'ont pas le temps, l\'énergie ou les connaissances préalables nécessaires.\n\nEt on ne peut pas construire de ponts (ou d\'applications) sans fondations solides ! C\'est pourquoi ';

  @override
  String get msProvideValueContent1Fix =>
      'La mission d\'Empathetic est de rééquilibrer le pouvoir dans la technologie en rendant l\'auto-hébergement plus accessible.\n\nNous allons construire des applications qui permettent à chacun de posséder sa propre identité numérique.\n\nNous allons construire des ponts entre la communauté open source et ceux qui n\'ont pas le temps, l\'énergie ou les connaissances préalables nécessaires.\n\nEt on ne peut pas construire de ponts (ou d\'applications) sans fondations solides ! C\'est pourquoi ';

  @override
  String get msProvideValueContent2 =>
      ' existe.\nEmpathetech est fier de joindre le geste à la parole et a rendu son interface utilisateur accessible open source.\n\nConstruisons ensemble un monde meilleur, petit à petit.';

  @override
  String get msProvideValueContent2Fix =>
      ' existe.\nEmpathetic est fier de joindre le geste à la parole et a rendu son interface utilisateur accessible open source.\n\nConstruisons ensemble un monde meilleur, petit à petit.';

  @override
  String get tsPageTitle => 'Équipe';

  @override
  String get tsCore => 'Cœur';

  @override
  String get tsTheFounderImageHint =>
      'Un photo en deux dimensions de Michael Waldron. Activez pour lui envoyer un email.';

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
  String get csPageTitle => 'Contribuer';

  @override
  String get csThanks => 'Merci beaucoup pour tout votre soutien !';

  @override
  String get csEveryBit =>
      'Chaque petit don que vous faites à Empathetech représente une perte pour les grandes entreprises technologiques.';

  @override
  String get csEveryBitFix =>
      'Chaque petit don que vous faites à Empathetic représente une perte pour les grandes entreprises technologiques.';

  @override
  String get csGive => 'Souhaitez-vous donner...';

  @override
  String get csTimeQ => 'Du temps ?';

  @override
  String get csBecome => ' pour devenir un ';

  @override
  String get csGit => 'contributeur GitHub';

  @override
  String get csMoneyQ => 'De l\'argent ?';

  @override
  String get csPowerQ => 'De l\'énergie ?';

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
