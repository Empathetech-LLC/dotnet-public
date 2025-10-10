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
  String gLearn(Object name) {
    return 'En savoir plus sur $name';
  }

  @override
  String get gHomeHint => 'Ouvre la page d\'accueil';

  @override
  String get gProductsHint => 'Ouvrir une page produit';

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
  String get gAnEmail => 'un e-mail';

  @override
  String get gEmailHint => 'Ouvre votre application de messagerie';

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
  String gImageCredit(Object creator) {
    return 'Crédit image : $creator';
  }

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
      'La mission d\'Empathetech est de rééquilibrer le pouvoir dans la technologie en rendant l\'auto-hébergement plus accessible.\n\nNous allons construire des applications qui permettent à chacun de posséder sa propre identité numérique.\nNous allons construire des ponts entre la communauté open source et ceux qui n\'ont pas le temps, l\'énergie ou les connaissances préalables nécessaires.\n\nEt on ne peut pas construire de ponts (ou d\'applications) sans fondations solides ! C\'est pourquoi ';

  @override
  String get msProvideValueContent1Fix =>
      'La mission d\'Empathetic est de rééquilibrer le pouvoir dans la technologie en rendant l\'auto-hébergement plus accessible.\n\nNous allons construire des applications qui permettent à chacun de posséder sa propre identité numérique.\nNous allons construire des ponts entre la communauté open source et ceux qui n\'ont pas le temps, l\'énergie ou les connaissances préalables nécessaires.\n\nEt on ne peut pas construire de ponts (ou d\'applications) sans fondations solides ! C\'est pourquoi ';

  @override
  String get msProvideValueContent2 =>
      ' existe.\nEmpathetech est fier de joindre le geste à la parole et a rendu son interface utilisateur accessible open source.\n\nConstruisons ensemble un monde meilleur, petit à petit.';

  @override
  String get msProvideValueContent2Fix =>
      ' existe.\nEmpathetic est fier de joindre le geste à la parole et a rendu son interface utilisateur accessible open source.\n\nConstruisons ensemble un monde meilleur, petit à petit.';

  @override
  String get psPageTitle => 'Produits';

  @override
  String get psShowDemo => 'Afficher la démo';

  @override
  String get psHideDemo => 'Masquer la démo';

  @override
  String get psShowPromo => 'Afficher la promo';

  @override
  String get psHidePromo => 'Masquer la promo';

  @override
  String get psLearnMore => ' pour en savoir plus.';

  @override
  String get psDownloadNow => 'Télécharger maintenant';

  @override
  String get psComingSoon => 'Bientôt disponible...';

  @override
  String get ouSlogan => 'Créer des applications pour tous';

  @override
  String get ouLike => 'Comme les utilisateurs qui ont besoin...';

  @override
  String get ouAccessible => 'Commandes accessibles';

  @override
  String get ouZeroStrain => 'zéro fatigue oculaire';

  @override
  String get ouEverything => 'Autre chose';

  @override
  String get ouRandom => 'Configuration aléatoire appliquée.';

  @override
  String get ouIs => 'Open UI est un générateur d\'applications.';

  @override
  String get ouDemo =>
      'Démonstration de Open UI créant une nouvelle application.';

  @override
  String get ouFoundation =>
      'Il crée les bases d\'applications accessibles, multiplateformes, multilingues et prêtes à être produites en un seul clic.';

  @override
  String get ouLocal =>
      'Tout fonctionne sur votre ordinateur. Il n\'y a pas d\'identifiants, de cartes de crédit ou de cookies.';

  @override
  String get ouRequirements =>
      'Les seules exigences sont une connexion Internet et une idée.';

  @override
  String get ouFlutterToo => '...et Flutter...';

  @override
  String get ouHow => 'Comment ça marche ?';

  @override
  String get ouEFUIsHow => 'Open UI vous permet de démarrer avec, ';

  @override
  String get ouSimplifies =>
      'EFUI est une bibliothèque permettant de créer des applications véritablement accessibles. Cela simplifie...';

  @override
  String get ouPlatform => 'Multiplateforme';

  @override
  String get ouPlatformContent =>
      'Vous pouvez utiliser EFUI pour créer sur Android, iOS, Linux, macOS, Windows et Web !';

  @override
  String get ouResponsive => 'Design réactif';

  @override
  String get ouResponsiveContent =>
      'Pour voir cela en action, jouez avec la fenêtre que vous utilisez actuellement !';

  @override
  String get ouScreen => 'Prise en charge du lecteur d\'écran';

  @override
  String get ouScreenContent =>
      'Les applications Empathetech soutiennent les utilisateurs qui en ont besoin ';

  @override
  String get ouScreenContentFix =>
      'Les applications Empathetic soutiennent les utilisateurs qui en ont besoin';

  @override
  String get ouTalkBackHint => 'Ouvre un lien vers la documentation TalkBack';

  @override
  String get ouAnd => ' et ';

  @override
  String get ouVoiceOverHint => 'Ouvre un lien vers la documentation VoiceOver';

  @override
  String get ouCustom => 'Personnalisation utilisateur';

  @override
  String get ouCustomContent =>
      'La seule façon d\'être véritablement accessible à TOUS les clients est de leur donner la liberté de choix !\nEFUI fournit une expérience utilisateur élégante pour un contrôle total sur l\'apparence d\'une application.';

  @override
  String get ouInternational => 'Internationalisation';

  @override
  String get ouInternationalContent =>
      'Les applications Empathetech ont été traduites en espagnol et en français (jusqu\'à présent).\nEFUI fournit également l\'infrastructure pour des traductions futures illimitées.';

  @override
  String get ouInternationalContentFix =>
      'Les applications Empathetic ont été traduites en espagnol et en français (jusqu\'à présent).\nEFUI fournit également l\'infrastructure pour des traductions futures illimitées.';

  @override
  String get ouReliability => 'Fiabilité';

  @override
  String get ouReliabilityContent =>
      'Les logiciels Empathetech sont conçus pour durer. Il ne s’agit PAS d’une génération de code IA.\nLes programmeurs d’Empathetech sont des personnes. Les LLM sont des canards en caoutchouc.';

  @override
  String get ouReliabilityContentFix =>
      'Les logiciels Empathetic sont conçus pour durer. Il ne s’agit PAS d’une génération de code IA.\nLes programmeurs d’Empathetic sont des personnes. Les LLM sont des canards en caoutchouc.';

  @override
  String get ouGetStarted => 'Testez-le en direct';

  @override
  String get ouOpenUIIconLabel => 'un paramètres bac à sable.';

  @override
  String get ouEFUITagLine =>
      'En utilisant EFUI, vos applications peuvent toucher tous les publics !\n';

  @override
  String get ouConsult => ' pour consultation et contractualisation.';

  @override
  String get sosPromoLabel => 'Une vidéo promotionnelle pour Insta SOS.';

  @override
  String get sosDescription =>
      'Une caméra, une balise SOS et une liste de vos droits, le tout au même endroit.\nIl est disponible en anglais, arabe, espagnol, philippin, français, créole, chinois simplifié, et prend en charge les lecteurs d\'écran.';

  @override
  String get sosPrivate =>
      'InstaSOS n\'a pas de comptes, de cookies ou de publicités.\n';

  @override
  String get sosFree => 'C\'est totalement gratuit et le code est ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosWeAlso => 'Nous avons également créé un ';

  @override
  String get sosSetupGuide => 'guide d\'installation';

  @override
  String get sosSetupGuideHint => 'Ouvrir un lien vers le README';

  @override
  String get sosConsider => 'Veuillez envisager de ';

  @override
  String get sosContributing => 'contribuer';

  @override
  String get sosSAPS => ' au support des logiciels en tant que service public.';

  @override
  String get sosIconLabel => 'Une icône de notification aux couleurs vives.';

  @override
  String get llDescription => 'Un lanceur Android Empathetech.';

  @override
  String get llDescriptionFix => 'Un lanceur Android Empathetic.';

  @override
  String get llInDev =>
      'Liminal est en cours de développement.\nSon design tend vers le minimalisme, car nos téléphones devraient être des outils que nous utilisons, et non l\'inverse.';

  @override
  String get llBut => 'Mais, c’est un lanceur minimaliste conçu avec ';

  @override
  String get llWhimsy =>
      '.\nAinsi, votre écran d’accueil sera libre de tout encombrement et distraction, ET sera personnalisable à l’infini. Avec une touche de fantaisie en prime.';

  @override
  String get llTheHood =>
      'Un écran d’accueil exemple avec une photo du mont Hood de Portland.';

  @override
  String get llLasRosas =>
      'Un écran d’accueil exemple avec une photo du jardin des roses de Portland.';

  @override
  String get llFrogAndPigs =>
      'Un écran d’accueil exemple avec une photo des faune de Portland.';

  @override
  String get llModel =>
      'Liminal sera publié selon un modèle « payez ce que vous pouvez ».\nLa version Google Play sera payante, car le (bon) code ne s’écrit pas tout seul.\nLe dépôt GitHub proposera également un APK gratuit, car une relation saine avec la technologie ne devrait pas être réservée à ceux qui ont un revenu disponible.';

  @override
  String get ssPreview1 => 'La prochaine application d\'Empathetech, ';

  @override
  String get ssPreview1Fix => 'La prochaine application d\'Empathetic, ';

  @override
  String get ssPreview2 =>
      ', est en cours de développement.\nSmoke Signal est une application de réseau social conçue pour nous éloigner de nos écrans.';

  @override
  String get ssPreview3 =>
      'Smoke Signal sera également entièrement auto-hébergée, grâce à ';

  @override
  String get ssAPHint => 'Ouvrir un lien vers la documentation d\'Activity Pub';

  @override
  String get vaIntro =>
      'La manière dont une technologie est utilisée ne peut pas être décidée par ceux qui la créent.';

  @override
  String get vaTheBad =>
      'Ce qui peut être une bonne chose, une mauvaise chose, ou quelque chose entre les deux. Prenons un moment pour parler du mauvais : les applications frauduleuses.';

  @override
  String get vaScamRisk =>
      ' réduit considérablement la difficulté de création d’applications prêtes pour la production. Combiné aux outils de codage basés sur l’IA, il est plus facile que jamais pour les fraudeurs de créer des applications qui semblent légitimes. Pour aider à lutter contre cela, nous maintiendrons une liste d’applications vérifiées.';

  @override
  String get vaCheckIn =>
      'Si vous voyez une application utilisant notre interface, vérifiez ici d’abord. Si elle n’est pas vérifiée, notre conseil est : ne la téléchargez pas.\nAu-delà de cela, ce n’est pas une liste de recommandations. La seule exigence pour figurer sur cette liste est de ne pas être une arnaque.\nAvec cela clarifié, l’UIniverse connu contient…';

  @override
  String get vaFirst => 'Première partie';

  @override
  String get vaThird => 'Tiers vérifié';

  @override
  String get vaWaiting => 'En attente';

  @override
  String get vaWillYou => 'Serez-vous le premier ?';

  @override
  String get vaKnown => 'Arnaques connues';

  @override
  String get vaSoGood =>
      'Jusqu’ici, tout va bien !\nVeuillez ne pas être le premier :)';

  @override
  String get vaPublished =>
      'Si vous avez publié une application utilisant EFUI, envoyez-nous ';

  @override
  String get vaDoNoHarm =>
      '.\nNous n’avons pas besoin d’aimer l’application, et nous ne la passons pas en revue publiquement. Tant qu’elle ne cause aucun tort, elle sera vérifiée.';

  @override
  String get vaPrivateFree =>
      'Si votre application n’est pas disponible publiquement, ne vous inquiétez pas !\nMais si des personnes que vous ne connaissez pas peuvent la télécharger, informez-nous pour que nous puissions la vérifier.';

  @override
  String get vaDoYourPart =>
      'Si nous n’avons pas eu de vos nouvelles, nous supposerons que votre produit est une arnaque jusqu’à preuve du contraire.\nSi cela vous semble sévère, réfléchissez-y. EFUI représente des années de travail, partagées librement. Envoyer un e-mail est le minimum que vous puissiez faire.';

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
  String get tsBoardMember => 'Membre du conseil';

  @override
  String get tsYou => 'Toi?';

  @override
  String get tsMirrorLabel =>
      'Un cercle noir avec un éclat, pour imiter un miroir.';

  @override
  String get tsMirrorTip => 'Activez pour nous envoyer un courriel';

  @override
  String get tsMirrorHint => 'Demandez comment rejoindre l\'équipe.';

  @override
  String get tsNonProfit =>
      'La seule chose qui empêche Empathetech de devenir une véritable organisation à but non lucratif est le nombre de personnes.\n\nSi vous croyez en la mission que j’ai présentée et que vous avez quelques heures par semaine à consacrer, contactez-nous !\n\nCe sera entièrement bénévole au début. Je ne suis pas payé (pas encore) non plus.\nMais je ne ferais pas cela si je n’avais pas aussi un bon plan pour cela.';

  @override
  String get tsWild => 'Dans la nature';

  @override
  String get ts2025BoothLabel => 'Le stand Empathetech pour Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Activez pour ouvrir la page des expositions Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) a été un blast !\nIl a été difficile de revenir à la vie normale, après avoir été entouré de tant de personnes gentilles, motivées, intelligentes et créatives.\nMerci encore si vous êtes passé par le stand Empathetech, et à l\'année prochaine !';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) a été un blast !\nIl a été difficile de revenir à la vie normale, après avoir été entouré de tant de personnes gentilles, motivées, intelligentes et créatives.\nMerci encore si vous êtes passé par le stand Empathetic, et à l\'année prochaine !';

  @override
  String get tsCommunity => 'Communauté';

  @override
  String get tsFreelance => 'Free-lance';

  @override
  String get tsVideoProduction => 'Production vidéo';

  @override
  String get tsTranslators => 'Traducteurs';

  @override
  String get tsAr => 'Arabe';

  @override
  String get tsEs => 'Espagnol';

  @override
  String get tsFil => 'Philippin';

  @override
  String get tsFr => 'Français';

  @override
  String get tsHt => 'Créole';

  @override
  String get tsZh => 'Chinois (simplifié)';

  @override
  String tsProfile(Object name) {
    return 'Profil de $name';
  }

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
  String get csTime => 'Du temps';

  @override
  String get csBecome => ' pour devenir un ';

  @override
  String get csGit => 'contributeur GitHub';

  @override
  String get csMoney => 'De l\'argent';

  @override
  String csOpenLink(Object page) {
    return 'Ouvrir un lien vers $page de Empathetic';
  }

  @override
  String get csPower => 'De l\'énergie';

  @override
  String get csThanks => 'Merci beaucoup pour tout votre soutien !';
}
