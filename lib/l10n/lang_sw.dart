// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class LangSw extends Lang {
  LangSw([String locale = 'sw']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'Kipima saa cha mchanga cha pande mbili.';

  @override
  String get gEmpathLogoHint => 'Washa ili uende kwenye ukurasa wa mwanzo.';

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
  String get gEmpathetechGitHint =>
      'Fungua ukurasa wa GitHub wa Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'Hisani ya picha: $creator';
  }

  @override
  String get gReachOut => 'Wasiliana';

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
  String get hsSlogan => 'Tujenge ulimwengu bora pamoja\nbiti x biti';

  @override
  String get hsSloganFix => 'Tujenge ulimwengu bora pamoja\nkidogo kidogo';

  @override
  String get hsVideoLabel =>
      'Nembo ya uhuishaji ya Empathetic LLC: herufi katika Empathetic zinabadilika na kuwa nembo ya kipima saa cha mchanga cha pande mbili';

  @override
  String get hsPeople => 'Watu si bidhaa.';

  @override
  String get hsWell => 'Kweli, hawapaswi kuwa hivyo.';

  @override
  String get hsReality => 'Ukweli wa kusikitisha ni kwamba utambulisho wetu, ';

  @override
  String get hsData => 'data zetu';

  @override
  String get hsGold =>
      ', ndiyo biashara mpya inayoingiza faida kubwa kwa kampuni kubwa za teknolojia.';

  @override
  String get hsRush =>
      'Na kampuni kubwa za teknolojia kwa hakika zinapenda kuharakisha.\nKutokana na mbio zao zisizoisha, filamu za kutisha za sayansi ya kubuni zinatimia haraka mno.';

  @override
  String get hsSlow =>
      'Ni wakati wa kupunguza kasi.\nNi wakati wa kuwa na umiliki wa nafsi zetu za kidijitali.\nNi wakati wa kuwa na ';

  @override
  String get hsPlan => 'mpango bora.';

  @override
  String get msPageTitle => 'Dhamira';

  @override
  String get msSoWe => 'Hivyo basi sisi';

  @override
  String get msBy => 'Kwa';

  @override
  String get msFirst => 'Kwa kuanza na';

  @override
  String get msIDProblem => 'Kutambua tatizo';

  @override
  String get msIDProblemContent =>
      'Mifumo ya biashara inayotanguliza faida si endelevu.\n\nKimsingi: ikiwa faida itatangulizwa, mambo kama vile kufanyia kazi dhamira, kuwatendea watu haki, na matumizi ya rasilimali kwa njia inayofaa huwa mambo ya ziada tu.\n\nNa uchoyo huu umekithiri katika kampuni kubwa za teknolojia. Miamba ya teknolojia hawaridhishwi tena na pesa zetu, na wanaunda bidhaa ili kulenga utambulisho wetu na kutawala akili zetu.';

  @override
  String get msFindSolution => 'Kutafuta suluhu';

  @override
  String get msFindSolutionContent =>
      'Kwa bahati nzuri, kuna wataalamu wa teknolojia wa ajabu duniani kote wanaofanya kazi pamoja ili kujenga mwelekeo bora zaidi.\nAmbapo watoa huduma na wateja wana uhusiano hai, thabiti, na wenye manufaa kwa pande zote mbili.\n\nJumuiya ya programu huria (open source).\n\nKimsingi, programu huria inapatikana bila malipo kwa mtu yeyote kuangalia. Miradi mingi pia inaweza kurekebishwa na kusambazwa tena bila malipo.\nNi programu isiyo na siri yoyote, inayoundwa na watu wanaotambua kuwa matatizo ya pamoja yanahitaji masuluhisho ya pamoja.\n\nNa katika ulimwengu mzuri wa programu huria, kuna aina ndogo: programu za kujihifadhi (self-hosting).\n\nKujihifadhi kunaturuhusu kuchukua kompyuta yoyote isiyotumika (hata za ukubwa wa mfukoni) na kuhifadhi data zetu hapo.\nKwa kujihifadhi, tunaweza kudhibiti uwepo wetu wa kidijitali, badala ya kutoa udhibiti kwa seva iliyo mbali, inayomilikiwa na shirika lisilo na huruma.\n\nNa kuna matoleo ya kujihifadhi kwa karibu kila kitu! Kuanzia Adobe hadi Zoom, kuna wanaharakati wa teknolojia wenye shauku wanaounda mbadala zinazowatanguliza watu badala ya faida.\n\nHivyo basi, mtu anafanyaje mabadiliko kutoka kwenye programu inayotanguliza faida/isiyo huria na kwenda kwenye programu huria? Wanaanzaje kujihifadhi?\nInachukua muda mwingi, nguvu, na ujuzi wa awali.\n\nHapo ndipo tunapoingia.';

  @override
  String get msProvideValue => 'Kufanya kazi';

  @override
  String get msProvideValueContent1 =>
      'Dhamira ya Empathetech ni kusawazisha nguvu katika teknolojia kwa kufanya upangishaji binafsi (self-hosting) kufikika zaidi.\n\nTutaunda programu zinazomwezesha mtu yeyote kumiliki utambulisho wake wa kidijitali.\nTutajenga madaraja kati ya jumuiya ya programu huria na wale wasio na muda, nguvu, au ujuzi wa awali unaohitajika.\n\nNa huwezi kujenga madaraja (au programu) bila msingi imara! Ndiyo maana ';

  @override
  String get msProvideValueContent1Fix =>
      'Dhamira ya Empathetic ni kusawazisha nguvu katika teknolojia kwa kufanya upangishaji binafsi (self-hosting) kufikika zaidi.\n\nTutaunda programu zinazomwezesha mtu yeyote kumiliki utambulisho wake wa kidijitali.\nTutajenga madaraja kati ya jumuiya ya programu huria na wale wasio na muda, nguvu, au ujuzi wa awali unaohitajika.\n\nNa huwezi kujenga madaraja (au programu) bila msingi imara! Ndiyo maana ';

  @override
  String get msProvideValueContent2 =>
      ' ipo.\nEmpathetech inajivunia kuweka maneno katika vitendo, na imefanya kiolesura chetu (UI) kinachofikika kwa wote kuwa programu huria.\n\nTujenge ulimwengu bora pamoja, kidogo kidogo.';

  @override
  String get msProvideValueContent2Fix =>
      ' ipo.\nEmpathetic inajivunia kuweka maneno katika vitendo, na imefanya kiolesura chetu (UI) kinachofikika kwa wote kuwa programu huria.\n\nTujenge ulimwengu bora pamoja, kidogo kidogo.';

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
  String get ouHow => 'Inafanyaje kazi?';

  @override
  String get ouEFUIsHow => 'Open UI imejengwa juu ya, na inakufanya uanze na, ';

  @override
  String get ouSimplifies =>
      'EFUI ni maktaba (library) ya kuunda programu zinazofikika kwa wote kweli. Inarahisisha...';

  @override
  String get ouPlatform => 'Upatikanaji kwenye mifumo';

  @override
  String get ouPlatformContent =>
      'Unaweza kutumia EFUI kuunda kwenye Android, iOS, Linux, macOS, Windows na Wavuti!';

  @override
  String get ouResponsive => 'Muundo unaobadilika';

  @override
  String get ouResponsiveContent =>
      'Ili kuona jinsi inavyofanya kazi, cheza na dirisha unalotumia sasa hivi!';

  @override
  String get ouScreen => 'Usaidizi wa kisoma skrini';

  @override
  String get ouScreenContent =>
      'Programu za Empathetech zinasaidia watumiaji wanaohitaji ';

  @override
  String get ouScreenContentFix =>
      'Programu za Empathetic zinasaidia watumiaji wanaohitaji ';

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
      'Njia pekee ya kufikika kikweli na wateja WOTE ni kuwawezesha kwa uhuru wa kuchagua!\nEFUI hutoa muundo bora wa mtumiaji (UX) kwa udhibiti kamili wa mwonekano wa programu.';

  @override
  String get ouInternational => 'Uboreshaji wa kimataifa';

  @override
  String get ouInternationalContent =>
      'Programu za Empathetech zimetafsiriwa kwa lugha 14 (kufikia sasa).\nEFUI pia inatoa miundombinu ya tafsiri zisizo na kikomo za baadaye.';

  @override
  String get ouInternationalContentFix =>
      'Programu za Empathetic zimetafsiriwa kwa lugha 14 (kufikia sasa).\nEFUI pia inatoa miundombinu ya tafsiri zisizo na kikomo za baadaye.';

  @override
  String get ouReliability => 'Utegemezi';

  @override
  String get ouReliabilityContent =>
      'Programu za Empathetech zimeundwa kudumu. Hii SIO uundaji wa msimbo kwa kutumia AI.\nWaandaaji wa programu wa Empathetech ni watu. LLM ni mabata wa mpira (rubber ducks).';

  @override
  String get ouReliabilityContentFix =>
      'Programu za Empathetic zimeundwa kudumu. Hii SIO uundaji wa msimbo kwa kutumia AI.\nWaandaaji wa programu wa Empathetic ni watu. LLM ni mabata wa mpira.';

  @override
  String get ouGetStarted => 'Anza';

  @override
  String get ouOpenUIIconLabel =>
      'kikasha mchanga cha mipangilio (settings sandbox).';

  @override
  String get ouEFUITagLine =>
      'Zinapoundwa kwa EFUI, programu zako zinaweza kuwafikia watu wa aina yoyote kweli!\n';

  @override
  String get sosPromoLabel => 'Video ya matangazo ya Insta SOS.';

  @override
  String get sosDescription =>
      'Kamera, kiashirio cha SOS, na orodha ya haki zako vyote mahali pamoja.\nInapatikana katika lugha 14 na inasaidia visomaji vya skrini.';

  @override
  String get sosPrivate => 'InstaSOS haina akaunti, vidakuzi, au matangazo.\n';

  @override
  String get sosPrivateFix =>
      'Insta-SOS haina akaunti, vidakuzi, au matangazo.\n';

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
  String get llDescription =>
      'Kianzishi (Launcher) cha Android cha Empathetech.';

  @override
  String get llDescriptionFix =>
      'Kianzishi (Launcher) cha Android cha Empathetic.';

  @override
  String get llInDev =>
      'Liminal inaundwa.\nMuundo wake unaegemea kwenye urahisi, kwa sababu simu zetu zinapaswa kuwa zana za sisi kutumia, na sio kinyume chake.';

  @override
  String get llBut => 'Lakini, ni kianzishi chepesi kilichoundwa na ';

  @override
  String get llWhimsy =>
      '.\nHivyo, skrini yako ya mwanzo haitakuwa na msongamano na usumbufu, NA itaweza kugeuzwa kukufaa bila kikomo. Pamoja na ucheshi kidogo wa kuanzia.';

  @override
  String get llTheHood =>
      'Sampuli ya skrini ya mwanzo yenye picha ya Mlima Hood wa Portland.';

  @override
  String get llLasRosas =>
      'Sampuli ya skrini ya mwanzo yenye picha ya bustani ya Mawaridi ya Portland.';

  @override
  String get llFrogAndPigs =>
      'Sampuli ya skrini ya mwanzo yenye picha ya wanyamapori wa Portland.';

  @override
  String get llModel =>
      'Liminal itatolewa chini ya mfumo wa \"lipa unachoweza\".\nToleo la Google Play litauzwa, kwa sababu msimbo (mzuri) haujiandiki wenyewe.\nHifadhi ya GitHub pia itakuwa na APK inayopatikana bila malipo, kwa sababu uhusiano mzuri na teknolojia haupaswi kuwa tu kwa wale walio na kipato cha ziada.';

  @override
  String get ssPreview1 => 'Programu nyingine ya Empathetech, ';

  @override
  String get ssPreview1Fix => 'Programu nyingine ya Empathetic, ';

  @override
  String get ssPreview2 =>
      ', inaundwa.\nSmoke Signal ni programu ya mtandao wa kijamii iliyoundwa ili kutuweka mbali na skrini zetu.';

  @override
  String get ssPreview3 =>
      'Smoke Signal pia itakuwa ya kujihifadhi kikamilifu, kutokana na ';

  @override
  String get ssAPHint => 'Fungua kiungo cha nyaraka za Activity Pub';

  @override
  String get trWonder =>
      'Ikiwa unajiuliza jinsi timu ya mtu mmoja inavyohudumia lugha 14: Kutumia LLM kwa uwajibikaji.\nMchakato ni kama ifuatavyo...';

  @override
  String get trFirst => '1. Kamilisha && panga Kiingereza (cha Marekani) cha ';

  @override
  String get trSource => 'chanzo';

  @override
  String get trSecond => '2. Omba ';

  @override
  String get trBeNice =>
      ' kwa hisani kutafsiri maingizo.\nLugha moja kwa kila uzi, ili muktadha usivurugike.';

  @override
  String get trThird => '3. Kagua matokeo ukitumia ';

  @override
  String get trScript => 'skripti hii';

  @override
  String get trReverse =>
      'Inatafsiri kinyume lugha zote, ingizo moja kwa wakati. Ninasoma kila tokeo na kuweka alama kwa yale yaliyopoteza maana ya asili.';

  @override
  String get trFourth =>
      '4. Tumia Google Translate (Gemini ikiwa imezimwa) kurekebisha makosa, moja kwa wakati. Na/au...';

  @override
  String get trFifth =>
      '5. Ajiri wataalamu kwa sehemu muhimu.\nKwa mfano, haki (maingizo ya rvX) katika ';

  @override
  String get trBy => ' zilitafsiriwa na ';

  @override
  String get trHumans => 'binadamu';

  @override
  String get trProcess =>
      'Ni mchakato usio kamilifu, lakini inahitaji juhudi kubwa zaidi kuliko kutumia LLM tu bila kufikiri.\nNa, kusema kweli, ndicho ninachoweza kumudu (kwa sasa).';

  @override
  String get trSpeaking => 'Kuhusiana na hilo, tafadhali fikiria ';

  @override
  String get trEither =>
      '.\nPesa, au muda. Ninakadiria asilimia 100 ya uwezekano wa makosa (madogo).';

  @override
  String get vaIntro =>
      'Jinsi teknolojia inavyotumika haiwezi kuamuliwa na wale wanaoiunda.';

  @override
  String get vaTheBad =>
      'Jambo ambalo linaweza kuwa zuri, baya, au katikati.\nHebu tuchukue muda kujadili mabaya: programu za utapeli.';

  @override
  String get vaScamRisk =>
      ' hupunguza kwa kiasi kikubwa ugumu wa kuunda programu zilizo tayari kwa matumizi. Ikichanganywa na zana za uandishi wa msimbo za AI, ni rahisi zaidi kuliko hapo awali kwa matapeli kuunda programu zinazoonekana halali.\nIli kusaidia kupambana na hili, tutadumisha orodha ya programu zilizothibitishwa.';

  @override
  String get vaCheckIn =>
      'Ukiona programu inayotumia UI yetu, angalia hapa kwanza. Ikiwa haijathibitishwa, ushauri wetu ni: usiipakue.\nZaidi ya hayo, hii si orodha ya mapendekezo. Sharti pekee la kuwa kwenye orodha hii, ni kutokuwa tapeli.\nBaada ya kueleza hayo, ulimwengu wa UI unaojulikana una...';

  @override
  String get vaFirst => 'Mhusika wa kwanza';

  @override
  String get vaThird => 'Mhusika wa tatu aliyethibitishwa';

  @override
  String get vaWaiting => 'Inasubiri';

  @override
  String get vaWillYou => 'Utakuwa wa kwanza?';

  @override
  String get vaKnown => 'Matapeli wanaojulikana';

  @override
  String get vaSoGood =>
      'Hadi sasa, mambo ni mazuri!\nTafadhali usiwe wa kwanza :)';

  @override
  String get vaPublished =>
      'Ikiwa umechapisha programu kwa kutumia EFUI, tutumie ';

  @override
  String get vaDoNoHarm =>
      '.\nHatuhitaji kuipenda programu, na hatuifanyii uhakiki hadharani.\nTutakagua msimbo, na mradi tu hausababishi madhara, itathibitishwa.';

  @override
  String get vaPrivateFree =>
      'Ikiwa programu yako haipatikani kwa umma, usijali!\nLakini ikiwa watu usiowajua wanaweza kuipakua, tujulishe ili tuweze kuithibitisha.';

  @override
  String get vaDoYourPart =>
      'Ikiwa hutasikia kutoka kwetu, tutachukulia kuwa bidhaa yako ni tapeli hadi ithibitishwe vinginevyo.\nIkiwa unafikiri hilo ni kali, fikiria tena. Open UI ni kazi ya miaka mingi, iliyoshirikiwa bila malipo. Kutuma barua pepe ni jambo dogo sana unaloweza kufanya.';

  @override
  String get tsPageTitle => 'Timu';

  @override
  String get tsCore => 'Msingi';

  @override
  String get tsTheFounderLabel => 'Wasifu wa pande mbili wa Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Washa ili kumtumia barua pepe.';

  @override
  String get tsTheFounder => 'Mwanzilishi';

  @override
  String get tsBoardMember => 'Mjumbe wa Bodi';

  @override
  String get tsYou => 'Wewe?';

  @override
  String get tsMirrorLabel => 'Mduara mweusi unaong\'aa, ili kuiga kioo.';

  @override
  String get tsMirrorTip => 'Washa ili kututumia barua pepe';

  @override
  String get tsMirrorHint => 'Uliza kuhusu kujiunga na timu.';

  @override
  String get tsNonProfit =>
      'Kitu pekee kinachozuia Empathetech kuwa shirika kamili lisilo la faida ni idadi ya watu.\nIkiwa unaamini katika dhamira niliyoelezea, na una saa chache kwa wiki za kujitolea, tafadhali wasiliana nasi!\n\nItakuwa ni ya kujitolea kikamilifu kwa kuanzia. Silipwi (bado) pia.\nLakini, nisingekuwa ninafanya hivi kama nisingekuwa na mpango mzuri wa hilo pia.\n\nWote wanaovutiwa wanahimizwa kuwasiliana, lakini kuna uhitaji maalum kwa watu wenye uzoefu katika:\nusimamizi wa mitandao ya kijamii, kuchangisha fedha, na kuandika mapendekezo ya ruzuku.';

  @override
  String get tsWild => 'Huko nje';

  @override
  String get ts2025BoothLabel => 'Kibanda cha Empathetech cha Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Washa ili kufungua ukurasa wa maonyesho wa Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) ilikuwa ya kufurahisha sana!\nIlikuwa vigumu kurudi kwenye maisha ya kawaida, baada ya kuzungukwa na watu wengi wazuri, wenye msukumo, wenye akili, na wabunifu.\nAsante tena ikiwa ulipitia kwenye kibanda cha Empathetech, na tunatazamia kwa hamu mwaka ujao!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) ilikuwa ya kufurahisha sana!\nIlikuwa vigumu kurudi kwenye maisha ya kawaida, baada ya kuzungukwa na watu wengi wazuri, wenye msukumo, wenye akili, na wabunifu.\nAsante tena ikiwa ulipitia kwenye kibanda cha Empathetic, na tunatazamia kwa hamu mwaka ujao!';

  @override
  String get tsCommunity => 'Jumuiya';

  @override
  String get tsFreelance => 'Wafanyakazi Huru';

  @override
  String get tsVideoProduction => 'Uzalishaji wa Video';

  @override
  String get tsTranslators => 'Watafsiri';

  @override
  String tsProfile(Object name) {
    return 'Wasifu wa $name';
  }

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
  String get fahTeamHint =>
      'Fungua ukurasa wa timu ya Empathetic wa folding at home';

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
      'Kila biti unayotoa kwa Empathetech huondoa baiti kutoka kwa makampuni makubwa ya teknolojia.';

  @override
  String get csEveryBitFix =>
      'Kila biti unayotoa kwa Empathetic huondoa baiti kutoka kwa makampuni makubwa ya teknolojia.';

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
    return 'Fungua kiungo cha $page ya Empathetic';
  }

  @override
  String get csPower => 'Nguvu';

  @override
  String get csThanks => 'Asante sana kwa usaidizi wowote na wa kila aina!';
}
