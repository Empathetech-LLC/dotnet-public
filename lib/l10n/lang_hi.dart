// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class LangHi extends Lang {
  LangHi([String locale = 'hi']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'एक दो-आयामी (two-dimensional) रेतघड़ी।';

  @override
  String get gEmpathLogoHint => 'होम पेज पर जाने के लिए सक्रिय करें।';

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
  String get gEmpathetechGitHint =>
      'Empathetic LLC का गिटहब (GitHub) पेज खोलें';

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
  String get hsSlogan => 'आइए मिलकर एक बेहतर दुनिया बनाएं\nबिट x बिट';

  @override
  String get hsSloganFix => 'आइए मिलकर एक बेहतर दुनिया बनाएं\nथोड़ा-थोड़ा करके';

  @override
  String get hsVideoLabel =>
      'Empathetic LLC एनिमेटेड लोगो: Empathetic के अक्षर दो-आयामी रेतघड़ी लोगो में बदल जाते हैं';

  @override
  String get hsPeople => 'लोग उत्पाद नहीं हैं।';

  @override
  String get hsWell => 'खैर, उन्हें होना भी नहीं चाहिए।';

  @override
  String get hsReality =>
      'दुर्भाग्यपूर्ण वास्तविकता यह है कि हमारी पहचान, हमारा ';

  @override
  String get hsData => 'डेटा';

  @override
  String get hsGold =>
      ', बड़ी टेक कंपनियों की नवीनतम सोने की होड़ (gold rush) है।';

  @override
  String get hsRush =>
      'और बड़ी टेक कंपनियों को निश्चित रूप से जल्दबाजी करना पसंद है।\nउनकी कभी न खत्म होने वाली दौड़ के कारण, डिस्टोपियन (dystopian) साइंस-फिक्शन फिल्में बहुत तेजी से सच हो रही हैं।';

  @override
  String get hsSlow =>
      'अब धीमा होने का समय आ गया है।\nयह समय है कि हमारे पास हमारे डिजिटल स्वरूप का स्वामित्व हो।\nयह एक बेहतर ';

  @override
  String get hsPlan => 'योजना का समय है।';

  @override
  String get msPageTitle => 'मिशन';

  @override
  String get msSoWe => 'इसलिए हम';

  @override
  String get msBy => 'द्वारा';

  @override
  String get msFirst => 'सबसे पहले';

  @override
  String get msIDProblem => 'समस्या की पहचान करना';

  @override
  String get msIDProblemContent =>
      'मुनाफे को प्राथमिकता देने वाले बिजनेस मॉडल टिकाऊ नहीं होते।\n\nपरिभाषा के अनुसार: यदि मुनाफा पहले आता है, तो किसी मिशन की दिशा में काम करना, लोगों के साथ सही व्यवहार करना और संसाधनों का जिम्मेदारी से उपयोग करना जैसी बातें गौण हो जाती हैं।\n\nऔर बड़ी टेक कंपनियों में इस लालच पर कोई रोक नहीं है। ये तकनीकी दिग्गज हमारे पैसे से असंतुष्ट हो गए हैं, और हमारी पहचान को निशाना बनाने तथा हमारे दिमाग पर एकाधिकार करने के लिए उत्पाद बना रहे हैं।';

  @override
  String get msFindSolution => 'समाधान ढूँढना';

  @override
  String get msFindSolutionContent =>
      'सौभाग्य से, दुनिया भर में अद्भुत तकनीकी विशेषज्ञ एक साथ मिलकर एक बेहतर भविष्य के लिए काम कर रहे हैं।\nएक ऐसा भविष्य जहां सेवा प्रदाताओं और ग्राहकों के बीच एक सक्रिय, स्वस्थ और पारस्परिक रूप से लाभकारी संबंध हो।\n\nओपन सोर्स समुदाय।\n\nमूल रूप से, ओपन सोर्स सॉफ्टवेयर किसी के भी देखने के लिए स्वतंत्र रूप से उपलब्ध है। कई प्रोजेक्ट्स को स्वतंत्र रूप से संशोधित और पुनर्वितरित भी किया जा सकता है।\nयह ऐसा सॉफ्टवेयर है जिसमें छिपाने के लिए कुछ भी नहीं है, जिसे उन लोगों द्वारा बनाया गया है जो मानते हैं कि साझी समस्याओं के लिए साझे समाधान की आवश्यकता है।\n\nऔर ओपन सोर्स सॉफ्टवेयर की इस अद्भुत दुनिया में एक उप-श्रेणी मौजूद है: सेल्फ-होस्टिंग सॉफ्टवेयर।\n\nसेल्फ-होस्टिंग हमें किसी भी उपयोग में न आने वाले कंप्यूटर (जेब के आकार वाले भी) को लेने और अपना डेटा वहां संग्रहीत करने की सुविधा देती है।\nसेल्फ-होस्टिंग द्वारा, हम अपनी खुद की डिजिटल उपस्थिति को नियंत्रित कर सकते हैं, बजाय इसके कि हम किसी असंवेदनशील निगम के स्वामित्व वाले किसी दूर के सर्वर पर नियंत्रण सौंप दें।\n\nऔर लगभग हर चीज के सेल्फ-होस्टेड संस्करण उपलब्ध हैं! Adobe से लेकर Zoom तक, ऐसे उत्साही हैक्टिविस्ट (hacktivists) हैं जो ऐसे विकल्प बना रहे हैं जो मुनाफे से ज्यादा लोगों को महत्व देते हैं।\n\nतो, कोई मुनाफे को प्राथमिकता देने वाले/क्लोज्ड सोर्स से ओपन सोर्स में कैसे स्विच करता है? वे सेल्फ-होस्टिंग कैसे शुरू करते हैं?\nइसमें बहुत समय, ऊर्जा और पूर्व ज्ञान लगता है।\n\nयहीं हम काम आते हैं।';

  @override
  String get msProvideValue => 'काम करना';

  @override
  String get msProvideValueContent1 =>
      'Empathetech का मिशन सेल्फ-होस्टिंग को अधिक सुलभ बनाकर तकनीक में शक्ति को फिर से संतुलित करना है।\n\nहम ऐसे ऐप बनाएंगे जो किसी को भी अपनी डिजिटल पहचान का मालिक बनने में सक्षम बनाएंगे।\nहम ओपन सोर्स समुदाय और उन लोगों के बीच पुल बनाएंगे जिनके पास आवश्यक समय, ऊर्जा या पूर्व ज्ञान नहीं है।\n\nऔर आप एक मजबूत नींव के बिना पुल (या ऐप) नहीं बना सकते! इसलिए ';

  @override
  String get msProvideValueContent1Fix =>
      'Empathetic का मिशन सेल्फ-होस्टिंग को अधिक सुलभ बनाकर तकनीक में शक्ति को फिर से संतुलित करना है।\n\nहम ऐसे ऐप बनाएंगे जो किसी को भी अपनी डिजिटल पहचान का मालिक बनने में सक्षम बनाएंगे।\nहम ओपन सोर्स समुदाय और उन लोगों के बीच पुल बनाएंगे जिनके पास आवश्यक समय, ऊर्जा या पूर्व ज्ञान नहीं है।\n\nऔर आप एक मजबूत नींव के बिना पुल (या ऐप) नहीं बना सकते! इसलिए ';

  @override
  String get msProvideValueContent2 =>
      ' मौजूद है।\nEmpathetech शब्दों को कार्यों में बदलने में गर्व महसूस करता है, और हमने अपने सुलभ (accessible) UI को ओपन सोर्स बना दिया है।\n\nआइए मिलकर एक बेहतर दुनिया बनाएं, थोड़ा-थोड़ा करके।';

  @override
  String get msProvideValueContent2Fix =>
      ' मौजूद है।\nEmpathetic शब्दों को कार्यों में बदलने में गर्व महसूस करता है, और हमने अपने सुलभ (accessible) UI को ओपन सोर्स बना दिया है।\n\nआइए मिलकर एक बेहतर दुनिया बनाएं, थोड़ा-थोड़ा करके।';

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
  String get ouHow => 'यह कैसे काम करता है?';

  @override
  String get ouEFUIsHow =>
      'Open UI इसी पर बनाया गया है, और यह आपको इसके साथ शुरुआत कराता है, ';

  @override
  String get ouSimplifies =>
      'EFUI वास्तव में सुलभ ऐप बनाने के लिए एक लाइब्रेरी है। यह सरल बनाता है...';

  @override
  String get ouPlatform => 'प्लेटफॉर्म की उपलब्धता';

  @override
  String get ouPlatformContent =>
      'आप Android, iOS, Linux, macOS, Windows और Web पर बनाने के लिए EFUI का उपयोग कर सकते हैं!';

  @override
  String get ouResponsive => 'रिस्पॉन्सिव डिज़ाइन';

  @override
  String get ouResponsiveContent =>
      'इसे कार्य करते हुए देखने के लिए, अभी आप जिस विंडो का उपयोग कर रहे हैं उसके साथ खेलें!';

  @override
  String get ouScreen => 'स्क्रीन रीडर समर्थन';

  @override
  String get ouScreenContent =>
      'Empathetech ऐप्स उन उपयोगकर्ताओं का समर्थन करते हैं जिन्हें आवश्यकता है ';

  @override
  String get ouScreenContentFix =>
      'Empathetic ऐप्स उन उपयोगकर्ताओं का समर्थन करते हैं जिन्हें आवश्यकता है ';

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
      'सभी ग्राहकों के लिए वास्तव में सुलभ होने का एकमात्र तरीका उन्हें चुनाव की स्वतंत्रता के साथ सशक्त बनाना है!\nEFUI किसी ऐप की दिखावट (appearance) पर पूर्ण नियंत्रण के लिए एक शानदार UX प्रदान करता है。';

  @override
  String get ouInternational => 'अंतर्राष्ट्रीयकरण';

  @override
  String get ouInternationalContent =>
      'Empathetech ऐप्स का 14 भाषाओं में अनुवाद किया गया है (अब तक)।\nEFUI असीमित भविष्य के अनुवादों के लिए बुनियादी ढांचा भी प्रदान करता है।';

  @override
  String get ouInternationalContentFix =>
      'Empathetic ऐप्स का 14 भाषाओं में अनुवाद किया गया है (अब तक)।\nEFUI असीमित भविष्य के अनुवादों के लिए बुनियादी ढांचा भी प्रदान करता है।';

  @override
  String get ouReliability => 'विश्वसनीयता';

  @override
  String get ouReliabilityContent =>
      'Empathetech सॉफ्टवेयर लंबे समय तक चलने के लिए बनाया गया है। यह AI कोड जनरेशन नहीं है।\nEmpathetech प्रोग्रामर इंसान हैं। LLM रबर डक (rubber ducks) हैं।';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic सॉफ्टवेयर लंबे समय तक चलने के लिए बनाया गया है। यह AI कोड जनरेशन नहीं है।\nEmpathetic प्रोग्रामर इंसान हैं। LLM रबर डक (rubber ducks) हैं।';

  @override
  String get ouGetStarted => 'शुरू करें';

  @override
  String get ouOpenUIIconLabel => 'एक सेटिंग्स सैंडबॉक्स।';

  @override
  String get ouEFUITagLine =>
      'जब EFUI के साथ बनाया जाता है, तो आपके ऐप्स वास्तव में किसी भी दर्शक तक पहुंच सकते हैं!\n';

  @override
  String get sosPromoLabel => 'Insta SOS के लिए एक प्रचार वीडियो।';

  @override
  String get sosDescription =>
      'एक कैमरा, SOS बीकन, और आपके अधिकारों की सूची सब एक ही स्थान पर।\nयह 14 भाषाओं में उपलब्ध है और स्क्रीन रीडर्स को सपोर्ट करता है।';

  @override
  String get sosPrivate =>
      'InstaSOS में कोई खाते (accounts), कुकीज़ या विज्ञापन नहीं हैं。\n';

  @override
  String get sosPrivateFix =>
      'Insta-SOS में कोई खाते, कुकीज़ या विज्ञापन नहीं हैं。\n';

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
  String get llDescription => 'एक Empathetech Android लॉन्चर।';

  @override
  String get llDescriptionFix => 'एक Empathetic Android लॉन्चर।';

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
  String get ssPreview1 => 'एक और Empathetech ऐप, ';

  @override
  String get ssPreview1Fix => 'एक और Empathetic ऐप, ';

  @override
  String get ssPreview2 =>
      ', विकास के चरण में है।\nSmoke Signal एक सोशल नेटवर्क ऐप है जिसे हमें हमारी स्क्रीन से दूर रखने के लिए डिज़ाइन किया गया है।';

  @override
  String get ssPreview3 =>
      'Smoke Signal भी पूरी तरह से सेल्फ-होस्टेड होगा, धन्यवाद ';

  @override
  String get ssAPHint => 'Activity Pub दस्तावेज़ का लिंक खोलें';

  @override
  String get trWonder =>
      'अगर आप सोच रहे हैं कि एक व्यक्ति की टीम 14 भाषाओं को कैसे सपोर्ट करती है: जिम्मेदारी से LLM का उपयोग करके।\nप्रक्रिया इस प्रकार है...';

  @override
  String get trFirst =>
      '1. (अमेरिकी) अंग्रेज़ी को अंतिम रूप दें && व्यवस्थित करें ';

  @override
  String get trSource => 'स्रोत';

  @override
  String get trSecond => '2. पूछें ';

  @override
  String get trBeNice =>
      ' से कि वे प्रविष्टियों का अच्छे से अनुवाद करें।\nप्रति थ्रेड एक भाषा, ताकि संदर्भ (context) बहुत बड़ा न हो जाए।';

  @override
  String get trThird => '3. परिणामों का ऑडिट करें ';

  @override
  String get trScript => 'इस स्क्रिप्ट के साथ';

  @override
  String get trReverse =>
      'यह सभी भाषाओं का एक-एक करके विपरीत (reverse) अनुवाद करता है। मैं हर परिणाम को पढ़ता हूं और उन्हें फ़्लैग करता हूं जिन्होंने अपना मूल अर्थ खो दिया है।';

  @override
  String get trFourth =>
      '4. विफलताओं को एक-एक करके ठीक करने के लिए Google Translate (Gemini बंद) का उपयोग करें। और/या...';

  @override
  String get trFifth =>
      '5. महत्वपूर्ण हिस्सों के लिए पेशेवरों को काम पर रखें।\nउदाहरण के लिए, अधिकार (rvX प्रविष्टियाँ) इसमें ';

  @override
  String get trBy => ' का अनुवाद इनके द्वारा किया गया था ';

  @override
  String get trHumans => 'इंसानों';

  @override
  String get trProcess =>
      'यह एक अपूर्ण प्रक्रिया है, लेकिन यह केवल LLM के इस्तेमाल से कहीं अधिक मेहनत का काम है।\nऔर, सच कहूं तो, मैं (अभी के लिए) केवल यही वहन कर सकता हूँ।';

  @override
  String get trSpeaking => 'जिसके बारे में बात करते हुए, कृपया विचार करें ';

  @override
  String get trEither =>
      '।\nपैसे, या समय का। मेरा अनुमान है कि (मामूली) गलतियों की 100% संभावना है।';

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
      'यदि आपने EFUI का उपयोग करके कोई ऐप प्रकाशित किया है, तो हमें भेजें ';

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
  String get tsPageTitle => 'टीम';

  @override
  String get tsCore => 'कोर (Core)';

  @override
  String get tsTheFounderLabel =>
      'माइकल वाल्ड्रॉन (Michael Waldron) की एक दो-आयामी प्रोफ़ाइल।';

  @override
  String get tsTheFounderHint => 'उन्हें ईमेल भेजने के लिए सक्रिय करें।';

  @override
  String get tsTheFounder => 'संस्थापक';

  @override
  String get tsBoardMember => 'बोर्ड सदस्य';

  @override
  String get tsYou => 'आप?';

  @override
  String get tsMirrorLabel =>
      'एक दर्पण की नकल करने के लिए झिलमिलाहट के साथ एक काला घेरा।';

  @override
  String get tsMirrorTip => 'हमें ईमेल भेजने के लिए सक्रिय करें';

  @override
  String get tsMirrorHint => 'टीम में शामिल होने के बारे में पूछें।';

  @override
  String get tsNonProfit =>
      'Empathetech के एक उचित गैर-लाभकारी (nonprofit) संगठन बनने के रास्ते में एकमात्र बाधा लोगों की संख्या है।\nयदि आप मेरे द्वारा निर्धारित मिशन में विश्वास करते हैं, और आपके पास प्रति सप्ताह कुछ घंटे देने के लिए हैं, तो कृपया संपर्क करें!\n\nशुरुआत में यह पूरी तरह से स्वैच्छिक होगा। मुझे भी (अभी तक) भुगतान नहीं मिल रहा है।\nलेकिन, मैं ऐसा नहीं कर रहा होता अगर मेरे पास उसके लिए भी एक अच्छी योजना नहीं होती।\n\nजो लोग रुचि रखते हैं उन्हें संपर्क करने के लिए प्रोत्साहित किया जाता है, लेकिन विशेष रूप से उन लोगों की आवश्यकता है जिनके पास इनमें अनुभव है:\nसोशल मीडिया प्रबंधन, धन उगाहना (fundraising), और अनुदान लेखन (grant writing)।';

  @override
  String get tsWild => 'इन द वाइल्ड (In the wild)';

  @override
  String get ts2025BoothLabel => 'Open Sauce 2025 के लिए Empathetech बूथ।';

  @override
  String get ts2025BoothHint =>
      'Open Sauce प्रदर्शनी पेज खोलने के लिए सक्रिय करें।';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) बहुत शानदार रहा!\nइतने सारे दयालु, प्रेरित, बुद्धिमान और रचनात्मक लोगों से घिरे रहने के बाद, सामान्य जीवन में लौटना मुश्किल था।\nयदि आप Empathetech बूथ पर रुके थे तो फिर से धन्यवाद, और अगले साल के लिए शुभकामनाएँ!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) बहुत शानदार रहा!\nइतने सारे दयालु, प्रेरित, बुद्धिमान और रचनात्मक लोगों से घिरे रहने के बाद, सामान्य जीवन में लौटना मुश्किल था।\nयदि आप Empathetic बूथ पर रुके थे तो फिर से धन्यवाद, और अगले साल के लिए शुभकामनाएँ!';

  @override
  String get tsCommunity => 'समुदाय';

  @override
  String get tsFreelance => 'फ्रीलांस';

  @override
  String get tsVideoProduction => 'वीडियो प्रोडक्शन';

  @override
  String get tsTranslators => 'अनुवादक';

  @override
  String tsProfile(Object name) {
    return '$name की प्रोफ़ाइल';
  }

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
      'Empathetic फोल्डिंग एट होम (folding at home) टीम पेज खोलें';

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
      'Empathetech को दिया गया आपका हर एक बिट (bit) बड़ी टेक कंपनियों से एक बाइट (byte) छीन लेता है।';

  @override
  String get csEveryBitFix =>
      'Empathetic को दिया गया आपका हर एक बिट (bit) बड़ी टेक कंपनियों से एक बाइट (byte) छीन लेता है।';

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
    return 'Empathetic के $page का लिंक खोलें';
  }

  @override
  String get csPower => 'शक्ति (Power)';

  @override
  String get csThanks => 'किसी भी और सभी समर्थन के लिए बहुत-बहुत धन्यवाद!';
}
