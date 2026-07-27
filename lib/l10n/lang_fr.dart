// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class LangFr extends Lang {
  LangFr([String locale = 'fr']) : super(locale);

  @override
  String get gYWTLogoLabel => 'un sablier en deux dimensions.';

  @override
  String get gYWTLogoHint => 'Activer pour accéder à la page d\'accueil.';

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
  String get gYWTGitHint => 'Ouvre la page GitHub d\'YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Crédit image : $creator';
  }

  @override
  String get gReachOut => 'Contactez-nous';

  @override
  String gProfile(Object name) {
    return 'Profil de $name';
  }

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
  String get hsAnimLabel =>
      'Logo animé d\'YWT : les lettres d\'YWT se transforment en un logo, un sablier en deux dimensions';

  @override
  String get hsChange => 'Il est temps de changer.';

  @override
  String get hsmIDProblem => 'Identifier le problème';

  @override
  String get hsmIDProblemContent =>
      'Les modèles économiques axés sur le profit ne sont pas durables.\n\nPar définition : Si le profit vient en premier, alors des choses comme travailler pour une mission, bien traiter les gens et consommer de manière responsable les ressources deviennent des sujets de second plan.\n\nEt cette cupidité n\'a pas été maîtrisée dans les grandes entreprises technologiques. Les géants de la technologie ne se contentent plus de prendre notre argent. Ils créent désormais des produits qui ciblent nos identités et monopolisent nos esprits.';

  @override
  String get hsmSoWe => 'Alors nous';

  @override
  String get hsmFindSolution => 'Trouver une solution';

  @override
  String get hsmFindSolutionContent =>
      'Heureusement, il existe partout dans le monde des technologues extraordinaires qui travaillent ensemble pour un meilleur récit.\nUn récit dans lequel les fournisseurs de services et les clients entretiennent une relation active, saine et mutuellement bénéfique.\n\nLa communauté open source.\n\nÀ la base, les logiciels open source sont librement disponibles pour que tout le monde puisse les consulter. De nombreux projets peuvent également être librement modifiés et redistribués.\nIl s\'agit de logiciels qui n\'ont rien à cacher, créés par des gens qui reconnaissent que les problèmes communs nécessitent des solutions communes.\n\nEt dans le monde merveilleux des logiciels open source, il existe une sous-catégorie : les logiciels auto-hébergés.\n\nL\'auto-hébergement nous permet de prendre n\'importe quel ordinateur non utilisé (y compris ceux de poche) et d\'y stocker nos données.\nEn auto-hébergant, nous pouvons contrôler notre propre présence numérique, plutôt que de céder le contrôle à un serveur distant, appartenant à une société peu empathique.\n\nEt il existe des versions auto-hébergées de presque tout ! D\'Adobe à Zoom, des hacktivistes passionnés créent des alternatives qui privilégient les personnes au profit.\n\nAlors, comment passe-t-on du profit/fermé à l\'open source ? Comment commencent-ils à s\'auto-héberger ?\nCela prend beaucoup de temps, d\'énergie et de connaissances préalables.\n\nC\'est là que nous intervenons.';

  @override
  String get hsmBy => 'Par';

  @override
  String get hsmProvideValue => 'Faire le travail';

  @override
  String get hsmProvideValueContent1 =>
      'YWT rééquilibre la technologie en rendant l\'auto-hébergement plus accessible.\n\nNous créerons des applications qui permettent à chacun de posséder son identité numérique.\nNous construirons des ponts entre la communauté open source et ceux qui n\'ont pas le temps, l\'énergie ou les connaissances préalables nécessaires.\n\nEt on ne peut pas construire des ponts (ou des applications) sans des fondations solides ! C\'est pourquoi ';

  @override
  String get hsmProvideValueContent2 =>
      ' existe.\nNous sommes fiers de joindre le geste à la parole et avons rendu notre interface utilisateur accessible en open source.\n\nConstruisons ensemble un monde meilleur, bit par bit.';

  @override
  String get hsmFirst => 'Par premier';

  @override
  String get psPageTitle => 'Produits';

  @override
  String get psTitleHint => 'Afficher la liste';

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
  String get ouPlatform => 'Multiplateforme';

  @override
  String get ouPlatformContent =>
      'Vous pouvez utiliser Open UI pour créer sur Android, iOS, Linux, macOS, Windows et Web !';

  @override
  String get ouResponsive => 'Design réactif';

  @override
  String get ouResponsiveContent =>
      'Pour voir cela en action, jouez avec la fenêtre que vous utilisez actuellement !';

  @override
  String get ouScreen => 'Prise en charge du lecteur d\'écran';

  @override
  String get ouScreenContent =>
      'Les applications OUI soutiennent les utilisateurs qui en ont besoin ';

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
      'La seule façon d\'être véritablement accessible à TOUS les clients est de leur donner la liberté de choix !\nOpen UI fournit une expérience utilisateur élégante pour un contrôle total sur l\'apparence d\'une application.';

  @override
  String get ouInternational => 'Internationalisation';

  @override
  String get ouInternationalContent =>
      'Les applications OUI ont été traduites en 14 langues (jusqu\'à présent).\nOUI fournit également l\'infrastructure pour des traductions futures illimitées.';

  @override
  String get ouReliability => 'Fiabilité';

  @override
  String get ouReliabilityContent =>
      'Les logiciels YWT sont conçus pour durer. Il ne s’agit PAS d’une génération de code IA.\nLes programmeurs sont des personnes. Les LLM sont des canards en caoutchouc.';

  @override
  String get ouGetStarted => 'Testez-le en direct';

  @override
  String get ouIconLabel => 'un paramètres bac à sable.';

  @override
  String get ouTagLine =>
      'En utilisant Open UI, vos applications peuvent toucher tous les publics !\n';

  @override
  String get sosPromoLabel => 'Une vidéo promotionnelle pour Insta SOS.';

  @override
  String get sosDescription =>
      'Une caméra, une balise SOS et une liste de vos droits, le tout au même endroit.\nIl est disponible en 14 langues et prend en charge les lecteurs d\'écran.';

  @override
  String get sosPrivate =>
      'InstaSOS n\'a pas de comptes, de cookies ou de publicités.\n';

  @override
  String get sosFree => 'C\'est totalement gratuit et le code est ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosConsider => 'Veuillez envisager de ';

  @override
  String get sosContributing => 'contribuer';

  @override
  String get sosSAPS => ' au support des logiciels en tant que service public.';

  @override
  String get sosIconLabel => 'Une icône de notification aux couleurs vives.';

  @override
  String get sosWeb =>
      'Une façon spécifique, et à fort impact, de contribuer serait de régler la facture de l\'hébergement d\'InstaSOS en ligne.\n\nLes propriétaires des boutiques d\'applications ont clairement affiché la couleur quant à leurs alliances, et InstaSOS risque d\'être retiré si/quand il gagnera du terrain.\nLes utilisateurs d\'Android auront toujours la possibilité de l\'installer manuellement, mais la seule alternative viable pour les utilisateurs d\'iOS serait une application web.\n\nHeureusement, les applications Flutter effectuent leurs calculs côté client, la facture serait donc peu élevée.\nNous n\'aurions (vous n\'auriez) à payer que pour la gestion du trafic.';

  @override
  String get sosTranslators => 'Traducteurs';

  @override
  String get llInDev =>
      'Liminal est en cours de développement.\nSon design tend vers le minimalisme, mais il est conçu avec ';

  @override
  String get llWhimsy =>
      'Ainsi, votre écran d\'accueil sera exempt d\'encombrement et de distractions, ET sera personnalisable à l\'infini.\nAvec un brin de fantaisie en prime.';

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
  String get fahTeamHint => 'Ouvre la page de l\'équipe YWT de folding at home';

  @override
  String get fahWhats => 'Qu\'est-ce que ';

  @override
  String get fahName => 'Folding@home ?';

  @override
  String get fahNameHint => 'Ouvre la page à propos de folding at home';

  @override
  String get fahStats =>
      'Ensemble, nous avons gagné plus de 400 millions de points.\nCela nous place dans les 2 % des meilleures équipes du monde !';

  @override
  String get csPageTitle => 'Contribuer';

  @override
  String get csEveryBit =>
      'Pour nous, chaque bit est à un octet de distance des géants de la tech.';

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
    return 'Ouvrir un lien vers $page de YWT';
  }

  @override
  String get csPower => 'De l\'énergie';

  @override
  String get csThanks => 'Merci beaucoup pour tout votre soutien !';
}
