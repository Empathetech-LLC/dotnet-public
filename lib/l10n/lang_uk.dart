// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class LangUk extends Lang {
  LangUk([String locale = 'uk']) : super(locale);

  @override
  String get gYWTLogoLabel => 'двовимірний пісочний годинник.';

  @override
  String get gYWTLogoHint => 'Натисніть, щоб перейти на головну сторінку.';

  @override
  String gLearn(Object name) {
    return 'Дізнатися про $name';
  }

  @override
  String get gHomeHint => 'Відкрити головну сторінку';

  @override
  String get gProductsHint => 'Відкрити сторінку продукту';

  @override
  String get gMissionHint => 'Відкрити сторінку місії';

  @override
  String get gTeamHint => 'Відкрити сторінку команди';

  @override
  String get gContributeHint => 'Відкрити сторінку для внесків';

  @override
  String get gShare => 'Поділитися';

  @override
  String get gEmail => 'Електронна пошта';

  @override
  String gEmailTo(Object recipient) {
    return 'Написати $recipient';
  }

  @override
  String get gAnEmail => 'електронний лист';

  @override
  String get gEmailHint => 'Відкриває ваш поштовий клієнт';

  @override
  String get gNewsletter => 'Розсилка';

  @override
  String gLogoLabel(Object thing) {
    return 'Логотип $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'Значок для $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Завантажити $app для $platform.';
  }

  @override
  String get gRepoHint => 'Відкрити посилання на репозиторій розробки.';

  @override
  String get gYWTGitHint => 'Відкрити сторінку GitHub для YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Автор зображення: $creator';
  }

  @override
  String get gReachOut => 'Зв\'язатися';

  @override
  String gProfile(Object name) {
    return 'Профіль $name';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Відкрити сторінку $user на Fiverr';
  }

  @override
  String get gDontChaWish =>
      'Хіба не хотілося б, щоб ваш фронтенд був веселим ';

  @override
  String get gMeQ => 'як я?';

  @override
  String get gDontCha => 'Хіба ні?';

  @override
  String get gDontChaHint =>
      'Відкрити сторінку GitHub із вихідним кодом цього екрана';

  @override
  String get hsAnimLabel =>
      'Анімований логотип YWT: літери у слові YWT перетворюються на двовимірний пісочний годинник';

  @override
  String get hsChange => 'Настав час змін.';

  @override
  String get hsmIDProblem => 'Визначення проблеми';

  @override
  String get hsmIDProblemContent =>
      'Бізнес-моделі, де прибуток на першому місці, не є сталими.\n\nЗа визначенням: якщо прибуток стоїть на першому місці, то такі речі, як робота заради місії, правильне ставлення до людей та відповідальне споживання ресурсів, відходять на задній план.\n\nІ ця жадібність залишилася безконтрольною у сфері великих технологій. Технологічним гігантам вже мало наших грошей, і вони створюють продукти, щоб націлитися на наші особистості та монополізувати наш розум.';

  @override
  String get hsmSoWe => 'Тому ми';

  @override
  String get hsmFindSolution => 'Пошук рішення';

  @override
  String get hsmFindSolutionContent =>
      'На щастя, у всьому світі є дивовижні технологи, які працюють разом заради кращого майбутнього.\nТого, де постачальники послуг і клієнти мають активні, здорові та взаємовигідні відносини.\n\nСпільнота відкритого вихідного коду (open source).\n\nЗа своєю суттю, програмне забезпечення з відкритим вихідним кодом вільно доступне для перегляду будь-кому. Багато проєктів також можна вільно змінювати та поширювати.\nЦе програмне забезпечення, якому нічого приховувати, створене людьми, які розуміють, що спільні проблеми вимагають спільних рішень.\n\nІ в чудовому світі програмного забезпечення з відкритим вихідним кодом існує підкатегорія: програмне забезпечення для самостійного хостингу (self-hosting).\n\nSelf-hosting дозволяє нам взяти будь-який комп\'ютер, який не використовується (навіть кишенькового розміру), і зберігати наші дані там.\nЗавдяки самостійному хостингу ми можемо контролювати власну цифрову присутність, а не віддавати контроль якомусь далекому серверу, що належить байдужій корпорації.\n\nІ існують self-hosted версії майже всього! Від Adobe до Zoom є пристрасні хактивісти, які створюють альтернативи, що ставлять людей вище за прибутки.\n\nТож як перейти від закритого коду та прибутків до відкритого коду? Як почати самостійний хостинг?\nЦе вимагає багато часу, енергії та попередніх знань.\n\nОсь тут у гру вступаємо ми.';

  @override
  String get hsmBy => 'Шляхом';

  @override
  String get hsmProvideValue => 'Виконання роботи';

  @override
  String get hsmProvideValueContent1 =>
      'YWT відновлює баланс у технологіях, роблячи самостійний хостинг більш доступним.\n\nМи створюватимемо додатки, які дозволять будь-кому володіти своєю цифровою ідентичністю.\nМи будуватимемо мости між спільнотою відкритого коду та тими, кому бракує необхідного часу, енергії чи попередніх знань.\n\nАле неможливо будувати мости (або додатки) без міцного фундаменту! Ось чому ';

  @override
  String get hsmProvideValueContent2 =>
      ' існує.\nМи пишаємося тим, що підкріплюємо слова діями, і зробили наш доступний інтерфейс (UI) з відкритим вихідним кодом.\n\nДавайте будувати кращий світ разом, крок за кроком.';

  @override
  String get hsmFirst => 'Спершу шляхом';

  @override
  String get psPageTitle => 'Продукти';

  @override
  String get psTitleHint => 'Показати список';

  @override
  String get psShowDemo => 'Показати демо';

  @override
  String get psHideDemo => 'Сховати демо';

  @override
  String get psShowPromo => 'Показати промо';

  @override
  String get psHidePromo => 'Сховати промо';

  @override
  String get psLearnMore => ', щоб дізнатися більше.';

  @override
  String get psDownloadNow => 'Завантажити зараз';

  @override
  String get psComingSoon => 'Незабаром...';

  @override
  String get ouSlogan => 'Створюйте застосунки для будь-кого';

  @override
  String get ouLike => 'Наприклад, для користувачів, яким потрібні...';

  @override
  String get ouAccessible => 'Доступні елементи керування';

  @override
  String get ouZeroStrain => 'нульове навантаження на очі';

  @override
  String get ouEverything => 'Усе, що між цим';

  @override
  String get ouRandom => 'Застосовано випадкову конфігурацію.';

  @override
  String get ouIs => 'Open UI — це генератор застосунків.';

  @override
  String get ouDemo =>
      'Демонстрація створення нового застосунку за допомогою Open UI.';

  @override
  String get ouFoundation =>
      'Він одним кліком створює основу для доступних, кросплатформних, багатомовних застосунків, готових до виробництва.';

  @override
  String get ouLocal =>
      'Усе працює на вашому комп\'ютері. Немає жодних облікових даних, кредитних карток або файлів cookie.';

  @override
  String get ouRequirements =>
      'Єдині вимоги — це підключення до Інтернету та ідея.';

  @override
  String get ouFlutterToo => '...і Flutter...';

  @override
  String get ouPlatform => 'Доступність на платформах';

  @override
  String get ouPlatformContent =>
      'Ви можете використовувати Open UI для створення застосунків на Android, iOS, Linux, macOS, Windows та Web!';

  @override
  String get ouResponsive => 'Адаптивний дизайн';

  @override
  String get ouResponsiveContent =>
      'Щоб побачити це в дії, пограйтеся з вікном, яке ви використовуєте прямо зараз!';

  @override
  String get ouScreen => 'Підтримка зчитувачів екрана';

  @override
  String get ouScreenContent =>
      'Застосунки OUI підтримують користувачів, яким потрібні ';

  @override
  String get ouTalkBackHint => 'Відкрити посилання на документацію TalkBack';

  @override
  String get ouAnd => ' та ';

  @override
  String get ouVoiceOverHint => 'Відкрити посилання на документацію VoiceOver';

  @override
  String get ouCustom => 'Налаштування користувача';

  @override
  String get ouCustomContent =>
      'Єдиний спосіб бути справді доступним для ВСІХ клієнтів — надати їм свободу вибору!\nOpen UI забезпечує елегантний UX для повного контролю над зовнішнім виглядом застосунку.';

  @override
  String get ouInternational => 'Інтернаціоналізація';

  @override
  String get ouInternationalContent =>
      'Додатки OUI (наразі) перекладено 14 мовами.\nOUI також забезпечує інфраструктуру для необмеженої кількості майбутніх перекладів.';

  @override
  String get ouReliability => 'Надійність';

  @override
  String get ouReliabilityContent =>
      'Програмне забезпечення YWT створене, щоб служити довго. Це НЕ генерація коду штучним інтелектом.\nПрограмісти — це люди. LLM — це гумові качечки.';

  @override
  String get ouGetStarted => 'Почати';

  @override
  String get ouIconLabel => 'пісочниця налаштувань.';

  @override
  String get ouTagLine =>
      'Створені з Open UI, ваші застосунки справді зможуть охопити будь-яку аудиторію!\n';

  @override
  String get sosPromoLabel => 'Промо-відео для Insta SOS.';

  @override
  String get sosDescription =>
      'Камера, маячок SOS та список ваших прав — усе в одному місці.\nВін доступний 14 мовами та підтримує програми зчитування з екрана.';

  @override
  String get sosPrivate =>
      'InstaSOS не має облікових записів, файлів cookie чи реклами.\n';

  @override
  String get sosFree => 'Це абсолютно безкоштовно, а код ';

  @override
  String get sosOpenSource => 'відкритий (open source)';

  @override
  String get sosConsider => 'Будь ласка, подумайте про ';

  @override
  String get sosContributing => 'здійснення внеску';

  @override
  String get sosSAPS =>
      ', щоб підтримати програмне забезпечення як суспільну послугу.';

  @override
  String get sosIconLabel => 'яскраво розфарбований дзвіночок сповіщень.';

  @override
  String get sosWeb =>
      'Один конкретний і дуже дієвий спосіб зробити внесок — оплатити рахунок за хостинг InstaSOS в Інтернеті.\n\nВласники магазинів застосунків чітко заявили про свою позицію, і InstaSOS може бути видалений, якщо/коли він набере популярності.\nКористувачі Android завжди матимуть можливість самостійного встановлення, але єдиною життєздатною альтернативою для користувачів iOS буде веб-застосунок.\n\nНа щастя, застосунки Flutter обчислюються на стороні клієнта, тому рахунок буде невеликим.\nНам (вам) потрібно буде платити лише за управління трафіком.';

  @override
  String get sosTranslators => 'Перекладачі';

  @override
  String get llInDev =>
      'Liminal знаходиться в розробці.\nЙого дизайн тяжіє до мінімалізму, але він створений із ';

  @override
  String get llWhimsy =>
      'Тож ваш головний екран буде позбавлений безладу та відволікань, І буде безмежно настроюваним.\nЗ ноткою химерності на додачу.';

  @override
  String get llTheHood =>
      'Приклад головного екрана із зображенням гори Худ у Портленді.';

  @override
  String get llLasRosas =>
      'Приклад головного екрана із зображенням розарію в Портленді.';

  @override
  String get llFrogAndPigs =>
      'Приклад головного екрана із зображенням дикої природи Портленда.';

  @override
  String get llModel =>
      'Liminal буде випущено за моделлю \"плати, скільки можеш\".\nВерсія в Google Play буде платною, оскільки (хороший) код сам себе не пише.\nУ репозиторії GitHub також буде у вільному доступі APK-файл, оскільки здорові стосунки з технологіями не повинні бути ексклюзивом лише для тих, хто має вільні гроші.';

  @override
  String get fahJoin => 'Приєднуйтесь до спільноти';

  @override
  String get fahIconLabel => 'молекула білка.';

  @override
  String get fahIconHint => 'Натисніть, щоб відкрити їхній сайт.';

  @override
  String get fahIntro1 => 'Приєднуйтесь до ';

  @override
  String get fahIntro2 => ' команди Folding@home!';

  @override
  String get fahTeamHint => 'Відкрити сторінку команди YWT у Folding@home';

  @override
  String get fahWhats => 'Що таке ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Відкрити сторінку «Про нас» Folding@home';

  @override
  String get fahStats =>
      'Разом ми заробили понад 400 мільйонів балів.\nЦе ставить нас у 2% найкращих команд з усього світу!';

  @override
  String get csPageTitle => 'Зробити внесок';

  @override
  String get csEveryBit =>
      'Кожен біт, який ви віддаєте нас, забирає байт у великих технологічних компаній.';

  @override
  String get csTime => 'Час';

  @override
  String get csBecome => ' про те, щоб стати ';

  @override
  String get csGit => 'контриб\'ютором на GitHub';

  @override
  String get csMoney => 'Гроші';

  @override
  String csOpenLink(Object page) {
    return 'Відкрити посилання на $page YWT';
  }

  @override
  String get csPower => 'Потужність';

  @override
  String get csThanks => 'Щиро дякуємо за будь-яку вашу підтримку!';
}
