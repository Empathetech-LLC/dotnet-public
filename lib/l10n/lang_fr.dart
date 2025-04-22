// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class LangFr extends Lang {
  LangFr([String locale = 'fr']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'un sablier en deux dimensions.';

  @override
  String get gEmpathLogoHint => 'Activer pour accéder à la page d\'accueil.';

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
  String gLogoLabel(Object thing) {
    return 'Logo de $thing : ';
  }

  @override
  String gIconLabel(Object app) {
    return 'L\'icône de $app : ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Télécharger $app pour $platform.';
  }

  @override
  String get gRepoHint => 'Ouvrir un lien vers le dépôt de développement.';

  @override
  String get gEmpathetechGitHint => 'Ouvre la page GitHub d\'Empathetic LLC';

  @override
  String get gReachOut => 'Contactez-nous';

  @override
  String gFiverrPage(Object user) {
    return 'Ouvre la page Fiverr de $user';
  }

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
  String get hsSlogan => 'Construisons ensemble un monde meilleur\nbit x bit';

  @override
  String get hsSloganFix =>
      'Construisons ensemble un monde meilleur\npas à pas';

  @override
  String get hsVideoLabel =>
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
      'Heureusement, il existe partout dans le monde des technologues extraordinaires qui travaillent ensemble pour un meilleur récit.\nUn récit dans lequel les fournisseurs de services et les clients entretiennent une relation active, saine et mutuellement bénéfique.\n\nLa communauté open source.\n\nÀ la base, les logiciels open source sont librement disponibles pour que tout le monde puisse les consulter. De nombreux projets peuvent également être librement modifiés et redistribués.\nIl s\'agit de logiciels qui n\'ont rien à cacher, créés par des gens qui reconnaissent que les problèmes communs nécessitent des solutions communes.\n\nEt dans le monde merveilleux des logiciels open source, il existe une sous-catégorie : les logiciels auto-hébergés.\n\nL\'auto-hébergement nous permet de prendre n\'importe quel ordinateur non utilisé (y compris ceux de poche) et d\'y stocker nos données.\nEn auto-hébergant, nous pouvons contrôler notre propre présence numérique, plutôt que de céder le contrôle à un serveur distant, appartenant à une société peu empathique.\n\nEt il existe des versions auto-hébergées de presque tout ! D\'Adobe à Zoom, des hacktivistes passionnés créent des alternatives qui privilégient les personnes au profit.\n\nAlors, comment passe-t-on du profit/fermé à l\'open source ? Comment commencent-ils à s\'auto-héberger ?\nCela prend beaucoup de temps, d\'énergie et de connaissances préalables.\n\nC\'est là que nous intervenons.';

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
  String get psPageTitle => 'Produits';

  @override
  String get psCreator => 'Pour créer';

  @override
  String get psUser => 'Pour utiliser';

  @override
  String get psOpenUISlogan => 'Créer des applications pour tous';

  @override
  String get psLike => 'Comme les utilisateurs qui ont besoin...';

  @override
  String get psAccessible => 'Commandes accessibles';

  @override
  String get psZeroStrain => 'zéro fatigue oculaire';

  @override
  String get psEverything => 'autre chose';

  @override
  String get psTryMe => 'Essaie-moi !';

  @override
  String get psRandom => 'Configuration aléatoire appliquée.';

  @override
  String get psOpenUIIs => 'Open UI est un générateur d\'applications.';

  @override
  String get psShowDemo => 'Afficher la démo';

  @override
  String get psHideDemo => 'Masquer la démo';

  @override
  String get psOpenUIDemo =>
      'Démonstration de Open UI créant une nouvelle application.';

  @override
  String get psFoundation =>
      'Il crée les bases d\'applications accessibles, multiplateformes, multilingues et prêtes à être produites en un seul clic.';

  @override
  String get psLocal =>
      'Tout fonctionne sur votre ordinateur. Il n\'y a pas d\'identifiants, de cartes de crédit ou de cookies.';

  @override
  String get psRequirements =>
      'Les seules exigences sont une connexion Internet et une idée.';

  @override
  String get psFlutterToo => '...et Flutter...';

  @override
  String get psHow => 'Comment ça marche ?';

  @override
  String get psEFUIsHow => 'Open UI vous permet de démarrer avec, ';

  @override
  String get psSimplifies =>
      'EFUI est une bibliothèque permettant de créer des applications véritablement accessibles.\nCela simplifie...';

  @override
  String get psPlatform => 'Multiplateforme';

  @override
  String get psPlatformContent =>
      'Vous pouvez utiliser EFUI pour créer sur Android, iOS, Linux, macOS, Windows et Web !';

  @override
  String get psResponsive => 'Design réactif';

  @override
  String get psResponsiveContent =>
      'Pour voir cela en action, jouez avec la fenêtre que vous utilisez actuellement !';

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
      'La seule façon d\'être véritablement accessible à TOUS les clients est de leur donner la liberté de choix !\nEFUI fournit une expérience utilisateur élégante pour un contrôle total sur l\'apparence d\'une application.';

  @override
  String get psInternational => 'Internationalisation';

  @override
  String get psInternationalContent =>
      'Les applications Empathetech ont été traduites en espagnol et en français (jusqu\'à présent).\nEFUI fournit également l\'infrastructure pour des traductions futures illimitées.';

  @override
  String get psInternationalContentFix =>
      'Les applications Empathetic ont été traduites en espagnol et en français (jusqu\'à présent).\nEFUI fournit également l\'infrastructure pour des traductions futures illimitées.';

  @override
  String get psGetStarted => 'Testez-le en direct';

  @override
  String get psOpenUIIconLabel => 'un paramètres bac à sable.';

  @override
  String get psEFUITagLine =>
      'En utilisant EFUI, vos applications peuvent toucher tous les publics !\n';

  @override
  String get psConsult => ' pour consultation et contractualisation.';

  @override
  String get psLearnMore => ' pour en savoir plus.';

  @override
  String get psSOSIconLabel => 'Une icône de notification aux couleurs vives.';

  @override
  String get psSOSDescription =>
      'Une caméra, une balise SOS et une liste de vos droits, le tout au même endroit.';

  @override
  String get psFreeSOS => 'InstaSOS est entièrement gratuit et le code est ';

  @override
  String get psOpenSource => 'open source';

  @override
  String get psConsider => 'Veuillez envisager de ';

  @override
  String get psContributing => 'contribuer';

  @override
  String get psSAPS => ' au support des logiciels en tant que service public.';

  @override
  String get psComingSoon => 'Bientôt disponible...';

  @override
  String get psSignalPreview1 => 'La prochaine application d\'Empathetech, ';

  @override
  String get psSignalPreview1Fix => 'La prochaine application d\'Empathetic, ';

  @override
  String get psSignalPreview2 =>
      ', est en cours de développement.\nSmoke Signal est une application de réseau social conçue pour nous éloigner de nos écrans.';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal sera également entièrement auto-hébergée, grâce à ';

  @override
  String get psAPHint => 'Ouvrir un lien vers la documentation d\'Activity Pub';

  @override
  String get tsPageTitle => 'Équipe';

  @override
  String get tsCore => 'Cœur';

  @override
  String get tsTheFounderLabel =>
      'Un photo en deux dimensions de Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Activez pour lui envoyer un email.';

  @override
  String get tsTheFounder => 'Le fondateur';

  @override
  String get tsCommunity => 'Communauté';

  @override
  String get tsFreelance => 'Free-lance';

  @override
  String tsProfile(Object name) {
    return 'Profil de $name';
  }

  @override
  String get tsSpanish => 'Traducteur espagnol';

  @override
  String get tsFrench => 'Traducteur français';

  @override
  String get fahJoin => 'Rejoignez le Fold';

  @override
  String get fahIconLabel =>
      'Logo de Folding at home : une molécule de protéine.';

  @override
  String get fahIconHint => 'Activer pour ouvrir leur site.';

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

  @override
  String get csPageTitle => 'Contribuer';

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
  String get csThanks => 'Merci beaucoup pour tout votre soutien !';
}
