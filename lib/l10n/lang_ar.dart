// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class LangAr extends Lang {
  LangAr([String locale = 'ar']) : super(locale);

  @override
  String get gYWTLogoLabel => 'ساعة رملية ثنائية الأبعاد.';

  @override
  String get gYWTLogoHint => 'قم بالتفعيل للانتقال إلى الصفحة الرئيسية.';

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
  String get gYWTGitHint => 'فتح صفحة GitHub لشركة YWT';

  @override
  String gImageCredit(Object creator) {
    return 'مصدر الصورة: $creator';
  }

  @override
  String get gReachOut => 'تواصل معنا';

  @override
  String gProfile(Object name) {
    return 'الملف الشخصي لـ $name';
  }

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
  String get hsAnimLabel =>
      'شعار YWT المتحرك: تتحول الحروف في YWT إلى شعار الساعة الرملية ثنائي الأبعاد';

  @override
  String get hsChange => 'حان وقت التغيير';

  @override
  String get hsmIDProblem => 'تحديد المشكلة';

  @override
  String get hsmIDProblemContent =>
      'نماذج الأعمال التي تضع الربح أولاً ليست مستدامة.\n\nبحكم التعريف: إذا كان الربح يأتي أولاً، فإن أشياء مثل العمل نحو تحقيق مهمة، ومعاملة الناس بشكل صحيح، والاستهلاك المسؤول للموارد كلها تصبح أفكارًا ثانوية.\n\nوقد مضى هذا الجشع بلا رقيب في شركات التكنولوجيا الكبرى. لقد أصبح عمالقة التكنولوجيا غير راضين عن أموالنا، ويبنون منتجات لاستهداف هوياتنا واحتكار عقولنا.';

  @override
  String get hsmSoWe => 'لذلك نحن';

  @override
  String get hsmFindSolution => 'إيجاد حل';

  @override
  String get hsmFindSolutionContent =>
      'لحسن الحظ، هناك تقنيون رائعون في جميع أنحاء العالم يعملون معًا نحو سردية أفضل.\nسردية حيث يتمتع مقدمو الخدمات والعملاء بعلاقة نشطة وصحية ومتبادلة المنفعة.\n\nمجتمع المصادر المفتوحة.\n\nفي جوهرها، تتوفر البرمجيات مفتوحة المصدر مجانًا ليطلع عليها أي شخص. كما يمكن تعديل العديد من المشاريع وإعادة توزيعها بحرية.\nإنها برمجيات ليس لديها ما تخفيه، تم بناؤها بواسطة أشخاص يدركون أن المشاكل المشتركة تتطلب حلولًا مشتركة.\n\nوفي عالم البرمجيات مفتوحة المصدر الرائع، توجد فئة فرعية: برمجيات الاستضافة الذاتية.\n\nتتيح لنا الاستضافة الذاتية أخذ أي جهاز كمبيوتر غير مستخدم (حتى الأجهزة بحجم الجيب) وتخزين بياناتنا هناك.\nمن خلال الاستضافة الذاتية، يمكننا التحكم في تواجدنا الرقمي، بدلاً من التنازل عن السيطرة لخادم بعيد، تملكه شركة تفتقر إلى التعاطف.\n\nوهناك نسخ ذاتية الاستضافة لكل شيء تقريبًا! من Adobe إلى Zoom، هناك ناشطون قراصنة شغوفون يبنون بدائل تضع الناس فوق الأرباح.\n\nإذن، كيف يمكن للمرء الانتقال من البرمجيات التي تضع الربح أولاً/مغلقة المصدر إلى البرمجيات مفتوحة المصدر؟ كيف يبدؤون في الاستضافة الذاتية؟\nيستغرق الأمر الكثير من الوقت والطاقة والمعرفة المسبقة.\n\nوهنا يأتي دورنا.';

  @override
  String get hsmBy => 'عن طريق';

  @override
  String get hsmProvideValue => 'إنجاز العمل';

  @override
  String get hsmProvideValueContent1 =>
      'YWT تعيد التوازن في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكن أي شخص من امتلاك هويته الرقمية.\nسنبني جسوراً بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة اللازمة.\n\nولا يمكنك بناء الجسور (أو التطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get hsmProvideValueContent2 =>
      ' موجود.\nنحن نفخر بقرن الأقوال بالأفعال، وقد جعلنا واجهة المستخدم الخاصة بنا والتي يسهل الوصول إليها مفتوحة المصدر.\n\nدعونا نبني عالماً أفضل معاً، شيئاً فشيئاً.';

  @override
  String get hsmFirst => 'أولاً عن طريق';

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
  String get ouPlatform => 'توفر المنصات';

  @override
  String get ouPlatformContent =>
      'يمكنك استخدام Open UI للإنشاء على أنظمة Android و iOS و Linux و macOS و Windows والويب!';

  @override
  String get ouResponsive => 'تصميم متجاوب';

  @override
  String get ouResponsiveContent =>
      'لرؤية ذلك قيد العمل، العب بالنافذة التي تستخدمها الآن!';

  @override
  String get ouScreen => 'دعم قارئ الشاشة';

  @override
  String get ouScreenContent =>
      'تطبيقات OUI تدعم المستخدمين الذين يحتاجون إلى ';

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
      'الطريقة الوحيدة لتكون متاحًا حقًا لجميع العملاء هي تمكينهم بحرية الاختيار!\nتوفر Open UI تجربة مستخدم أنيقة للتحكم الكامل في مظهر التطبيق.';

  @override
  String get ouInternational => 'التدويل';

  @override
  String get ouInternationalContent =>
      'تُرجمت تطبيقات OUI إلى 14 لغة (حتى الآن).\nتوفر OUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouReliability => 'الموثوقية';

  @override
  String get ouReliabilityContent =>
      'تم بناء برمجيات YWT لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouGetStarted => 'البدء';

  @override
  String get ouIconLabel => 'بيئة اختبار (sandbox) للإعدادات.';

  @override
  String get ouTagLine =>
      'عند البناء باستخدام Open UI، يمكن لتطبيقاتك أن تصل حقًا إلى أي جمهور!\n';

  @override
  String get sosPromoLabel => 'فيديو ترويجي لـ Insta SOS.';

  @override
  String get sosDescription =>
      'كاميرا، ومنارة طوارئ (SOS)، وقائمة بحقوقك، كل ذلك في مكان واحد.\nإنه متاح بـ 14 لغة ويدعم قارئات الشاشة.';

  @override
  String get sosPrivate =>
      'لا يحتوي InstaSOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

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
  String get sosTranslators => 'مترجمون';

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
  String get fahTeamHint => 'فتح صفحة فريق YWT لـ Folding@home';

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
      'كل \'بت\' (bit) تقدمه لـ نحن يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

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
    return 'فتح رابط لصفحة $page الخاصة بـ YWT';
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
  String get gYWTLogoLabel => 'ساعة رملية ثنائية الأبعاد.';

  @override
  String get gYWTLogoHint => 'قم بالتفعيل للانتقال إلى الصفحة الرئيسية.';

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
  String get gYWTGitHint => 'فتح صفحة GitHub لشركة YWT';

  @override
  String gImageCredit(Object creator) {
    return 'مصدر الصورة: $creator';
  }

  @override
  String get gReachOut => 'تواصل معنا';

  @override
  String gProfile(Object name) {
    return 'الملف الشخصي لـ $name';
  }

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
  String get hsAnimLabel =>
      'شعار YWT المتحرك: تتحول الحروف في YWT إلى شعار الساعة الرملية ثنائي الأبعاد';

  @override
  String get hsChange => 'حان وقت التغيير';

  @override
  String get hsmIDProblem => 'تحديد المشكلة';

  @override
  String get hsmIDProblemContent =>
      'نماذج الأعمال التي تضع الربح أولاً ليست مستدامة.\n\nبحكم التعريف: إذا كان الربح يأتي أولاً، فإن أشياء مثل العمل نحو تحقيق مهمة، ومعاملة الناس بشكل صحيح، والاستهلاك المسؤول للموارد كلها تصبح أفكارًا ثانوية.\n\nوقد مضى هذا الجشع بلا رقيب في شركات التكنولوجيا الكبرى. لقد أصبح عمالقة التكنولوجيا غير راضين عن أموالنا، ويبنون منتجات لاستهداف هوياتنا واحتكار عقولنا.';

  @override
  String get hsmSoWe => 'لذلك نحن';

  @override
  String get hsmFindSolution => 'إيجاد حل';

  @override
  String get hsmFindSolutionContent =>
      'لحسن الحظ، هناك تقنيون رائعون في جميع أنحاء العالم يعملون معًا نحو سردية أفضل.\nسردية حيث يتمتع مقدمو الخدمات والعملاء بعلاقة نشطة وصحية ومتبادلة المنفعة.\n\nمجتمع المصادر المفتوحة.\n\nفي جوهرها، تتوفر البرمجيات مفتوحة المصدر مجانًا ليطلع عليها أي شخص. كما يمكن تعديل العديد من المشاريع وإعادة توزيعها بحرية.\nإنها برمجيات ليس لديها ما تخفيه، تم بناؤها بواسطة أشخاص يدركون أن المشاكل المشتركة تتطلب حلولًا مشتركة.\n\nوفي عالم البرمجيات مفتوحة المصدر الرائع، توجد فئة فرعية: برمجيات الاستضافة الذاتية.\n\nتتيح لنا الاستضافة الذاتية أخذ أي جهاز كمبيوتر غير مستخدم (حتى الأجهزة بحجم الجيب) وتخزين بياناتنا هناك.\nمن خلال الاستضافة الذاتية، يمكننا التحكم في تواجدنا الرقمي، بدلاً من التنازل عن السيطرة لخادم بعيد، تملكه شركة تفتقر إلى التعاطف.\n\nوهناك نسخ ذاتية الاستضافة لكل شيء تقريبًا! من Adobe إلى Zoom، هناك ناشطون قراصنة شغوفون يبنون بدائل تضع الناس فوق الأرباح.\n\nإذن، كيف يمكن للمرء الانتقال من البرمجيات التي تضع الربح أولاً/مغلقة المصدر إلى البرمجيات مفتوحة المصدر؟ كيف يبدؤون في الاستضافة الذاتية؟\nيستغرق الأمر الكثير من الوقت والطاقة والمعرفة المسبقة.\n\nوهنا يأتي دورنا.';

  @override
  String get hsmBy => 'عن طريق';

  @override
  String get hsmProvideValue => 'إنجاز العمل';

  @override
  String get hsmProvideValueContent1 =>
      'YWT تعيد التوازن في مجال التكنولوجيا من خلال جعل الاستضافة الذاتية أكثر سهولة.\n\nسنقوم ببناء تطبيقات تمكن أي شخص من امتلاك هويته الرقمية.\nسنبني جسوراً بين مجتمع المصادر المفتوحة وأولئك الذين لا يملكون الوقت أو الطاقة أو المعرفة المسبقة اللازمة.\n\nولا يمكنك بناء الجسور (أو التطبيقات) بدون أساس قوي! ولهذا السبب ';

  @override
  String get hsmProvideValueContent2 =>
      ' موجود.\nنحن نفخر بقرن الأقوال بالأفعال، وقد جعلنا واجهة المستخدم الخاصة بنا والتي يسهل الوصول إليها مفتوحة المصدر.\n\nدعونا نبني عالماً أفضل معاً، شيئاً فشيئاً.';

  @override
  String get hsmFirst => 'أولاً عن طريق';

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
  String get ouPlatform => 'توفر المنصات';

  @override
  String get ouPlatformContent =>
      'يمكنك استخدام Open UI للإنشاء على أنظمة Android و iOS و Linux و macOS و Windows والويب!';

  @override
  String get ouResponsive => 'تصميم متجاوب';

  @override
  String get ouResponsiveContent =>
      'لرؤية ذلك قيد العمل، العب بالنافذة التي تستخدمها الآن!';

  @override
  String get ouScreen => 'دعم قارئ الشاشة';

  @override
  String get ouScreenContent =>
      'تطبيقات OUI تدعم المستخدمين الذين يحتاجون إلى ';

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
      'الطريقة الوحيدة لتكون متاحًا حقًا لجميع العملاء هي تمكينهم بحرية الاختيار!\nتوفر Open UI تجربة مستخدم أنيقة للتحكم الكامل في مظهر التطبيق.';

  @override
  String get ouInternational => 'التدويل';

  @override
  String get ouInternationalContent =>
      'تُرجمت تطبيقات OUI إلى 14 لغة (حتى الآن).\nتوفر OUI أيضًا البنية التحتية لترجمات مستقبلية غير محدودة.';

  @override
  String get ouReliability => 'الموثوقية';

  @override
  String get ouReliabilityContent =>
      'تم بناء برمجيات YWT لتدوم. هذا ليس توليد كود بالذكاء الاصطناعي.\nمبرمجو هم بشر. نماذج اللغة الكبيرة (LLMs) هي مجرد بط مطاطي.';

  @override
  String get ouGetStarted => 'البدء';

  @override
  String get ouIconLabel => 'بيئة اختبار (sandbox) للإعدادات.';

  @override
  String get ouTagLine =>
      'عند البناء باستخدام Open UI، يمكن لتطبيقاتك أن تصل حقًا إلى أي جمهور!\n';

  @override
  String get sosPromoLabel => 'فيديو ترويجي لـ Insta SOS.';

  @override
  String get sosDescription =>
      'كاميرا، ومنارة طوارئ (SOS)، وقائمة بحقوقك، كل ذلك في مكان واحد.\nإنه متاح بـ 14 لغة ويدعم قارئات الشاشة.';

  @override
  String get sosPrivate =>
      'لا يحتوي InstaSOS على حسابات أو ملفات تعريف ارتباط أو إعلانات.\n';

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
  String get sosTranslators => 'مترجمون';

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
  String get fahTeamHint => 'فتح صفحة فريق YWT لـ Folding@home';

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
      'كل \'بت\' (bit) تقدمه لـ نحن يأخذ \'بايت\' (byte) من شركات التكنولوجيا الكبرى.';

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
    return 'فتح رابط لصفحة $page الخاصة بـ YWT';
  }

  @override
  String get csPower => 'الطاقة';

  @override
  String get csThanks => 'شكراً جزيلاً على أي وكل دعم!';
}
