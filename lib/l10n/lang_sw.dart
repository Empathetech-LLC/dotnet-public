// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class LangSw extends Lang {
  LangSw([String locale = 'sw']) : super(locale);

  @override
  String get gYWTLogoLabel => 'Kipima saa cha mchanga cha pande mbili.';

  @override
  String get gYWTLogoHint => 'Washa ili uende kwenye ukurasa wa mwanzo.';

  @override
  String gLearn(Object name) {
    return 'Jifunze kuhusu $name';
  }

  @override
  String get gHomeHint => 'Fungua ukurasa wa mwanzo';

  @override
  String get gProductsHint => 'Fungua ukurasa wa bidhaa';

  @override
  String get gMissionHint => 'Fungua ukurasa wa dhamira';

  @override
  String get gTeamHint => 'Fungua ukurasa wa timu';

  @override
  String get gContributeHint => 'Fungua ukurasa wa kuchangia';

  @override
  String get gShare => 'Shiriki';

  @override
  String get gEmail => 'Barua pepe';

  @override
  String gEmailTo(Object recipient) {
    return 'Tuma barua pepe kwa $recipient';
  }

  @override
  String get gAnEmail => 'barua pepe';

  @override
  String get gEmailHint => 'Hufungua programu yako ya barua pepe';

  @override
  String get gNewsletter => 'Jarida';

  @override
  String gLogoLabel(Object thing) {
    return 'Nembo ya $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'Aikoni ya $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Pakua $app kwa ajili ya $platform.';
  }

  @override
  String get gRepoHint => 'Fungua kiungo cha hifadhi ya uundaji.';

  @override
  String get gYWTGitHint => 'Fungua ukurasa wa GitHub wa YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Hisani ya picha: $creator';
  }

  @override
  String get gReachOut => 'Wasiliana';

  @override
  String gProfile(Object name) {
    return 'Wasifu wa $name';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Fungua ukurasa wa Fiverr wa $user';
  }

  @override
  String get gDontChaWish =>
      'Hutamani upande wako wa mbele wa programu uwe wa kufurahisha ';

  @override
  String get gMeQ => 'kama mimi?';

  @override
  String get gDontCha => 'Hutamani?';

  @override
  String get gDontChaHint =>
      'Fungua ukurasa wa GitHub kwa ajili ya msimbo wa skrini hii';

  @override
  String get hsAnimLabel =>
      'Nembo ya uhuishaji ya YWT: herufi katika YWT zinabadilika na kuwa nembo ya kipima saa cha mchanga cha pande mbili';

  @override
  String get hsChange => 'Ni wakati wa mabadiliko.';

  @override
  String get hsmIDProblem => 'Kutambua tatizo';

  @override
  String get hsmIDProblemContent =>
      'Mifumo ya biashara inayotanguliza faida si endelevu.\n\nKimsingi: ikiwa faida itatangulizwa, mambo kama vile kufanyia kazi dhamira, kuwatendea watu haki, na matumizi ya rasilimali kwa njia inayofaa huwa mambo ya ziada tu.\n\nNa uchoyo huu umekithiri katika kampuni kubwa za teknolojia. Miamba ya teknolojia hawaridhishwi tena na pesa zetu, na wanaunda bidhaa ili kulenga utambulisho wetu na kutawala akili zetu.';

  @override
  String get hsmSoWe => 'Hivyo basi sisi';

  @override
  String get hsmFindSolution => 'Kutafuta suluhu';

  @override
  String get hsmFindSolutionContent =>
      'Kwa bahati nzuri, kuna wataalamu wa teknolojia wa ajabu duniani kote wanaofanya kazi pamoja ili kujenga mwelekeo bora zaidi.\nAmbapo watoa huduma na wateja wana uhusiano hai, thabiti, na wenye manufaa kwa pande zote mbili.\n\nJumuiya ya programu huria (open source).\n\nKimsingi, programu huria inapatikana bila malipo kwa mtu yeyote kuangalia. Miradi mingi pia inaweza kurekebishwa na kusambazwa tena bila malipo.\nNi programu isiyo na siri yoyote, inayoundwa na watu wanaotambua kuwa matatizo ya pamoja yanahitaji masuluhisho ya pamoja.\n\nNa katika ulimwengu mzuri wa programu huria, kuna aina ndogo: programu za kujihifadhi (self-hosting).\n\nKujihifadhi kunaturuhusu kuchukua kompyuta yoyote isiyotumika (hata za ukubwa wa mfukoni) na kuhifadhi data zetu hapo.\nKwa kujihifadhi, tunaweza kudhibiti uwepo wetu wa kidijitali, badala ya kutoa udhibiti kwa seva iliyo mbali, inayomilikiwa na shirika lisilo na huruma.\n\nNa kuna matoleo ya kujihifadhi kwa karibu kila kitu! Kuanzia Adobe hadi Zoom, kuna wanaharakati wa teknolojia wenye shauku wanaounda mbadala zinazowatanguliza watu badala ya faida.\n\nHivyo basi, mtu anafanyaje mabadiliko kutoka kwenye programu inayotanguliza faida/isiyo huria na kwenda kwenye programu huria? Wanaanzaje kujihifadhi?\nInachukua muda mwingi, nguvu, na ujuzi wa awali.\n\nHapo ndipo tunapoingia.';

  @override
  String get hsmBy => 'Kwa';

  @override
  String get hsmProvideValue => 'Kufanya kazi';

  @override
  String get hsmProvideValueContent1 =>
      'YWT inaleta usawa katika teknolojia kwa kufanya upangishaji-kibinafsi kufikika kwa urahisi zaidi.\n\nTutaunda programu zinazomwezesha yeyote kumiliki utambulisho wao wa kidijitali.\nTutajenga madaraja kati ya jamii ya chanzo huria na wale ambao hawana muda, nguvu, au ujuzi wa awali unaohitajika.\n\nNa huwezi kujenga madaraja (au programu) bila msingi imara! Ndiyo maana ';

  @override
  String get hsmProvideValueContent2 =>
      ' ipo.\nTunajivunia kutimiza maneno yetu kwa vitendo, na tumefanya kiolesura chetu kinachofikika kwa urahisi kuwa cha chanzo huria.\n\nTuijenge dunia bora pamoja, hatua kwa hatua.';

  @override
  String get hsmFirst => 'Kwa kuanza na';

  @override
  String get psPageTitle => 'Bidhaa';

  @override
  String get psTitleHint => 'Onyesha orodha';

  @override
  String get psShowDemo => 'Onyesha onyesho';

  @override
  String get psHideDemo => 'Ficha onyesho';

  @override
  String get psShowPromo => 'Onyesha promo';

  @override
  String get psHidePromo => 'Ficha promo';

  @override
  String get psLearnMore => ' ili kujifunza zaidi.';

  @override
  String get psDownloadNow => 'Pakua sasa';

  @override
  String get psComingSoon => 'Inakuja hivi karibuni...';

  @override
  String get ouSlogan => 'Unda programu kwa ajili ya yeyote';

  @override
  String get ouLike => 'Kama vile watumiaji wanaohitaji...';

  @override
  String get ouAccessible => 'Vidhibiti vinavyofikika kwa wote';

  @override
  String get ouZeroStrain => 'kutosumbua macho kabisa';

  @override
  String get ouEverything => 'Kila kitu katikati';

  @override
  String get ouRandom => 'Usanidi wa kubahatisha umetumika.';

  @override
  String get ouIs => 'Open UI ni kitengeneza programu.';

  @override
  String get ouDemo => 'Onyesho la Open UI likitengeneza programu mpya.';

  @override
  String get ouFoundation =>
      'Inaunda msingi wa programu zinazofikika kwa wote, zinazofanya kazi kwenye mifumo mbalimbali, za lugha nyingi, zilizo tayari kwa uzalishaji kwa kubofya mara moja tu.';

  @override
  String get ouLocal =>
      'Kila kitu kinaendeshwa kwenye kompyuta yako. Hakuna vitambulisho, kadi za mkopo, au vidakuzi.';

  @override
  String get ouRequirements =>
      'Mahitaji pekee ni muunganisho wa intaneti na wazo.';

  @override
  String get ouFlutterToo => '...na Flutter...';

  @override
  String get ouPlatform => 'Upatikanaji kwenye mifumo';

  @override
  String get ouPlatformContent =>
      'Unaweza kutumia Open UI kuunda kwenye Android, iOS, Linux, macOS, Windows na Wavuti!';

  @override
  String get ouResponsive => 'Muundo unaobadilika';

  @override
  String get ouResponsiveContent =>
      'Ili kuona jinsi inavyofanya kazi, cheza na dirisha unalotumia sasa hivi!';

  @override
  String get ouScreen => 'Usaidizi wa kisoma skrini';

  @override
  String get ouScreenContent =>
      'Programu za OUI zinasaidia watumiaji wanaohitaji ';

  @override
  String get ouTalkBackHint => 'Fungua kiungo cha nyaraka za TalkBack';

  @override
  String get ouAnd => ' na ';

  @override
  String get ouVoiceOverHint => 'Fungua kiungo cha nyaraka za VoiceOver';

  @override
  String get ouCustom => 'Ugeuzaji kukufaa wa mtumiaji';

  @override
  String get ouCustomContent =>
      'Njia pekee ya kufikika kikweli na wateja WOTE ni kuwawezesha kwa uhuru wa kuchagua!\nOpen UI hutoa muundo bora wa mtumiaji (UX) kwa udhibiti kamili wa mwonekano wa programu.';

  @override
  String get ouInternational => 'Uboreshaji wa kimataifa';

  @override
  String get ouInternationalContent =>
      'Programu za OUI zimetafsiriwa kwa lugha 14 (kufikia sasa).\nOUI pia inatoa miundombinu ya tafsiri zisizo na kikomo za baadaye.';

  @override
  String get ouReliability => 'Utegemezi';

  @override
  String get ouReliabilityContent =>
      'Programu za YWT zimeundwa kudumu. Hii SIO uundaji wa msimbo kwa kutumia AI.\nWaandaaji wa programu wa ni watu. LLM ni mabata wa mpira (rubber ducks).';

  @override
  String get ouGetStarted => 'Anza';

  @override
  String get ouIconLabel =>
      'kikasha mchanga cha mipangilio (settings sandbox).';

  @override
  String get ouTagLine =>
      'Zinapoundwa kwa Open UI, programu zako zinaweza kuwafikia watu wa aina yoyote kweli!\n';

  @override
  String get sosPromoLabel => 'Video ya matangazo ya Insta SOS.';

  @override
  String get sosDescription =>
      'Kamera, kiashirio cha SOS, na orodha ya haki zako vyote mahali pamoja.\nInapatikana katika lugha 14 na inasaidia visomaji vya skrini.';

  @override
  String get sosPrivate => 'InstaSOS haina akaunti, vidakuzi, au matangazo.\n';

  @override
  String get sosFree => 'Ni bure kabisa na msimbo huu ni ';

  @override
  String get sosOpenSource => 'programu huria';

  @override
  String get sosConsider => 'Tafadhali fikiria ';

  @override
  String get sosContributing => 'kuchangia';

  @override
  String get sosSAPS => ' ili kusaidia programu kama huduma ya umma.';

  @override
  String get sosIconLabel => 'kengele ya arifa yenye rangi inayong\'aa sana.';

  @override
  String get sosWeb =>
      'Njia moja hususa, na yenye athari kubwa ya kuchangia itakuwa kulipia gharama za kuweka InstaSOS mtandaoni.\n\nWamiliki wa maduka ya programu wameweka wazi utiifu wao, na InstaSOS inaweza kuondolewa ikiwa/wakati itakapopata umaarufu.\nWatumiaji wa Android kila wakati watakuwa na chaguo la kusakinisha wenyewe, lakini mbadala pekee unaofaa kwa watumiaji wa iOS itakuwa ni programu ya wavuti.\n\nTunashukuru, programu za Flutter hufanya kazi upande wa mteja, kwa hivyo bili itakuwa ndogo.\nSisi (Wewe) tutahitaji tu kulipia usimamizi wa trafiki ya mtandao.';

  @override
  String get sosTranslators => 'Watafsiri';

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
  String get fahJoin => 'Jiunge na Kundi';

  @override
  String get fahIconLabel => 'molekuli ya protini.';

  @override
  String get fahIconHint => 'Washa ili kufungua tovuti yao.';

  @override
  String get fahIntro1 => 'Jiunge na ';

  @override
  String get fahIntro2 => ' timu ya Folding@home!';

  @override
  String get fahTeamHint => 'Fungua ukurasa wa timu ya YWT wa folding at home';

  @override
  String get fahWhats => 'Nini maana ya ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Fungua ukurasa wa kuhusu wa Folding at Home';

  @override
  String get fahStats =>
      'Pamoja, tumejipatia pointi zaidi ya milioni 400.\nHilo linatuweka katika asilimia 2 bora ya timu zote duniani kote!';

  @override
  String get csPageTitle => 'Changia';

  @override
  String get csEveryBit =>
      'Kila biti unayotoa kwa sisi huondoa baiti kutoka kwa makampuni makubwa ya teknolojia.';

  @override
  String get csTime => 'Muda';

  @override
  String get csBecome => ' kuhusu kuwa ';

  @override
  String get csGit => 'mchangiaji wa GitHub';

  @override
  String get csMoney => 'Pesa';

  @override
  String csOpenLink(Object page) {
    return 'Fungua kiungo cha $page ya YWT';
  }

  @override
  String get csPower => 'Nguvu';

  @override
  String get csThanks => 'Asante sana kwa usaidizi wowote na wa kila aina!';
}
