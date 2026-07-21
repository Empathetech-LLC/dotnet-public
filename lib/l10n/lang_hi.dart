// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class LangHi extends Lang {
  LangHi([String locale = 'hi']) : super(locale);

  @override
  String get gYWTLogoLabel => 'एक दो-आयामी (two-dimensional) रेतघड़ी।';

  @override
  String get gYWTLogoHint => 'होम पेज पर जाने के लिए सक्रिय करें।';

  @override
  String gLearn(Object name) {
    return '$name के बारे में जानें';
  }

  @override
  String get gHomeHint => 'होम पेज खोलें';

  @override
  String get gProductsHint => 'उत्पाद पेज खोलें';

  @override
  String get gMissionHint => 'मिशन पेज खोलें';

  @override
  String get gTeamHint => 'टीम पेज खोलें';

  @override
  String get gContributeHint => 'योगदान पेज खोलें';

  @override
  String get gShare => 'साझा करें';

  @override
  String get gEmail => 'ईमेल';

  @override
  String gEmailTo(Object recipient) {
    return '$recipient को ईमेल करें';
  }

  @override
  String get gAnEmail => 'एक ईमेल';

  @override
  String get gEmailHint => 'आपका ईमेल क्लाइंट खोलता है';

  @override
  String get gNewsletter => 'न्यूज़लेटर';

  @override
  String gLogoLabel(Object thing) {
    return '$thing लोगो: ';
  }

  @override
  String gIconLabel(Object app) {
    return '$app का आइकन: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return '$platform के लिए $app डाउनलोड करें।';
  }

  @override
  String get gRepoHint => 'डेवलपमेंट रेपो का लिंक खोलें।';

  @override
  String get gYWTGitHint => 'YWT का गिटहब (GitHub) पेज खोलें';

  @override
  String gImageCredit(Object creator) {
    return 'छवि साभार: $creator';
  }

  @override
  String get gReachOut => 'संपर्क करें';

  @override
  String gFiverrPage(Object user) {
    return '$user का फाइवर (Fiverr) पेज खोलें';
  }

  @override
  String get gDontChaWish => 'क्या आप नहीं चाहते कि आपका फ्रंटएंड मज़ेदार हो ';

  @override
  String get gMeQ => 'मेरी तरह?';

  @override
  String get gDontCha => 'क्या आप नहीं चाहते?';

  @override
  String get gDontChaHint =>
      'इस स्क्रीन के सोर्स कोड के लिए गिटहब (GitHub) पेज खोलें';

  @override
  String get hsAnimLabel =>
      'YWT एनिमेटेड लोगो: YWT के अक्षर दो-आयामी रेतघड़ी लोगो में बदल जाते हैं';

  @override
  String get hsChange => 'अब बदलाव का समय है।';

  @override
  String get hsmIDProblem => 'समस्या की पहचान करना';

  @override
  String get hsmIDProblemContent =>
      'मुनाफे को प्राथमिकता देने वाले बिजनेस मॉडल टिकाऊ नहीं होते।\n\nपरिभाषा के अनुसार: यदि मुनाफा पहले आता है, तो किसी मिशन की दिशा में काम करना, लोगों के साथ सही व्यवहार करना और संसाधनों का जिम्मेदारी से उपयोग करना जैसी बातें गौण हो जाती हैं।\n\nऔर बड़ी टेक कंपनियों में इस लालच पर कोई रोक नहीं है। ये तकनीकी दिग्गज हमारे पैसे से असंतुष्ट हो गए हैं, और हमारी पहचान को निशाना बनाने तथा हमारे दिमाग पर एकाधिकार करने के लिए उत्पाद बना रहे हैं।';

  @override
  String get hsmSoWe => 'इसलिए हम';

  @override
  String get hsmFindSolution => 'समाधान ढूँढना';

  @override
  String get hsmFindSolutionContent =>
      'सौभाग्य से, दुनिया भर में अद्भुत तकनीकी विशेषज्ञ एक साथ मिलकर एक बेहतर भविष्य के लिए काम कर रहे हैं।\nएक ऐसा भविष्य जहां सेवा प्रदाताओं और ग्राहकों के बीच एक सक्रिय, स्वस्थ और पारस्परिक रूप से लाभकारी संबंध हो।\n\nओपन सोर्स समुदाय।\n\nमूल रूप से, ओपन सोर्स सॉफ्टवेयर किसी के भी देखने के लिए स्वतंत्र रूप से उपलब्ध है। कई प्रोजेक्ट्स को स्वतंत्र रूप से संशोधित और पुनर्वितरित भी किया जा सकता है।\nयह ऐसा सॉफ्टवेयर है जिसमें छिपाने के लिए कुछ भी नहीं है, जिसे उन लोगों द्वारा बनाया गया है जो मानते हैं कि साझी समस्याओं के लिए साझे समाधान की आवश्यकता है।\n\nऔर ओपन सोर्स सॉफ्टवेयर की इस अद्भुत दुनिया में एक उप-श्रेणी मौजूद है: सेल्फ-होस्टिंग सॉफ्टवेयर।\n\nसेल्फ-होस्टिंग हमें किसी भी उपयोग में न आने वाले कंप्यूटर (जेब के आकार वाले भी) को लेने और अपना डेटा वहां संग्रहीत करने की सुविधा देती है।\nसेल्फ-होस्टिंग द्वारा, हम अपनी खुद की डिजिटल उपस्थिति को नियंत्रित कर सकते हैं, बजाय इसके कि हम किसी असंवेदनशील निगम के स्वामित्व वाले किसी दूर के सर्वर पर नियंत्रण सौंप दें।\n\nऔर लगभग हर चीज के सेल्फ-होस्टेड संस्करण उपलब्ध हैं! Adobe से लेकर Zoom तक, ऐसे उत्साही हैक्टिविस्ट (hacktivists) हैं जो ऐसे विकल्प बना रहे हैं जो मुनाफे से ज्यादा लोगों को महत्व देते हैं।\n\nतो, कोई मुनाफे को प्राथमिकता देने वाले/क्लोज्ड सोर्स से ओपन सोर्स में कैसे स्विच करता है? वे सेल्फ-होस्टिंग कैसे शुरू करते हैं?\nइसमें बहुत समय, ऊर्जा और पूर्व ज्ञान लगता है।\n\nयहीं हम काम आते हैं।';

  @override
  String get hsmBy => 'द्वारा';

  @override
  String get hsmProvideValue => 'काम करना';

  @override
  String get hsmProvideValueContent1 =>
      'YWT सेल्फ-होस्टिंग को अधिक सुलभ बनाकर तकनीक में संतुलन ला रहा है।\n\nहम ऐसे ऐप बनाएंगे जो किसी को भी अपनी डिजिटल पहचान का स्वामित्व रखने में सक्षम बनाएंगे।\nहम ओपन सोर्स समुदाय और उन लोगों के बीच पुल बनाएंगे जिनके पास आवश्यक समय, ऊर्जा या पूर्व ज्ञान नहीं है।\n\nऔर आप एक मजबूत नींव के बिना पुल (या ऐप) नहीं बना सकते! इसलिए ';

  @override
  String get hsmProvideValueContent2 =>
      ' मौजूद है।\nहम अपनी बातों को काम में बदलने पर गर्व करते हैं, और हमने अपने सुलभ UI को ओपन सोर्स बना दिया है।\n\nआइए मिलकर थोड़ा-थोड़ा करके एक बेहतर दुनिया बनाएं।';

  @override
  String get hsmFirst => 'सबसे पहले';

  @override
  String get psPageTitle => 'उत्पाद';

  @override
  String get psTitleHint => 'सूची दिखाएं';

  @override
  String get psShowDemo => 'डेमो दिखाएं';

  @override
  String get psHideDemo => 'डेमो छिपाएं';

  @override
  String get psShowPromo => 'प्रोमो दिखाएं';

  @override
  String get psHidePromo => 'प्रोमो छिपाएं';

  @override
  String get psLearnMore => ' और जानने के लिए।';

  @override
  String get psDownloadNow => 'अभी डाउनलोड करें';

  @override
  String get psComingSoon => 'जल्द आ रहा है...';

  @override
  String get ouSlogan => 'किसी के लिए भी ऐप्स बनाएं';

  @override
  String get ouLike => 'उन उपयोगकर्ताओं की तरह जिन्हें चाहिए...';

  @override
  String get ouAccessible => 'सुलभ (Accessible) नियंत्रण';

  @override
  String get ouZeroStrain => 'आंखों पर शून्य तनाव';

  @override
  String get ouEverything => 'बीच की हर चीज़';

  @override
  String get ouRandom => 'रैंडम कॉन्फ़िगरेशन लागू किया गया।';

  @override
  String get ouIs => 'Open UI एक ऐप जेनरेटर है।';

  @override
  String get ouDemo => 'Open UI द्वारा एक नया ऐप बनाने का प्रदर्शन।';

  @override
  String get ouFoundation =>
      'यह एक क्लिक में सुलभ, क्रॉस-प्लेटफॉर्म, बहु-भाषा, उत्पादन के लिए तैयार (production ready) ऐप्स की नींव बनाता है।';

  @override
  String get ouLocal =>
      'सब कुछ आपके कंप्यूटर पर चलता है। कोई क्रेडेंशियल, क्रेडिट कार्ड या कुकीज़ नहीं हैं।';

  @override
  String get ouRequirements =>
      'एकमात्र आवश्यकताएं इंटरनेट कनेक्शन और एक विचार हैं।';

  @override
  String get ouFlutterToo => '...और फ्लटर (Flutter)...';

  @override
  String get ouSimplifies => 'यह आसान बनाता है:';

  @override
  String get ouPlatform => 'प्लेटफॉर्म की उपलब्धता';

  @override
  String get ouPlatformContent =>
      'आप Android, iOS, Linux, macOS, Windows और Web पर बनाने के लिए Open UI का उपयोग कर सकते हैं!';

  @override
  String get ouResponsive => 'रिस्पॉन्सिव डिज़ाइन';

  @override
  String get ouResponsiveContent =>
      'इसे कार्य करते हुए देखने के लिए, अभी आप जिस विंडो का उपयोग कर रहे हैं उसके साथ खेलें!';

  @override
  String get ouScreen => 'स्क्रीन रीडर समर्थन';

  @override
  String get ouScreenContent =>
      'YWT ऐप्स उन उपयोगकर्ताओं का समर्थन करते हैं जिन्हें आवश्यकता है ';

  @override
  String get ouTalkBackHint => 'TalkBack दस्तावेज़ का लिंक खोलें';

  @override
  String get ouAnd => ' और ';

  @override
  String get ouVoiceOverHint => 'VoiceOver दस्तावेज़ का लिंक खोलें';

  @override
  String get ouCustom => 'उपयोगकर्ता अनुकूलन';

  @override
  String get ouCustomContent =>
      'सभी ग्राहकों के लिए वास्तव में सुलभ होने का एकमात्र तरीका उन्हें चुनाव की स्वतंत्रता के साथ सशक्त बनाना है!\nOpen UI किसी ऐप की दिखावट (appearance) पर पूर्ण नियंत्रण के लिए एक शानदार UX प्रदान करता है。';

  @override
  String get ouInternational => 'अंतर्राष्ट्रीयकरण';

  @override
  String get ouInternationalContent =>
      'YWT ऐप्स का 14 भाषाओं में अनुवाद किया गया है (अब तक)।\nOpen UI असीमित भविष्य के अनुवादों के लिए बुनियादी ढांचा भी प्रदान करता है।';

  @override
  String get ouReliability => 'विश्वसनीयता';

  @override
  String get ouReliabilityContent =>
      'YWT सॉफ्टवेयर लंबे समय तक चलने के लिए बनाया गया है। यह AI कोड जनरेशन नहीं है।\nप्रोग्रामर इंसान हैं। LLM रबर डक (rubber ducks) हैं।';

  @override
  String get ouGetStarted => 'शुरू करें';

  @override
  String get ouIconLabel => 'एक सेटिंग्स सैंडबॉक्स।';

  @override
  String get ouTagLine =>
      'जब Open UI के साथ बनाया जाता है, तो आपके ऐप्स वास्तव में किसी भी दर्शक तक पहुंच सकते हैं!\n';

  @override
  String get sosPromoLabel => 'Insta SOS के लिए एक प्रचार वीडियो।';

  @override
  String get sosDescription =>
      'एक कैमरा, SOS बीकन, और आपके अधिकारों की सूची सब एक ही स्थान पर।\nयह 14 भाषाओं में उपलब्ध है और स्क्रीन रीडर्स को सपोर्ट करता है।';

  @override
  String get sosPrivate =>
      'InstaSOS में कोई खाते (accounts), कुकीज़ या विज्ञापन नहीं हैं。\n';

  @override
  String get sosFree => 'यह पूरी तरह से मुफ्त है और इसका कोड ';

  @override
  String get sosOpenSource => 'ओपन सोर्स';

  @override
  String get sosConsider => 'कृपया ';

  @override
  String get sosContributing => 'योगदान देने';

  @override
  String get sosSAPS =>
      ' पर विचार करें ताकि एक सार्वजनिक सेवा के रूप में सॉफ़्टवेयर का समर्थन किया जा सके।';

  @override
  String get sosIconLabel => 'एक चमकीले रंग की नोटिफिकेशन घंटी।';

  @override
  String get sosWeb =>
      'योगदान देने का एक विशिष्ट और अत्यधिक प्रभावशाली तरीका InstaSOS को ऑनलाइन होस्ट करने का खर्च उठाना होगा।\n\nऐप स्टोर के मालिकों ने अपनी निष्ठा स्पष्ट कर दी है, और जब/यदि InstaSOS लोकप्रियता हासिल करता है तो इसे हटाया जा सकता है।\nAndroid उपयोगकर्ताओं के पास हमेशा स्वयं इंस्टॉल करने का विकल्प होगा, लेकिन iOS उपयोगकर्ताओं के लिए एकमात्र व्यवहार्य विकल्प एक वेब ऐप होगा।\n\nसौभाग्य से, फ्लटर (Flutter) ऐप्स क्लाइंट साइड कंप्यूट हैं, इसलिए बिल कम होगा।\nहमें (आपको) केवल ट्रैफ़िक प्रबंधन (traffic management) के लिए भुगतान करना होगा।';

  @override
  String get llInDev =>
      'Liminal विकास के चरण में है।\nइसका डिज़ाइन अतिसूक्ष्मवाद (minimalism) की ओर झुका हुआ है, क्योंकि हमारे फोन हमारे उपयोग के लिए उपकरण होने चाहिए, न कि इसका उल्टा।';

  @override
  String get llBut => 'लेकिन, यह एक मिनिमलिस्ट लॉन्चर है जिसे ';

  @override
  String get llWhimsy =>
      ' के साथ बनाया गया है।\nइसलिए, आपकी होम स्क्रीन अव्यवस्था और ध्यान भटकाने वाली चीज़ों से मुक्त होगी, और असीमित रूप से अनुकूलन योग्य (customizable) होगी। साथ ही थोड़ा सा मनमौजीपन (whimsy) भी।';

  @override
  String get llTheHood =>
      'पोर्टलैंड के माउंट हूड की तस्वीर वाली एक नमूना होम स्क्रीन।';

  @override
  String get llLasRosas =>
      'पोर्टलैंड के रोज़ गार्डन की तस्वीर वाली एक नमूना होम स्क्रीन।';

  @override
  String get llFrogAndPigs =>
      'पोर्टलैंड के वन्यजीवों की तस्वीर वाली एक नमूना होम स्क्रीन।';

  @override
  String get llModel =>
      'Liminal को \"pay what you can\" (जो आप दे सकते हैं वो दें) मॉडल के तहत रिलीज़ किया जाएगा।\nGoogle Play संस्करण सशुल्क (paid) होगा, क्योंकि (अच्छा) कोड खुद नहीं लिखा जाता।\nGitHub रेपो पर एक मुफ्त में उपलब्ध APK भी होगा, क्योंकि तकनीक के साथ एक स्वस्थ संबंध केवल उनके लिए ही सीमित नहीं होना चाहिए जिनके पास खर्च करने योग्य आय है।';

  @override
  String get vaIntro =>
      'किसी तकनीक का उपयोग कैसे किया जाता है, यह इसे बनाने वालों द्वारा तय नहीं किया जा सकता।';

  @override
  String get vaTheBad =>
      'जो कि अच्छी बात, बुरी बात, या बीच की कोई बात हो सकती है।\nआइए कुछ समय निकालकर बुरी बात पर चर्चा करें: स्कैम ऐप्स (scam apps)।';

  @override
  String get vaScamRisk =>
      ' प्रोडक्शन रेडी (production ready) ऐप्स बनाने की कठिनाई को काफी कम कर देता है। AI कोडिंग टूल्स के साथ मिलकर, स्कैमर्स के लिए ऐसे ऐप्स बनाना पहले से कहीं अधिक आसान हो गया है जो वैध (legitimate) दिखते और महसूस होते हैं।\nइससे निपटने में मदद करने के लिए, हम सत्यापित (verified) ऐप्स की एक सूची बनाए रखेंगे।';

  @override
  String get vaCheckIn =>
      'यदि आप कोई ऐसा ऐप देखते हैं जो हमारे UI का उपयोग करता है, तो पहले यहां देखें। यदि यह सत्यापित नहीं है, तो हमारी सलाह है: इसे डाउनलोड न करें।\nइसके अलावा, यह अनुशंसाओं की सूची नहीं है। इस सूची में होने की एकमात्र शर्त यह है कि यह कोई स्कैम (घोटाला) न हो।\nइसके कवर हो जाने के बाद, ज्ञात UIniverse में शामिल हैं...';

  @override
  String get vaFirst => 'प्रथम पक्ष';

  @override
  String get vaThird => 'तृतीय पक्ष सत्यापित';

  @override
  String get vaWaiting => 'प्रतीक्षा में';

  @override
  String get vaWillYou => 'क्या आप पहले होंगे?';

  @override
  String get vaKnown => 'ज्ञात स्कैम';

  @override
  String get vaSoGood => 'अब तक सब ठीक है!\nकृपया पहले न बनें :)';

  @override
  String get vaPublished =>
      'यदि आपने Open UI का उपयोग करके कोई ऐप प्रकाशित किया है, तो हमें भेजें ';

  @override
  String get vaDoNoHarm =>
      '।\nयह ज़रूरी नहीं कि हमें ऐप पसंद आए, और हम सार्वजनिक रूप से इसकी समीक्षा नहीं कर रहे हैं।\nहम कोड की जांच करेंगे, और जब तक यह नुकसान नहीं पहुंचाता, इसे सत्यापित किया जाएगा।';

  @override
  String get vaPrivateFree =>
      'यदि आपका ऐप सार्वजनिक रूप से उपलब्ध नहीं है, तो चिंता न करें!\nलेकिन अगर वे लोग इसे डाउनलोड कर सकते हैं जिन्हें आप नहीं जानते, तो हमें बताएं ताकि हम इसे सत्यापित कर सकें।';

  @override
  String get vaDoYourPart =>
      'यदि हमें आपकी ओर से कुछ नहीं मिला है, तो हम यह मान लेंगे कि आपका उत्पाद एक स्कैम है जब तक कि अन्यथा सिद्ध न हो जाए।\nयदि आपको लगता है कि यह बहुत कठोर है, तो फिर से सोचें। Open UI वर्षों का काम है, जिसे स्वतंत्र रूप से साझा किया गया है। एक ईमेल भेजना आपके द्वारा किया जाने वाला न्यूनतम कार्य है।';

  @override
  String get fahJoin => 'फोल्ड (Fold) से जुड़ें';

  @override
  String get fahIconLabel => 'एक प्रोटीन अणु।';

  @override
  String get fahIconHint => 'उनकी साइट खोलने के लिए सक्रिय करें।';

  @override
  String get fahIntro1 => 'शामिल हों ';

  @override
  String get fahIntro2 => ' Folding@home टीम में!';

  @override
  String get fahTeamHint =>
      'YWT फोल्डिंग एट होम (folding at home) टीम पेज खोलें';

  @override
  String get fahWhats => 'क्या है ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Folding at Home का \'अबाउट\' (about) पेज खोलें';

  @override
  String get fahStats =>
      'साथ मिलकर, हमने 400 मिलियन से अधिक अंक अर्जित किए हैं।\nयह हमें दुनिया भर की सभी टीमों के शीर्ष 2% में रखता है!';

  @override
  String get csPageTitle => 'योगदान करें';

  @override
  String get csEveryBit =>
      'हमारे लिए हर \'बिट\' बड़ी टेक कंपनियों से एक \'बाइट\' दूर है।';

  @override
  String get csTime => 'समय';

  @override
  String get csBecome => ' बनने के बारे में एक ';

  @override
  String get csGit => 'गिटहब (GitHub) योगदानकर्ता';

  @override
  String get csMoney => 'पैसे';

  @override
  String csOpenLink(Object page) {
    return 'YWT के $page का लिंक खोलें';
  }

  @override
  String get csPower => 'शक्ति (Power)';

  @override
  String get csThanks => 'किसी भी और सभी समर्थन के लिए बहुत-बहुत धन्यवाद!';
}
