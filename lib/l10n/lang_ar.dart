// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class LangAr extends Lang {
  LangAr([String locale = 'ar']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'ساعة رملية ثنائية الأبعاد.';

  @override
  String get gEmpathLogoHint => 'قم بالتفعيل للانتقال إلى الصفحة الرئيسية.';

  @override
  String gLearn(Object name) {
    return 'تعرّف على $name';
  }

  @override
  String get gHomeHint => 'فتح الصفحة الرئيسية';

  @override
  String get gProductsHint => 'فتح صفحة المنتج';

  @override
  String get gMissionHint => 'فتح صفحة المهمة';

  @override
  String get gTeamHint => 'فتح صفحة الفريق';

  @override
  String get gContributeHint => 'فتح صفحة المساهمة';

  @override
  String get gShare => 'مشاركة';

  @override
  String get gEmail => 'البريد الإلكتروني';

  @override
  String gEmailTo(Object recipient) {
    return 'إرسال بريد إلكتروني إلى $recipient';
  }

  @override
  String get gAnEmail => 'بريد إلكتروني';

  @override
  String get gEmailHint => 'يفتح عميل البريد الإلكتروني الخاص بك';

  @override
  String get gNewsletter => 'النشرة الإخبارية';

  @override
  String gLogoLabel(Object thing) {
    return 'شعار $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'أيقونة $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'تنزيل $app لـ $platform.';
  }

  @override
  String get gRepoHint => 'فتح رابط لمستودع التطوير.';

  @override
  String get gEmpathetechGitHint => 'فتح صفحة GitHub لشركة Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'مصدر الصورة: $creator';
  }

  @override
  String get gReachOut => 'تواصل معنا';

  @override
  String gFiverrPage(Object user) {
    return 'فتح صفحة Fiverr الخاصة بـ $user';
  }

  @override
  String get gDontChaWish => 'ألا تتمنى لو كانت واجهتك الأمامية ممتعة ';

  @override
  String get gMeQ => 'مثلي؟';

  @override
  String get gDontCha => 'ألا تتمنى ذلك؟';

  @override
  String get gDontChaHint => 'فتح صفحة GitHub لشفرة المصدر الخاصة بهذه الشاشة';

  @override
  String get hsSlogan => 'لنبني عالماً أفضل معاً\nبت × بت';

  @override
  String get hsSloganFix => 'لنبني عالماً أفضل معاً\nبت وراء بت';

  @override
  String get hsVideoLabel =>
      'شعار Empathetic LLC المتحرك: تتحول الحروف في Empathetic إلى شعار الساعة الرملية ثنائي الأبعاد';

  @override
  String get hsPeople => 'الناس ليسوا منتجات.';

  @override
  String get hsWell => 'حسناً، لا ينبغي أن يكونوا كذلك.';

  @override
  String get hsReality => 'الواقع المؤسف هو أن هوياتنا، و';

  @override
  String get hsData => 'بياناتنا';

  @override
  String get hsGold => '، هي أحدث حمى ذهب لشركات التكنولوجيا الكبرى.';

  @override
  String get hsRush =>
      'وشركات التكنولوجيا الكبرى بالتأكيد تحب التسرع.\nبفضل سباقهم الذي لا ينتهي، تتحول أفلام الخيال العلمي البائسة إلى حقيقة بسرعة كبيرة جدًا.';

  @override
  String get hsSlow =>
      'لقد حان الوقت للتمهل.\nلقد حان الوقت لامتلاك ذواتنا الرقمية.\nلقد حان الوقت لـ ';

  @override
  String get hsPlan => 'خطة أفضل.';

  @override
  String get msPageTitle => 'المهمة';

  @override
  String get msSoWe => 'لذلك نحن';

  @override
  String get msBy => 'عن طريق';

  @override
  String get msFirst => 'أولاً عن طريق';

  @override
  String get msIDProblem => 'تحديد المشكلة';

  @override
  String get msIDProblemContent =>
      'نماذج الأعمال التي تضع الربح أولاً ليست مستدامة.\n\nبحكم التعريف: إذا كان الربح يأتي أولاً، فإن أشياء مثل العمل نحو تحقيق مهمة، ومعاملة الناس بشكل صحيح، والاستهلاك المسؤول للموارد كلها تصبح أفكارًا ثانوية.\n\nوقد مضى هذا الجشع بلا رقيب في شركات التكنولوجيا الكبرى. لقد أصبح عمالقة التكنولوجيا غير راضين عن أموالنا، ويبنون منتجات لاستهداف هوياتنا واحتكار عقولنا.';

  @override
  String get msFindSolution => 'إيجاد حل';

  @override
  String get msFindSolutionContent =>
      'لحسن الحظ، هناك تقنيون رائعون في جميع أنحاء العالم يعملون معًا نحو سردية أفضل.\nسردية حيث يتمتع مقدمو الخدمات والعملاء بعلاقة نشطة وصحية ومتبادلة المنفعة.\n\nمجتمع المصادر المفتوحة.\n\nفي جوهرها، تتوفر البرمجيات مفتوحة المصدر مجانًا ليطلع عليها أي شخص. كما يمكن تعديل العديد من المشاريع وإعادة توزيعها بحرية.\nإنها برمجيات ليس لديها ما تخفيه، تم بناؤها بواسطة أشخاص يدركون أن المشاكل المشتركة تتطلب حلولًا مشتركة.\n\nوفي عالم البرمجيات مفتوحة المصدر الرائع، توجد فئة فرعية: برمجيات الاستضافة الذاتية.\n\nتتيح لنا الاستضافة الذاتية أخذ أي جهاز كمبيوتر غير مستخدم (حتى الأجهزة بحجم الجيب) وتخزين بياناتنا هناك.\nمن خلال الاستضافة الذاتية، يمكننا التحكم في تواجدنا الرقمي، بدلاً من التنازل عن السيطرة لخادم بعيد، تملكه شركة تفتقر إلى التعاطف.\n\nوهناك نسخ ذاتية الاستضافة لكل شيء تقريبًا! من Adobe إلى Zoom، هناك ناشطون قراصنة شغوفون يبنون بدائل تضع الناس فوق الأرباح.\n\nإذن، كيف يمكن للمرء الانتقال من البرمجيات التي تضع الربح أولاً/مغلقة المصدر إلى البرمجيات مفتوحة المصدر؟ كيف يبدؤون في الاستضافة الذاتية؟\nيستغرق الأمر الكثير من الوقت والطاقة والمعرفة المسبقة.\n\nوهنا يأتي دورنا.';

  @override
  String get msProvideValue => 'إنجاز العمل';

  @override
  String get msProvideValueContent1 =>
      'تتمثل مهمة Empathetech في إعادة توازن القوة في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكّن أي شخص من امتلاك هويته الرقمية.\nسنبني جسورًا بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة المطلوبة.\n\nولا يمكنك بناء جسور (أو تطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get msProvideValueContent1Fix =>
      'تتمثل مهمة Empathetic في إعادة توازن القوة في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكّن أي شخص من امتلاك هويته الرقمية.\nسنبني جسورًا بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة المطلوبة.\n\nولا يمكنك بناء جسور (أو تطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get msProvideValueContent2 =>
      ' موجودة.\nتفتخر Empathetech بمطابقة الكلمات بالأفعال، وقد جعلنا واجهة المستخدم التي يسهل الوصول إليها مفتوحة المصدر.\n\nلنبني عالماً أفضل معاً، بت وراء بت.';

  @override
  String get msProvideValueContent2Fix =>
      ' موجودة.\nتفتخر Empathetic بمطابقة الكلمات بالأفعال، وقد جعلنا واجهة المستخدم التي يسهل الوصول إليها مفتوحة المصدر.\n\nلنبني عالماً أفضل معاً، بت وراء بت.';

  @override
  String get psPageTitle => 'المنتجات';

  @override
  String get psTitleHint => 'إظهار القائمة';

  @override
  String get psShowDemo => 'إظهار العرض التوضيحي';

  @override
  String get psHideDemo => 'إخفاء العرض التوضيحي';

  @override
  String get psShowPromo => 'إظهار العرض الترويجي';

  @override
  String get psHidePromo => 'إخفاء العرض الترويجي';

  @override
  String get psLearnMore => ' لمعرفة المزيد.';

  @override
  String get psDownloadNow => 'تنزيل الآن';

  @override
  String get psComingSoon => 'قريباً...';

  @override
  String get ouSlogan => 'أنشئ تطبيقات لأي شخص';

  @override
  String get ouLike => 'مثل المستخدمين الذين يحتاجون...';

  @override
  String get ouAccessible => 'عناصر تحكم يسهل الوصول إليها';

  @override
  String get ouZeroStrain => 'إجهاد عين معدوم';

  @override
  String get ouEverything => 'وكل شيء بينهما';

  @override
  String get ouRandom => 'تم تطبيق تكوين عشوائي.';

  @override
  String get ouIs => 'Open UI هو منشئ تطبيقات.';

  @override
  String get ouDemo => 'عرض توضيحي لـ Open UI وهو ينشئ تطبيقاً جديداً.';

  @override
  String get ouFoundation =>
      'إنه ينشئ الأساس لتطبيقات يسهل الوصول إليها، ومتعددة المنصات، ومتعددة اللغات، وجاهزة للإنتاج بنقرة واحدة.';

  @override
  String get ouLocal =>
      'كل شيء يعمل على جهاز الكمبيوتر الخاص بك. لا توجد بيانات اعتماد أو بطاقات ائتمان أو ملفات تعريف ارتباط.';

  @override
  String get ouRequirements => 'المتطلبات الوحيدة هي اتصال بالإنترنت وفكرة.';

  @override
  String get ouFlutterToo => '...و Flutter...';

  @override
  String get ouHow => 'كيف يعمل؟';

  @override
  String get ouEFUIsHow => 'تم بناء Open UI على أساس، ويبدأ بك مع، ';

  @override
  String get ouSimplifies =>
      'EFUI هي مكتبة لبناء تطبيقات يسهل الوصول إليها حقًا. إنها تبسط...';

  @override
  String get ouPlatform => 'توفر المنصات';

  @override
  String get ouPlatformContent =>
      'يمكنك استخدام EFUI للإنشاء على أنظمة Android و iOS و Linux و macOS و Windows والويب!';

  @override
  String get ouResponsive => 'تصميم متجاوب';

  @override
  String get ouResponsiveContent =>
      'لرؤية ذلك قيد العمل، العب بالنافذة التي تستخدمها الآن!';

  @override
  String get ouScreen => 'دعم قارئ الشاشة';

  @override
  String get ouScreenContent =>
      'تطبيقات Empathetech تدعم المستخدمين الذين يحتاجون إلى ';

  @override
  String get ouScreenContentFix =>
      'تطبيقات Empathetic تدعم المستخدمين الذين يحتاجون إلى ';

  @override
  String get ouTalkBackHint => 'فتح رابط لوثائق TalkBack';

  @override
  String get ouAnd => ' و ';

  @override
  String get ouVoiceOverHint => 'فتح رابط لوثائق VoiceOver';

  @override
  String get ouCustom => 'تخصيص المستخدم';

  @override
  String get ouCustomContent =>
      'الطريقة الوحيدة لتكون متاحًا حقًا لجميع العملاء هي تمكينهم بحرية الاختيار!\nتوفر EFUI تجربة مستخدم أنيقة للتحكم الكامل في مظهر التطبيق.';

  @override
  String get ouInternational => 'التدويل';

  @override
  String get ouInternationalContent =>
      'تُرجمت تطبيقات Empathetech إلى 14 لغة (حتى الآن).\nتوفر EFUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouInternationalContentFix =>
      'تُرجمت تطبيقات Empathetic إلى 14 لغة (حتى الآن).\nتوفر EFUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouReliability => 'الموثوقية';

  @override
  String get ouReliabilityContent =>
      'تم بناء برمجيات Empathetech لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو Empathetech هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouReliabilityContentFix =>
      'تم بناء برمجيات Empathetic لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو Empathetic هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouGetStarted => 'البدء';

  @override
  String get ouOpenUIIconLabel => 'بيئة اختبار (sandbox) للإعدادات.';

  @override
  String get ouEFUITagLine =>
      'عند البناء باستخدام EFUI، يمكن لتطبيقاتك أن تصل حقًا إلى أي جمهور!\n';

  @override
  String get sosPromoLabel => 'فيديو ترويجي لـ Insta SOS.';

  @override
  String get sosDescription =>
      'كاميرا، ومنارة طوارئ (SOS)، وقائمة بحقوقك، كل ذلك في مكان واحد.\nإنه متاح بـ 14 لغة ويدعم قارئات الشاشة.';

  @override
  String get sosPrivate =>
      'لا يحتوي InstaSOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

  @override
  String get sosPrivateFix =>
      'لا يحتوي Insta-SOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

  @override
  String get sosFree => 'إنه مجاني تمامًا والكود ';

  @override
  String get sosOpenSource => 'مفتوح المصدر';

  @override
  String get sosConsider => 'يرجى التفكير في ';

  @override
  String get sosContributing => 'المساهمة';

  @override
  String get sosSAPS => ' لدعم البرمجيات كخدمة عامة.';

  @override
  String get sosIconLabel => 'جرس إشعارات بألوان صاخبة.';

  @override
  String get sosWeb =>
      'إحدى الطرق المحددة وعالية التأثير للمساهمة هي تغطية فاتورة استضافة InstaSOS عبر الإنترنت.\n\nلقد أوضح مالكو متاجر التطبيقات ولاءاتهم، وقد تتم إزالة InstaSOS إذا/عندما يكتسب شعبية.\nسيكون لدى مستخدمي Android دائمًا خيار التثبيت الذاتي، لكن البديل الوحيد القابل للتطبيق لمستخدمي iOS هو تطبيق ويب.\n\nلحسن الحظ، تعتمد تطبيقات Flutter على حوسبة جانب العميل، لذا ستكون الفاتورة منخفضة.\nسنحتاج (أنت) فقط إلى الدفع مقابل إدارة حركة المرور.';

  @override
  String get llDescription => 'مشغل تطبيقات (Launcher) Android من Empathetech.';

  @override
  String get llDescriptionFix =>
      'مشغل تطبيقات (Launcher) Android من Empathetic.';

  @override
  String get llInDev =>
      'Liminal قيد التطوير.\nيميل تصميمه نحو التبسيط، لأن هواتفنا يجب أن تكون أدوات نستخدمها، وليس العكس.';

  @override
  String get llBut => 'ولكن، إنه مشغل مبسط مبني باستخدام ';

  @override
  String get llWhimsy =>
      '.\nلذا، ستكون شاشتك الرئيسية خالية من الفوضى والمشتتات، وقابلة للتخصيص بلا حدود. مع قليل من المرح أيضًا.';

  @override
  String get llTheHood => 'عينة لشاشة رئيسية مع صورة لجبل هود في بورتلاند.';

  @override
  String get llLasRosas =>
      'عينة لشاشة رئيسية مع صورة لحديقة الورود في بورتلاند.';

  @override
  String get llFrogAndPigs =>
      'عينة لشاشة رئيسية مع صورة للحياة البرية في بورتلاند.';

  @override
  String get llModel =>
      'سيتم إصدار Liminal وفق نموذج \"ادفع ما تستطيع\".\nستكون نسخة Google Play مدفوعة، لأن الكود (الجيد) لا يكتب نفسه.\nسيحتوي مستودع GitHub أيضًا على ملف APK متاح مجانًا، لأن العلاقة الصحية مع التكنولوجيا لا ينبغي أن تقتصر على أولئك الذين لديهم دخل فائض.';

  @override
  String get ssPreview1 => 'تطبيق آخر من Empathetech، ';

  @override
  String get ssPreview1Fix => 'تطبيق آخر من Empathetic، ';

  @override
  String get ssPreview2 =>
      '، قيد التطوير.\nSmoke Signal هو تطبيق شبكة اجتماعية مصمم لإبعادنا عن شاشاتنا.';

  @override
  String get ssPreview3 =>
      'سيكون تطبيق Smoke Signal أيضًا مستضافًا ذاتيًا بالكامل، بفضل ';

  @override
  String get ssAPHint => 'فتح رابط لوثائق Activity Pub';

  @override
  String get trWonder =>
      'إذا كنت تتساءل كيف يمكن لفريق مكون من شخص واحد دعم 14 لغة: استخدام النماذج اللغوية الكبيرة بمسؤولية.\nالعملية كالتالي...';

  @override
  String get trFirst => '1. إنهاء وتنظيم الإنجليزية (الأمريكية) ';

  @override
  String get trSource => 'المصدر';

  @override
  String get trSecond => '2. اطلب من ';

  @override
  String get trBeNice =>
      ' بلطف ترجمة المدخلات.\nلغة واحدة لكل محادثة، حتى لا يتضخم السياق.';

  @override
  String get trThird => '3. تدقيق النتائج باستخدام ';

  @override
  String get trScript => 'هذا البرنامج النصي';

  @override
  String get trReverse =>
      'يقوم بترجمة عكسية لجميع اللغات، مدخلاً تلو الآخر. أقوم بقراءة كل نتيجة وتحديد تلك التي فقدت المعنى الأصلي.';

  @override
  String get trFourth =>
      '4. استخدام ترجمة جوجل (مع إيقاف Gemini) لإصلاح الأخطاء، واحداً تلو الآخر. و/أو...';

  @override
  String get trFifth =>
      '5. الاستعانة بمحترفين للأجزاء المهمة.\nعلى سبيل المثال، الحقوق (مدخلات rvX) في ';

  @override
  String get trBy => ' تمت ترجمتها بواسطة ';

  @override
  String get trHumans => 'بشر';

  @override
  String get trProcess =>
      'إنها عملية غير مثالية، لكنها تتطلب جهداً أكبر بكثير من مجرد إدخال البيانات في نموذج لغوي وانتظار النتيجة.\nوبصراحة، هذا ما يمكنني تحمل تكلفته (في الوقت الحالي).';

  @override
  String get trSpeaking => 'وبالحديث عن ذلك، يرجى التفكير في المساعدة ';

  @override
  String get trEither =>
      '.\nبالمال، أو الوقت. أخمّن بنسبة 100٪ وجود أخطاء (طفيفة).';

  @override
  String get vaIntro =>
      'لا يمكن لأولئك الذين يبتكرون التكنولوجيا تحديد كيفية استخدامها.';

  @override
  String get vaTheBad =>
      'والذي يمكن أن يكون شيئًا جيدًا، أو سيئًا، أو شيئًا بينهما.\nدعنا نأخذ لحظة لمناقشة الجانب السيئ: تطبيقات الاحتيال.';

  @override
  String get vaScamRisk =>
      ' يقلل بشكل كبير من صعوبة بناء تطبيقات جاهزة للإنتاج. بالاقتران مع أدوات البرمجة بالذكاء الاصطناعي، أصبح من الأسهل من أي وقت مضى على المحتالين إنشاء تطبيقات تبدو حقيقية.\nللمساعدة في مكافحة ذلك، سنحتفظ بقائمة بالتطبيقات التي تم التحقق منها.';

  @override
  String get vaCheckIn =>
      'إذا رأيت تطبيقًا يستخدم واجهة المستخدم الخاصة بنا، فتحقق هنا أولاً. إذا لم يتم التحقق منه، فنصيحتنا هي: لا تقم بتنزيله.\nبعيدًا عن ذلك، هذه ليست قائمة بالتوصيات. المطلب الوحيد للتواجد في هذه القائمة هو ألا يكون التطبيق احتياليًا.\nمع تغطية ذلك، يحتوي عالم UIniverse المعروف على...';

  @override
  String get vaFirst => 'الطرف الأول';

  @override
  String get vaThird => 'طرف ثالث تم التحقق منه';

  @override
  String get vaWaiting => 'قيد الانتظار';

  @override
  String get vaWillYou => 'هل ستكون الأول؟';

  @override
  String get vaKnown => 'عمليات احتيال معروفة';

  @override
  String get vaSoGood =>
      'حتى الآن، كل شيء على ما يرام!\nمن فضلك لا تكن الأول :)';

  @override
  String get vaPublished => 'إذا كنت قد نشرت تطبيقًا باستخدام EFUI، فأرسل لنا ';

  @override
  String get vaDoNoHarm =>
      '.\nليس علينا أن نحب التطبيق، ولا نقوم بمراجعته علنًا.\nسنتحقق من الكود، وطالما أنه لا يسبب ضررًا، فسيتم التحقق منه.';

  @override
  String get vaPrivateFree =>
      'إذا كان تطبيقك غير متاح للجمهور، فلا تقلق!\nولكن إذا كان بإمكان أشخاص لا تعرفهم تنزيله، فأخبرنا حتى نتمكن من التحقق منه.';

  @override
  String get vaDoYourPart =>
      'إذا لم نسمع منك، فسنفترض أن منتجك هو عملية احتيال حتى يثبت العكس.\nإذا كنت تعتقد أن هذا مبالغ فيه، فكر مرة أخرى. Open UI هي نتاج سنوات من العمل، تمت مشاركتها بحرية. إرسال بريد إلكتروني هو أقل ما يمكنك فعله.';

  @override
  String get tsPageTitle => 'الفريق';

  @override
  String get tsCore => 'الأساسي';

  @override
  String get tsTheFounderLabel => 'ملف شخصي ثنائي الأبعاد لمايكل والدرون.';

  @override
  String get tsTheFounderHint => 'قم بالتفعيل لإرسال بريد إلكتروني إليه.';

  @override
  String get tsTheFounder => 'المؤسس';

  @override
  String get tsBoardMember => 'عضو مجلس الإدارة';

  @override
  String get tsYou => 'أنت؟';

  @override
  String get tsMirrorLabel => 'دائرة سوداء بلمعان، لتحاكي المرآة.';

  @override
  String get tsMirrorTip => 'قم بالتفعيل لإرسال بريد إلكتروني إلينا';

  @override
  String get tsMirrorHint => 'اسأل عن الانضمام إلى الفريق.';

  @override
  String get tsNonProfit =>
      'الشيء الوحيد الذي يقف في طريق أن تصبح Empathetech مؤسسة غير ربحية حقيقية هو عدد الموظفين.\nإذا كنت تؤمن بالمهمة التي طرحتها، وكان لديك بضع ساعات أسبوعياً لتوفيرها، فيرجى التواصل معنا!\n\nسيكون العمل تطوعيًا بالكامل في البداية. أنا لا أتقاضى رواتب (حتى الآن) أيضًا.\nولكن، لم أكن لأفعل هذا إذا لم يكن لدي خطة جيدة لذلك أيضًا.\n\nنشجع جميع المهتمين على التواصل، ولكن هناك حاجة خاصة للأشخاص الذين لديهم خبرة في:\nإدارة وسائل التواصل الاجتماعي، وجمع التبرعات، وكتابة المنح.';

  @override
  String get tsWild => 'في البرية';

  @override
  String get ts2025BoothLabel =>
      'جناح Empathetech في معرض Open Sauce لعام 2025.';

  @override
  String get ts2025BoothHint => 'قم بالتفعيل لفتح صفحة معارض Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'كان معرض Open Sauce (2025) رائعًا!\nكان من الصعب العودة إلى الحياة الطبيعية، بعد أن أحاط بنا الكثير من الأشخاص اللطفاء والمندفعين والأذكياء والمبدعين.\nشكرًا مرة أخرى إذا توقفت عند جناح Empathetech، وإلى اللقاء في العام القادم!';

  @override
  String get ts2025BoothDescriptionFix =>
      'كان معرض Open Sauce (2025) رائعًا!\nكان من الصعب العودة إلى الحياة الطبيعية، بعد أن أحاط بنا الكثير من الأشخاص اللطفاء والمندفعين والأذكياء والمبدعين.\nشكرًا مرة أخرى إذا توقفت عند جناح Empathetic، وإلى اللقاء في العام القادم!';

  @override
  String get tsCommunity => 'المجتمع';

  @override
  String get tsFreelance => 'العمل الحر';

  @override
  String get tsVideoProduction => 'إنتاج الفيديو';

  @override
  String get tsTranslators => 'المترجمون';

  @override
  String tsProfile(Object name) {
    return 'الملف الشخصي لـ $name';
  }

  @override
  String get fahJoin => 'انضم إلى الفريق';

  @override
  String get fahIconLabel => 'جزيء بروتين.';

  @override
  String get fahIconHint => 'قم بالتفعيل لفتح موقعهم.';

  @override
  String get fahIntro1 => 'انضم إلى فريق ';

  @override
  String get fahIntro2 => ' في Folding@home!';

  @override
  String get fahTeamHint => 'فتح صفحة فريق Empathetic لـ Folding@home';

  @override
  String get fahWhats => 'ما هو ';

  @override
  String get fahName => 'Folding@home؟';

  @override
  String get fahNameHint => 'فتح صفحة \"حول\" الخاصة بـ Folding@home';

  @override
  String get fahStats =>
      'معًا، كسبنا أكثر من 400 مليون نقطة.\nهذا يضعنا في أعلى 2٪ من جميع الفرق على مستوى العالم!';

  @override
  String get csPageTitle => 'المساهمة';

  @override
  String get csEveryBit =>
      'كل \'بت\' (bit) تقدمه لـ Empathetech يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

  @override
  String get csEveryBitFix =>
      'كل \'بت\' (bit) تقدمه لـ Empathetic يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

  @override
  String get csTime => 'الوقت';

  @override
  String get csBecome => ' حول أن تصبح ';

  @override
  String get csGit => 'مساهمًا في GitHub';

  @override
  String get csMoney => 'المال';

  @override
  String csOpenLink(Object page) {
    return 'فتح رابط لصفحة $page الخاصة بـ Empathetic';
  }

  @override
  String get csPower => 'الطاقة';

  @override
  String get csThanks => 'شكراً جزيلاً على أي وكل دعم!';
}

/// The translations for Arabic, as used in Egypt (`ar_EG`).
class LangArEg extends LangAr {
  LangArEg() : super('ar_EG');

  @override
  String get gEmpathLogoLabel => 'ساعة رملية ثنائية الأبعاد.';

  @override
  String get gEmpathLogoHint => 'قم بالتفعيل للانتقال إلى الصفحة الرئيسية.';

  @override
  String gLearn(Object name) {
    return 'تعرّف على $name';
  }

  @override
  String get gHomeHint => 'فتح الصفحة الرئيسية';

  @override
  String get gProductsHint => 'فتح صفحة المنتج';

  @override
  String get gMissionHint => 'فتح صفحة المهمة';

  @override
  String get gTeamHint => 'فتح صفحة الفريق';

  @override
  String get gContributeHint => 'فتح صفحة المساهمة';

  @override
  String get gShare => 'مشاركة';

  @override
  String get gEmail => 'البريد الإلكتروني';

  @override
  String gEmailTo(Object recipient) {
    return 'إرسال بريد إلكتروني إلى $recipient';
  }

  @override
  String get gAnEmail => 'بريد إلكتروني';

  @override
  String get gEmailHint => 'يفتح عميل البريد الإلكتروني الخاص بك';

  @override
  String get gNewsletter => 'النشرة الإخبارية';

  @override
  String gLogoLabel(Object thing) {
    return 'شعار $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'أيقونة $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'تنزيل $app لـ $platform.';
  }

  @override
  String get gRepoHint => 'فتح رابط لمستودع التطوير.';

  @override
  String get gEmpathetechGitHint => 'فتح صفحة GitHub لشركة Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'مصدر الصورة: $creator';
  }

  @override
  String get gReachOut => 'تواصل معنا';

  @override
  String gFiverrPage(Object user) {
    return 'فتح صفحة Fiverr الخاصة بـ $user';
  }

  @override
  String get gDontChaWish => 'ألا تتمنى لو كانت واجهتك الأمامية ممتعة ';

  @override
  String get gMeQ => 'مثلي؟';

  @override
  String get gDontCha => 'ألا تتمنى ذلك؟';

  @override
  String get gDontChaHint => 'فتح صفحة GitHub لشفرة المصدر الخاصة بهذه الشاشة';

  @override
  String get hsSlogan => 'لنبني عالماً أفضل معاً\nبت × بت';

  @override
  String get hsSloganFix => 'لنبني عالماً أفضل معاً\nبت وراء بت';

  @override
  String get hsVideoLabel =>
      'شعار Empathetic LLC المتحرك: تتحول الحروف في Empathetic إلى شعار الساعة الرملية ثنائي الأبعاد';

  @override
  String get hsPeople => 'الناس ليسوا منتجات.';

  @override
  String get hsWell => 'حسناً، لا ينبغي أن يكونوا كذلك.';

  @override
  String get hsReality => 'الواقع المؤسف هو أن هوياتنا، و';

  @override
  String get hsData => 'بياناتنا';

  @override
  String get hsGold => '، هي أحدث حمى ذهب لشركات التكنولوجيا الكبرى.';

  @override
  String get hsRush =>
      'وشركات التكنولوجيا الكبرى بالتأكيد تحب التسرع.\nبفضل سباقهم الذي لا ينتهي، تتحول أفلام الخيال العلمي البائسة إلى حقيقة بسرعة كبيرة جدًا.';

  @override
  String get hsSlow =>
      'لقد حان الوقت للتمهل.\nلقد حان الوقت لامتلاك ذواتنا الرقمية.\nلقد حان الوقت لـ ';

  @override
  String get hsPlan => 'خطة أفضل.';

  @override
  String get msPageTitle => 'المهمة';

  @override
  String get msSoWe => 'لذلك نحن';

  @override
  String get msBy => 'عن طريق';

  @override
  String get msFirst => 'أولاً عن طريق';

  @override
  String get msIDProblem => 'تحديد المشكلة';

  @override
  String get msIDProblemContent =>
      'نماذج الأعمال التي تضع الربح أولاً ليست مستدامة.\n\nبحكم التعريف: إذا كان الربح يأتي أولاً، فإن أشياء مثل العمل نحو تحقيق مهمة، ومعاملة الناس بشكل صحيح، والاستهلاك المسؤول للموارد كلها تصبح أفكارًا ثانوية.\n\nوقد مضى هذا الجشع بلا رقيب في شركات التكنولوجيا الكبرى. لقد أصبح عمالقة التكنولوجيا غير راضين عن أموالنا، ويبنون منتجات لاستهداف هوياتنا واحتكار عقولنا.';

  @override
  String get msFindSolution => 'إيجاد حل';

  @override
  String get msFindSolutionContent =>
      'لحسن الحظ، هناك تقنيون رائعون في جميع أنحاء العالم يعملون معًا نحو سردية أفضل.\nسردية حيث يتمتع مقدمو الخدمات والعملاء بعلاقة نشطة وصحية ومتبادلة المنفعة.\n\nمجتمع المصادر المفتوحة.\n\nفي جوهرها، تتوفر البرمجيات مفتوحة المصدر مجانًا ليطلع عليها أي شخص. كما يمكن تعديل العديد من المشاريع وإعادة توزيعها بحرية.\nإنها برمجيات ليس لديها ما تخفيه، تم بناؤها بواسطة أشخاص يدركون أن المشاكل المشتركة تتطلب حلولًا مشتركة.\n\nوفي عالم البرمجيات مفتوحة المصدر الرائع، توجد فئة فرعية: برمجيات الاستضافة الذاتية.\n\nتتيح لنا الاستضافة الذاتية أخذ أي جهاز كمبيوتر غير مستخدم (حتى الأجهزة بحجم الجيب) وتخزين بياناتنا هناك.\nمن خلال الاستضافة الذاتية، يمكننا التحكم في تواجدنا الرقمي، بدلاً من التنازل عن السيطرة لخادم بعيد، تملكه شركة تفتقر إلى التعاطف.\n\nوهناك نسخ ذاتية الاستضافة لكل شيء تقريبًا! من Adobe إلى Zoom، هناك ناشطون قراصنة شغوفون يبنون بدائل تضع الناس فوق الأرباح.\n\nإذن، كيف يمكن للمرء الانتقال من البرمجيات التي تضع الربح أولاً/مغلقة المصدر إلى البرمجيات مفتوحة المصدر؟ كيف يبدؤون في الاستضافة الذاتية؟\nيستغرق الأمر الكثير من الوقت والطاقة والمعرفة المسبقة.\n\nوهنا يأتي دورنا.';

  @override
  String get msProvideValue => 'إنجاز العمل';

  @override
  String get msProvideValueContent1 =>
      'تتمثل مهمة Empathetech في إعادة توازن القوة في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكّن أي شخص من امتلاك هويته الرقمية.\nسنبني جسورًا بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة المطلوبة.\n\nولا يمكنك بناء جسور (أو تطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get msProvideValueContent1Fix =>
      'تتمثل مهمة Empathetic في إعادة توازن القوة في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكّن أي شخص من امتلاك هويته الرقمية.\nسنبني جسورًا بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة المطلوبة.\n\nولا يمكنك بناء جسور (أو تطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get msProvideValueContent2 =>
      ' موجودة.\nتفتخر Empathetech بمطابقة الكلمات بالأفعال، وقد جعلنا واجهة المستخدم التي يسهل الوصول إليها مفتوحة المصدر.\n\nلنبني عالماً أفضل معاً، بت وراء بت.';

  @override
  String get msProvideValueContent2Fix =>
      ' موجودة.\nتفتخر Empathetic بمطابقة الكلمات بالأفعال، وقد جعلنا واجهة المستخدم التي يسهل الوصول إليها مفتوحة المصدر.\n\nلنبني عالماً أفضل معاً، بت وراء بت.';

  @override
  String get psPageTitle => 'المنتجات';

  @override
  String get psTitleHint => 'إظهار القائمة';

  @override
  String get psShowDemo => 'إظهار العرض التوضيحي';

  @override
  String get psHideDemo => 'إخفاء العرض التوضيحي';

  @override
  String get psShowPromo => 'إظهار العرض الترويجي';

  @override
  String get psHidePromo => 'إخفاء العرض الترويجي';

  @override
  String get psLearnMore => ' لمعرفة المزيد.';

  @override
  String get psDownloadNow => 'تنزيل الآن';

  @override
  String get psComingSoon => 'قريباً...';

  @override
  String get ouSlogan => 'أنشئ تطبيقات لأي شخص';

  @override
  String get ouLike => 'مثل المستخدمين الذين يحتاجون...';

  @override
  String get ouAccessible => 'عناصر تحكم يسهل الوصول إليها';

  @override
  String get ouZeroStrain => 'إجهاد عين معدوم';

  @override
  String get ouEverything => 'وكل شيء بينهما';

  @override
  String get ouRandom => 'تم تطبيق تكوين عشوائي.';

  @override
  String get ouIs => 'Open UI هو منشئ تطبيقات.';

  @override
  String get ouDemo => 'عرض توضيحي لـ Open UI وهو ينشئ تطبيقاً جديداً.';

  @override
  String get ouFoundation =>
      'إنه ينشئ الأساس لتطبيقات يسهل الوصول إليها، ومتعددة المنصات، ومتعددة اللغات، وجاهزة للإنتاج بنقرة واحدة.';

  @override
  String get ouLocal =>
      'كل شيء يعمل على جهاز الكمبيوتر الخاص بك. لا توجد بيانات اعتماد أو بطاقات ائتمان أو ملفات تعريف ارتباط.';

  @override
  String get ouRequirements => 'المتطلبات الوحيدة هي اتصال بالإنترنت وفكرة.';

  @override
  String get ouFlutterToo => '...و Flutter...';

  @override
  String get ouHow => 'كيف يعمل؟';

  @override
  String get ouEFUIsHow => 'تم بناء Open UI على أساس، ويبدأ بك مع، ';

  @override
  String get ouSimplifies =>
      'EFUI هي مكتبة لبناء تطبيقات يسهل الوصول إليها حقًا. إنها تبسط...';

  @override
  String get ouPlatform => 'توفر المنصات';

  @override
  String get ouPlatformContent =>
      'يمكنك استخدام EFUI للإنشاء على أنظمة Android و iOS و Linux و macOS و Windows والويب!';

  @override
  String get ouResponsive => 'تصميم متجاوب';

  @override
  String get ouResponsiveContent =>
      'لرؤية ذلك قيد العمل، العب بالنافذة التي تستخدمها الآن!';

  @override
  String get ouScreen => 'دعم قارئ الشاشة';

  @override
  String get ouScreenContent =>
      'تطبيقات Empathetech تدعم المستخدمين الذين يحتاجون إلى ';

  @override
  String get ouScreenContentFix =>
      'تطبيقات Empathetic تدعم المستخدمين الذين يحتاجون إلى ';

  @override
  String get ouTalkBackHint => 'فتح رابط لوثائق TalkBack';

  @override
  String get ouAnd => ' و ';

  @override
  String get ouVoiceOverHint => 'فتح رابط لوثائق VoiceOver';

  @override
  String get ouCustom => 'تخصيص المستخدم';

  @override
  String get ouCustomContent =>
      'الطريقة الوحيدة لتكون متاحًا حقًا لجميع العملاء هي تمكينهم بحرية الاختيار!\nتوفر EFUI تجربة مستخدم أنيقة للتحكم الكامل في مظهر التطبيق.';

  @override
  String get ouInternational => 'التدويل';

  @override
  String get ouInternationalContent =>
      'تُرجمت تطبيقات Empathetech إلى 14 لغة (حتى الآن).\nتوفر EFUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouInternationalContentFix =>
      'تُرجمت تطبيقات Empathetic إلى 14 لغة (حتى الآن).\nتوفر EFUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouReliability => 'الموثوقية';

  @override
  String get ouReliabilityContent =>
      'تم بناء برمجيات Empathetech لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو Empathetech هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouReliabilityContentFix =>
      'تم بناء برمجيات Empathetic لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو Empathetic هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouGetStarted => 'البدء';

  @override
  String get ouOpenUIIconLabel => 'بيئة اختبار (sandbox) للإعدادات.';

  @override
  String get ouEFUITagLine =>
      'عند البناء باستخدام EFUI، يمكن لتطبيقاتك أن تصل حقًا إلى أي جمهور!\n';

  @override
  String get sosPromoLabel => 'فيديو ترويجي لـ Insta SOS.';

  @override
  String get sosDescription =>
      'كاميرا، ومنارة طوارئ (SOS)، وقائمة بحقوقك، كل ذلك في مكان واحد.\nإنه متاح بـ 14 لغة ويدعم قارئات الشاشة.';

  @override
  String get sosPrivate =>
      'لا يحتوي InstaSOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

  @override
  String get sosPrivateFix =>
      'لا يحتوي Insta-SOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

  @override
  String get sosFree => 'إنه مجاني تمامًا والكود ';

  @override
  String get sosOpenSource => 'مفتوح المصدر';

  @override
  String get sosConsider => 'يرجى التفكير في ';

  @override
  String get sosContributing => 'المساهمة';

  @override
  String get sosSAPS => ' لدعم البرمجيات كخدمة عامة.';

  @override
  String get sosIconLabel => 'جرس إشعارات بألوان صاخبة.';

  @override
  String get sosWeb =>
      'إحدى الطرق المحددة وعالية التأثير للمساهمة هي تغطية فاتورة استضافة InstaSOS عبر الإنترنت.\n\nلقد أوضح مالكو متاجر التطبيقات ولاءاتهم، وقد تتم إزالة InstaSOS إذا/عندما يكتسب شعبية.\nسيكون لدى مستخدمي Android دائمًا خيار التثبيت الذاتي، لكن البديل الوحيد القابل للتطبيق لمستخدمي iOS هو تطبيق ويب.\n\nلحسن الحظ، تعتمد تطبيقات Flutter على حوسبة جانب العميل، لذا ستكون الفاتورة منخفضة.\nسنحتاج (أنت) فقط إلى الدفع مقابل إدارة حركة المرور.';

  @override
  String get llDescription => 'مشغل تطبيقات (Launcher) Android من Empathetech.';

  @override
  String get llDescriptionFix =>
      'مشغل تطبيقات (Launcher) Android من Empathetic.';

  @override
  String get llInDev =>
      'Liminal قيد التطوير.\nيميل تصميمه نحو التبسيط، لأن هواتفنا يجب أن تكون أدوات نستخدمها، وليس العكس.';

  @override
  String get llBut => 'ولكن، إنه مشغل مبسط مبني باستخدام ';

  @override
  String get llWhimsy =>
      '.\nلذا، ستكون شاشتك الرئيسية خالية من الفوضى والمشتتات، وقابلة للتخصيص بلا حدود. مع قليل من المرح أيضًا.';

  @override
  String get llTheHood => 'عينة لشاشة رئيسية مع صورة لجبل هود في بورتلاند.';

  @override
  String get llLasRosas =>
      'عينة لشاشة رئيسية مع صورة لحديقة الورود في بورتلاند.';

  @override
  String get llFrogAndPigs =>
      'عينة لشاشة رئيسية مع صورة للحياة البرية في بورتلاند.';

  @override
  String get llModel =>
      'سيتم إصدار Liminal وفق نموذج \"ادفع ما تستطيع\".\nستكون نسخة Google Play مدفوعة، لأن الكود (الجيد) لا يكتب نفسه.\nسيحتوي مستودع GitHub أيضًا على ملف APK متاح مجانًا، لأن العلاقة الصحية مع التكنولوجيا لا ينبغي أن تقتصر على أولئك الذين لديهم دخل فائض.';

  @override
  String get ssPreview1 => 'تطبيق آخر من Empathetech، ';

  @override
  String get ssPreview1Fix => 'تطبيق آخر من Empathetic، ';

  @override
  String get ssPreview2 =>
      '، قيد التطوير.\nSmoke Signal هو تطبيق شبكة اجتماعية مصمم لإبعادنا عن شاشاتنا.';

  @override
  String get ssPreview3 =>
      'سيكون تطبيق Smoke Signal أيضًا مستضافًا ذاتيًا بالكامل، بفضل ';

  @override
  String get ssAPHint => 'فتح رابط لوثائق Activity Pub';

  @override
  String get trWonder =>
      'إذا كنت تتساءل كيف يمكن لفريق مكون من شخص واحد دعم 14 لغة: استخدام النماذج اللغوية الكبيرة بمسؤولية.\nالعملية كالتالي...';

  @override
  String get trFirst => '1. إنهاء وتنظيم الإنجليزية (الأمريكية) ';

  @override
  String get trSource => 'المصدر';

  @override
  String get trSecond => '2. اطلب من ';

  @override
  String get trBeNice =>
      ' بلطف ترجمة المدخلات.\nلغة واحدة لكل محادثة، حتى لا يتضخم السياق.';

  @override
  String get trThird => '3. تدقيق النتائج باستخدام ';

  @override
  String get trScript => 'هذا البرنامج النصي';

  @override
  String get trReverse =>
      'يقوم بترجمة عكسية لجميع اللغات، مدخلاً تلو الآخر. أقوم بقراءة كل نتيجة وتحديد تلك التي فقدت المعنى الأصلي.';

  @override
  String get trFourth =>
      '4. استخدام ترجمة جوجل (مع إيقاف Gemini) لإصلاح الأخطاء، واحداً تلو الآخر. و/أو...';

  @override
  String get trFifth =>
      '5. الاستعانة بمحترفين للأجزاء المهمة.\nعلى سبيل المثال، الحقوق (مدخلات rvX) في ';

  @override
  String get trBy => ' تمت ترجمتها بواسطة ';

  @override
  String get trHumans => 'بشر';

  @override
  String get trProcess =>
      'إنها عملية غير مثالية، لكنها تتطلب جهداً أكبر بكثير من مجرد إدخال البيانات في نموذج لغوي وانتظار النتيجة.\nوبصراحة، هذا ما يمكنني تحمل تكلفته (في الوقت الحالي).';

  @override
  String get trSpeaking => 'وبالحديث عن ذلك، يرجى التفكير في المساعدة ';

  @override
  String get trEither =>
      '.\nبالمال، أو الوقت. أخمّن بنسبة 100٪ وجود أخطاء (طفيفة).';

  @override
  String get vaIntro =>
      'لا يمكن لأولئك الذين يبتكرون التكنولوجيا تحديد كيفية استخدامها.';

  @override
  String get vaTheBad =>
      'والذي يمكن أن يكون شيئًا جيدًا، أو سيئًا، أو شيئًا بينهما.\nدعنا نأخذ لحظة لمناقشة الجانب السيئ: تطبيقات الاحتيال.';

  @override
  String get vaScamRisk =>
      ' يقلل بشكل كبير من صعوبة بناء تطبيقات جاهزة للإنتاج. بالاقتران مع أدوات البرمجة بالذكاء الاصطناعي، أصبح من الأسهل من أي وقت مضى على المحتالين إنشاء تطبيقات تبدو حقيقية.\nللمساعدة في مكافحة ذلك، سنحتفظ بقائمة بالتطبيقات التي تم التحقق منها.';

  @override
  String get vaCheckIn =>
      'إذا رأيت تطبيقًا يستخدم واجهة المستخدم الخاصة بنا، فتحقق هنا أولاً. إذا لم يتم التحقق منه، فنصيحتنا هي: لا تقم بتنزيله.\nبعيدًا عن ذلك، هذه ليست قائمة بالتوصيات. المطلب الوحيد للتواجد في هذه القائمة هو ألا يكون التطبيق احتياليًا.\nمع تغطية ذلك، يحتوي عالم UIniverse المعروف على...';

  @override
  String get vaFirst => 'الطرف الأول';

  @override
  String get vaThird => 'طرف ثالث تم التحقق منه';

  @override
  String get vaWaiting => 'قيد الانتظار';

  @override
  String get vaWillYou => 'هل ستكون الأول؟';

  @override
  String get vaKnown => 'عمليات احتيال معروفة';

  @override
  String get vaSoGood =>
      'حتى الآن، كل شيء على ما يرام!\nمن فضلك لا تكن الأول :)';

  @override
  String get vaPublished => 'إذا كنت قد نشرت تطبيقًا باستخدام EFUI، فأرسل لنا ';

  @override
  String get vaDoNoHarm =>
      '.\nليس علينا أن نحب التطبيق، ولا نقوم بمراجعته علنًا.\nسنتحقق من الكود، وطالما أنه لا يسبب ضررًا، فسيتم التحقق منه.';

  @override
  String get vaPrivateFree =>
      'إذا كان تطبيقك غير متاح للجمهور، فلا تقلق!\nولكن إذا كان بإمكان أشخاص لا تعرفهم تنزيله، فأخبرنا حتى نتمكن من التحقق منه.';

  @override
  String get vaDoYourPart =>
      'إذا لم نسمع منك، فسنفترض أن منتجك هو عملية احتيال حتى يثبت العكس.\nإذا كنت تعتقد أن هذا مبالغ فيه، فكر مرة أخرى. Open UI هي نتاج سنوات من العمل، تمت مشاركتها بحرية. إرسال بريد إلكتروني هو أقل ما يمكنك فعله.';

  @override
  String get tsPageTitle => 'الفريق';

  @override
  String get tsCore => 'الأساسي';

  @override
  String get tsTheFounderLabel => 'ملف شخصي ثنائي الأبعاد لمايكل والدرون.';

  @override
  String get tsTheFounderHint => 'قم بالتفعيل لإرسال بريد إلكتروني إليه.';

  @override
  String get tsTheFounder => 'المؤسس';

  @override
  String get tsBoardMember => 'عضو مجلس الإدارة';

  @override
  String get tsYou => 'أنت؟';

  @override
  String get tsMirrorLabel => 'دائرة سوداء بلمعان، لتحاكي المرآة.';

  @override
  String get tsMirrorTip => 'قم بالتفعيل لإرسال بريد إلكتروني إلينا';

  @override
  String get tsMirrorHint => 'اسأل عن الانضمام إلى الفريق.';

  @override
  String get tsNonProfit =>
      'الشيء الوحيد الذي يقف في طريق أن تصبح Empathetech مؤسسة غير ربحية حقيقية هو عدد الموظفين.\nإذا كنت تؤمن بالمهمة التي طرحتها، وكان لديك بضع ساعات أسبوعياً لتوفيرها، فيرجى التواصل معنا!\n\nسيكون العمل تطوعيًا بالكامل في البداية. أنا لا أتقاضى رواتب (حتى الآن) أيضًا.\nولكن، لم أكن لأفعل هذا إذا لم يكن لدي خطة جيدة لذلك أيضًا.\n\nنشجع جميع المهتمين على التواصل، ولكن هناك حاجة خاصة للأشخاص الذين لديهم خبرة في:\nإدارة وسائل التواصل الاجتماعي، وجمع التبرعات، وكتابة المنح.';

  @override
  String get tsWild => 'في البرية';

  @override
  String get ts2025BoothLabel =>
      'جناح Empathetech في معرض Open Sauce لعام 2025.';

  @override
  String get ts2025BoothHint => 'قم بالتفعيل لفتح صفحة معارض Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'كان معرض Open Sauce (2025) رائعًا!\nكان من الصعب العودة إلى الحياة الطبيعية، بعد أن أحاط بنا الكثير من الأشخاص اللطفاء والمندفعين والأذكياء والمبدعين.\nشكرًا مرة أخرى إذا توقفت عند جناح Empathetech، وإلى اللقاء في العام القادم!';

  @override
  String get ts2025BoothDescriptionFix =>
      'كان معرض Open Sauce (2025) رائعًا!\nكان من الصعب العودة إلى الحياة الطبيعية، بعد أن أحاط بنا الكثير من الأشخاص اللطفاء والمندفعين والأذكياء والمبدعين.\nشكرًا مرة أخرى إذا توقفت عند جناح Empathetic، وإلى اللقاء في العام القادم!';

  @override
  String get tsCommunity => 'المجتمع';

  @override
  String get tsFreelance => 'العمل الحر';

  @override
  String get tsVideoProduction => 'إنتاج الفيديو';

  @override
  String get tsTranslators => 'المترجمون';

  @override
  String tsProfile(Object name) {
    return 'الملف الشخصي لـ $name';
  }

  @override
  String get fahJoin => 'انضم إلى الفريق';

  @override
  String get fahIconLabel => 'جزيء بروتين.';

  @override
  String get fahIconHint => 'قم بالتفعيل لفتح موقعهم.';

  @override
  String get fahIntro1 => 'انضم إلى فريق ';

  @override
  String get fahIntro2 => ' في Folding@home!';

  @override
  String get fahTeamHint => 'فتح صفحة فريق Empathetic لـ Folding@home';

  @override
  String get fahWhats => 'ما هو ';

  @override
  String get fahName => 'Folding@home؟';

  @override
  String get fahNameHint => 'فتح صفحة \"حول\" الخاصة بـ Folding@home';

  @override
  String get fahStats =>
      'معًا، كسبنا أكثر من 400 مليون نقطة.\nهذا يضعنا في أعلى 2٪ من جميع الفرق على مستوى العالم!';

  @override
  String get csPageTitle => 'المساهمة';

  @override
  String get csEveryBit =>
      'كل \'بت\' (bit) تقدمه لـ Empathetech يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

  @override
  String get csEveryBitFix =>
      'كل \'بت\' (bit) تقدمه لـ Empathetic يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

  @override
  String get csTime => 'الوقت';

  @override
  String get csBecome => ' حول أن تصبح ';

  @override
  String get csGit => 'مساهمًا في GitHub';

  @override
  String get csMoney => 'المال';

  @override
  String csOpenLink(Object page) {
    return 'فتح رابط لصفحة $page الخاصة بـ Empathetic';
  }

  @override
  String get csPower => 'الطاقة';

  @override
  String get csThanks => 'شكراً جزيلاً على أي وكل دعم!';
}
