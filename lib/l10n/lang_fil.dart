// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class LangFil extends Lang {
  LangFil([String locale = 'fil']) : super(locale);

  @override
  String get gYWTLogoLabel => 'isang two-dimensional na orasa.';

  @override
  String get gYWTLogoHint => 'I-activate para pumunta sa home page.';

  @override
  String gLearn(Object name) {
    return 'Matuto tungkol sa $name';
  }

  @override
  String get gHomeHint => 'Buksan ang home page';

  @override
  String get gProductsHint => 'Buksan ang page ng produkto';

  @override
  String get gMissionHint => 'Buksan ang page ng misyon';

  @override
  String get gTeamHint => 'Buksan ang page ng team';

  @override
  String get gContributeHint => 'Buksan ang page para mag-ambag';

  @override
  String get gShare => 'Ibahagi';

  @override
  String get gEmail => 'Email';

  @override
  String gEmailTo(Object recipient) {
    return 'Mag-email kay $recipient';
  }

  @override
  String get gAnEmail => 'isang email';

  @override
  String get gEmailHint => 'Bubuksan ang iyong email client';

  @override
  String get gNewsletter => 'Newsletter';

  @override
  String gLogoLabel(Object thing) {
    return 'Logo ng $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'Ang icon para sa $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'I-download ang $app para sa $platform.';
  }

  @override
  String get gRepoHint => 'Buksan ang link sa development repo.';

  @override
  String get gYWTGitHint => 'Buksan ang GitHub page para sa YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Credit sa larawan: $creator';
  }

  @override
  String get gReachOut => 'Makipag-ugnayan';

  @override
  String gProfile(Object name) {
    return 'Profile ni $name';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Buksan ang Fiverr page ni $user';
  }

  @override
  String get gDontChaWish =>
      'Hindi mo ba hinahangad na maging masaya ang iyong frontend ';

  @override
  String get gMeQ => 'tulad ko?';

  @override
  String get gDontCha => 'Hindi ba?';

  @override
  String get gDontChaHint =>
      'Buksan ang GitHub page para sa source code ng screen na ito';

  @override
  String get hsAnimLabel =>
      'Animated na logo ng YWT: ang mga titik sa YWT ay nagiging two-dimensional na logo ng orasa';

  @override
  String get hsChange => 'Panahon na para sa pagbabago.';

  @override
  String get hsmIDProblem => 'Pag-alam sa problema';

  @override
  String get hsmIDProblemContent =>
      'Ang mga business model na inuuna ang kita ay hindi napapanatili.\n\nSa madaling salita: kung kita ang inuuna, ang mga bagay tulad ng paggawa para sa isang misyon, tamang pagtrato sa mga tao, at responsableng paggamit ng mga mapagkukunan ay nagiging pangalawang prayoridad na lamang.\n\nAt ang kasakimang ito ay hindi nakontrol sa malalaking tech. Ang mga tech giant ay hindi na nakukuntento sa ating pera, at gumagawa sila ng mga produkto para puntiryahin ang ating mga pagkakakilanlan at kontrolin ang ating isipan.';

  @override
  String get hsmSoWe => 'Kaya tayo';

  @override
  String get hsmFindSolution => 'Humanap ng solusyon';

  @override
  String get hsmFindSolutionContent =>
      'Sa kabutihang palad, may mga kahanga-hangang technologist sa buong mundo na nagtutulungan tungo sa mas magandang naratibo.\nIsang naratibo kung saan ang mga service provider at ang mga customer ay may aktibo, malusog, at kapwa kapaki-pakinabang na relasyon.\n\nAng komunidad ng open source.\n\nSa kaibuturan nito, ang open source software ay malayang nakikita ng sinuman. Maraming proyekto ang maaari ring malayang baguhin at ipamahagi muli.\nIto ay software na walang tinatago, ginawa ng mga taong kinikilala na ang mga ibinahaging problema ay nangangailangan ng mga ibinahaging solusyon.\n\nAt sa magandang mundo ng open source software, mayroong isang sub category: ang self-hosting software.\n\nAng self-hosting ay nagbibigay-daan sa atin na gumamit ng anumang hindi ginagamit na computer (kahit ang mga kasing-laki ng bulsa) at i-store ang ating datos doon.\nSa pamamagitan ng self-hosting, makokontrol natin ang ating sariling digital presence, sa halip na ipaubaya ang kontrol sa isang malayong server na pagmamay-ari ng isang walang-empatayang korporasyon.\n\nAt may mga self-hosted na bersyon para sa halos lahat ng bagay! Mula Adobe hanggang Zoom, may mga dedikadong hacktivist na gumagawa ng mga alternatibo na inuuna ang tao kaysa kita.\n\nKaya, paano lumipat mula sa kita-muna/closed source patungo sa open source? Paano sila magsisimulang mag-self-host?\nNangangailangan ito ng maraming oras, enerhiya, at kaalaman.\n\nDiyan kami papasok.';

  @override
  String get hsmBy => 'Sa pamamagitan ng';

  @override
  String get hsmProvideValue => 'Paggawa ng trabaho';

  @override
  String get hsmProvideValueContent1 =>
      'Binabalanse muli ng YWT ang teknolohiya sa pamamagitan ng paggawa sa self-hosting na mas madaling ma-access.\n\nGagawa kami ng mga app na nagbibigay-kakayahan sa sinuman na magkaroon ng sarili nilang digital na pagkakakilanlan.\nGagawa kami ng mga tulay sa pagitan ng open source community at ng mga walang sapat na oras, lakas, o paunang kaalaman.\n\nAt hindi ka makakabuo ng mga tulay (o mga app) nang walang matibay na pundasyon! Iyan ang dahilan kung bakit ang ';

  @override
  String get hsmProvideValueContent2 =>
      ' ay nabuo.\nIpinagmamalaki namin ang pagtupad sa aming mga salita sa pamamagitan ng gawa, at ginawa naming open source ang aming accessible na UI.\n\nBumuo tayo ng mas magandang mundo nang magkasama, unti-unti.';

  @override
  String get hsmFirst => 'Sa pamamagitan muna ng';

  @override
  String get psPageTitle => 'Mga Produkto';

  @override
  String get psTitleHint => 'Ipakita ang listahan';

  @override
  String get psShowDemo => 'Ipakita ang demo';

  @override
  String get psHideDemo => 'Itago ang demo';

  @override
  String get psShowPromo => 'Ipakita ang promo';

  @override
  String get psHidePromo => 'Itago ang promo';

  @override
  String get psLearnMore => ' upang matuto pa.';

  @override
  String get psDownloadNow => 'I-download na';

  @override
  String get psComingSoon => 'Malapit na...';

  @override
  String get ouSlogan => 'Bumuo ng mga app para sa sinuman';

  @override
  String get ouLike => 'Tulad ng mga user na nangangailangan ng...';

  @override
  String get ouAccessible => 'Mga accessible na kontrol';

  @override
  String get ouZeroStrain => 'walang pagkapagod ng mata';

  @override
  String get ouEverything => 'Lahat ng nasa pagitan nito';

  @override
  String get ouRandom => 'Inlapat ang random config.';

  @override
  String get ouIs => 'Ang Open UI ay isang app generator.';

  @override
  String get ouDemo => 'Demonstrasyon ng pagbuo ng bagong app ng Open UI.';

  @override
  String get ouFoundation =>
      'Lumilikha ito ng pundasyon para sa accessible, cross-platform, multi-language, at production-ready na mga app sa isang click.';

  @override
  String get ouLocal =>
      'Tumatakbo ang lahat sa iyong computer. Walang kinakailangang credentials, credit card, o cookies.';

  @override
  String get ouRequirements =>
      'Ang tanging mga kailangan ay internet connection at isang ideya.';

  @override
  String get ouFlutterToo => '...at Flutter...';

  @override
  String get ouPlatform => 'Availability sa platform';

  @override
  String get ouPlatformContent =>
      'Maaari mong gamitin ang Open UI upang bumuo sa Android, iOS, Linux, macOS, Windows at Web!';

  @override
  String get ouResponsive => 'Responsive na disenyo';

  @override
  String get ouResponsiveContent =>
      'Upang makita ito sa aksyon, paglaruan ang window na ginagamit mo ngayon!';

  @override
  String get ouScreen => 'Suporta sa screen reader';

  @override
  String get ouScreenContent =>
      'Sinusuportahan ng mga OUI app ang mga user na nangangailangan ng ';

  @override
  String get ouTalkBackHint => 'Buksan ang link sa TalkBack documentation';

  @override
  String get ouAnd => ' at ';

  @override
  String get ouVoiceOverHint => 'Buksan ang link sa VoiceOver documentation';

  @override
  String get ouCustom => 'Customization ng user';

  @override
  String get ouCustomContent =>
      'Ang tanging paraan upang maging totoong accessible sa LAHAT ng customer ay bigyan sila ng kalayaang pumili!\nNagbibigay ang Open UI ng eleganteng UX para sa ganap na kontrol sa anyo ng app.';

  @override
  String get ouInternational => 'Internasyonalisasyon';

  @override
  String get ouInternationalContent =>
      'Ang mga OUI app ay naisalin na sa 14 na wika (sa ngayon).\nNagbibigay rin ang OUI ng imprastraktura para sa walang limitasyong pagsasalin sa hinaharap.';

  @override
  String get ouReliability => 'Pagiging maaasahan';

  @override
  String get ouReliabilityContent =>
      'Ang YWT software ay ginawa para tumagal. HINDI ito AI code generation.\nAng mga programmer ay mga tao. Ang mga LLM ay mga rubber duck.';

  @override
  String get ouGetStarted => 'Magsimula';

  @override
  String get ouIconLabel => 'isang sandbox para sa mga setting.';

  @override
  String get ouTagLine =>
      'Kapag binuo gamit ang Open UI, ang iyong mga app ay totoong makakaabot sa anumang madla!\n';

  @override
  String get sosPromoLabel => 'Isang promotional video para sa Insta SOS.';

  @override
  String get sosDescription =>
      'Isang camera, SOS beacon, at listahan ng iyong mga karapatan lahat sa isang lugar.\nIto ay makukuha sa 14 na wika at sumusuporta sa mga screen reader.';

  @override
  String get sosPrivate =>
      'Ang InstaSOS ay walang accounts, cookies, o mga ad.\n';

  @override
  String get sosFree => 'Ito ay ganap na libre at ang code ay ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosConsider => 'Mangyaring isaalang-alang ang ';

  @override
  String get sosContributing => 'pag-aambag';

  @override
  String get sosSAPS =>
      ' upang suportahan ang software bilang isang pampublikong serbisyo.';

  @override
  String get sosIconLabel => 'isang matingkad na kulay ng notification bell.';

  @override
  String get sosWeb =>
      'Isang tiyak, at napakaimpluwensyang paraan upang makatulong ay ang pagbabayad para sa hosting ng InstaSOS online.\n\nMalinaw na ang kinikilingan ng mga may-ari ng app store, at maaaring alisin ang InstaSOS kung/kapag nakakuha ito ng traksyon.\nLaging may opsyon ang mga user ng Android na mag-install nang sarili, ngunit ang tanging mabubuhay na alternatibo para sa mga user ng iOS ay isang web app.\n\nSa kabutihang palad, ang mga Flutter app ay client side compute, kaya\'t mababa lang ang bayarin.\nKailangan lang naming (ninyong) magbayad para sa traffic management.';

  @override
  String get sosTranslators => 'Mga Tagasalin';

  @override
  String get llSlogan => 'The last launcher you\'ll ever load.';

  @override
  String get llDesign =>
      'Its design leans towards minimalism, but it\'s built with ';

  @override
  String get llWhimsy =>
      'So, your home screen will be free of clutter and distractions, AND be limitlessly customizable.\nWith a bit of whimsy to boot.';

  @override
  String get llModel => 'Liminal has a \"pay what you can\" model.\nThe ';

  @override
  String get llPaid =>
      ' version is \$4.99, because (good) code doesn\'t write itself.\nThe APK is also available ';

  @override
  String get llGit => 'on GitHub';

  @override
  String get llFree =>
      ', because a healthy relationship with technology shouldn\'t be exclusive to those with expendable income.';

  @override
  String get fahJoin => 'Sumali sa Fold';

  @override
  String get fahIconLabel => 'isang protein molecule.';

  @override
  String get fahIconHint => 'I-activate para buksan ang kanilang site.';

  @override
  String get fahIntro1 => 'Sumali sa ';

  @override
  String get fahIntro2 => ' Folding@home team!';

  @override
  String get fahTeamHint => 'Buksan ang page ng YWT folding at home team';

  @override
  String get fahWhats => 'Ano ang ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Buksan ang about page ng Folding at Home';

  @override
  String get fahStats =>
      'Sama-sama, nakakuha tayo ng higit sa 400 milyong puntos.\nDahil dito, kabilang tayo sa top 2% ng lahat ng team sa buong mundo!';

  @override
  String get csPageTitle => 'Mag-ambag';

  @override
  String get csEveryBit =>
      'Bawat piraso para sa atin ay isang byte ang layo mula sa malalaking teknolohiya.';

  @override
  String get csTime => 'Oras';

  @override
  String get csBecome => ' tungkol sa pagiging isang ';

  @override
  String get csGit => 'GitHub contributor';

  @override
  String get csMoney => 'Pera';

  @override
  String csOpenLink(Object page) {
    return 'Buksan ang link sa $page ng YWT';
  }

  @override
  String get csPower => 'Kapangyarihan';

  @override
  String get csThanks => 'Maraming salamat sa anuman at lahat ng suporta!';
}
