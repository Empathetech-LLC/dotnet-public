// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class LangUk extends Lang {
  LangUk([String locale = 'uk']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'двовимірний пісочний годинник.';

  @override
  String get gEmpathLogoHint => 'Натисніть, щоб перейти на головну сторінку.';

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
  String get gEmpathetechGitHint =>
      'Відкрити сторінку GitHub для Empathetic LLC';

  @override
  String gImageCredit(Object creator) {
    return 'Автор зображення: $creator';
  }

  @override
  String get gReachOut => 'Зв\'язатися';

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
  String get hsSlogan => 'Побудуймо кращий світ разом\nбіт за бітом';

  @override
  String get hsSloganFix => 'Побудуймо кращий світ разом\nбіт за бітом';

  @override
  String get hsVideoLabel =>
      'Анімований логотип Empathetic LLC: літери у слові Empathetic перетворюються на двовимірний пісочний годинник';

  @override
  String get hsPeople => 'Люди — не продукти.';

  @override
  String get hsWell => 'Ну, принаймні не повинні ними бути.';

  @override
  String get hsReality => 'Прикра реальність така, що наші особистості, наші ';

  @override
  String get hsData => 'дані';

  @override
  String get hsGold =>
      ', — це нова золота лихоманка великих технологічних компаній.';

  @override
  String get hsRush =>
      'А великі технологічні компанії справді люблять поспішати.\nЧерез їхній нескінченний спринт антиутопічні науково-фантастичні фільми стають реальністю надто швидко.';

  @override
  String get hsSlow =>
      'Час пригальмувати.\nЧас повернути контроль над нашим цифровим \"я\".\nЧас для кращого ';

  @override
  String get hsPlan => 'плану.';

  @override
  String get msPageTitle => 'Місія';

  @override
  String get msSoWe => 'Тому ми';

  @override
  String get msBy => 'Шляхом';

  @override
  String get msFirst => 'Спершу шляхом';

  @override
  String get msIDProblem => 'Визначення проблеми';

  @override
  String get msIDProblemContent =>
      'Бізнес-моделі, де прибуток на першому місці, не є сталими.\n\nЗа визначенням: якщо прибуток стоїть на першому місці, то такі речі, як робота заради місії, правильне ставлення до людей та відповідальне споживання ресурсів, відходять на задній план.\n\nІ ця жадібність залишилася безконтрольною у сфері великих технологій. Технологічним гігантам вже мало наших грошей, і вони створюють продукти, щоб націлитися на наші особистості та монополізувати наш розум.';

  @override
  String get msFindSolution => 'Пошук рішення';

  @override
  String get msFindSolutionContent =>
      'На щастя, у всьому світі є дивовижні технологи, які працюють разом заради кращого майбутнього.\nТого, де постачальники послуг і клієнти мають активні, здорові та взаємовигідні відносини.\n\nСпільнота відкритого вихідного коду (open source).\n\nЗа своєю суттю, програмне забезпечення з відкритим вихідним кодом вільно доступне для перегляду будь-кому. Багато проєктів також можна вільно змінювати та поширювати.\nЦе програмне забезпечення, якому нічого приховувати, створене людьми, які розуміють, що спільні проблеми вимагають спільних рішень.\n\nІ в чудовому світі програмного забезпечення з відкритим вихідним кодом існує підкатегорія: програмне забезпечення для самостійного хостингу (self-hosting).\n\nSelf-hosting дозволяє нам взяти будь-який комп\'ютер, який не використовується (навіть кишенькового розміру), і зберігати наші дані там.\nЗавдяки самостійному хостингу ми можемо контролювати власну цифрову присутність, а не віддавати контроль якомусь далекому серверу, що належить байдужій корпорації.\n\nІ існують self-hosted версії майже всього! Від Adobe до Zoom є пристрасні хактивісти, які створюють альтернативи, що ставлять людей вище за прибутки.\n\nТож як перейти від закритого коду та прибутків до відкритого коду? Як почати самостійний хостинг?\nЦе вимагає багато часу, енергії та попередніх знань.\n\nОсь тут у гру вступаємо ми.';

  @override
  String get msProvideValue => 'Виконання роботи';

  @override
  String get msProvideValueContent1 =>
      'Місія Empathetech — відновити баланс сил у технологіях, зробивши self-hosting доступнішим.\n\nМи створюватимемо застосунки, які дозволять будь-кому володіти своєю цифровою ідентичністю.\nМи будуватимемо мости між open source спільнотою та тими, кому бракує часу, енергії чи попередніх знань.\n\nАле ви не можете будувати мости (або застосунки) без міцного фундаменту! Ось чому ';

  @override
  String get msProvideValueContent1Fix =>
      'Місія Empathetic — відновити баланс сил у технологіях, зробивши self-hosting доступнішим.\n\nМи створюватимемо застосунки, які дозволять будь-кому володіти своєю цифровою ідентичністю.\nМи будуватимемо мости між open source спільнотою та тими, кому бракує часу, енергії чи попередніх знань.\n\nАле ви не можете будувати мости (або застосунки) без міцного фундаменту! Ось чому ';

  @override
  String get msProvideValueContent2 =>
      ' існує.\nEmpathetech пишається тим, що підкріплює слова діями, і ми зробили наш доступний інтерфейс користувача (UI) відкритим.\n\nПобудуймо кращий світ разом, біт за бітом.';

  @override
  String get msProvideValueContent2Fix =>
      ' існує.\nEmpathetic пишається тим, що підкріплює слова діями, і ми зробили наш доступний інтерфейс користувача (UI) відкритим.\n\nПобудуймо кращий світ разом, біт за бітом.';

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
  String get ouHow => 'Як це працює?';

  @override
  String get ouEFUIsHow =>
      'Open UI побудований на базі і допомагає вам розпочати з ';

  @override
  String get ouSimplifies =>
      'EFUI — це бібліотека для створення справді доступних застосунків. Вона спрощує...';

  @override
  String get ouPlatform => 'Доступність на платформах';

  @override
  String get ouPlatformContent =>
      'Ви можете використовувати EFUI для створення застосунків на Android, iOS, Linux, macOS, Windows та Web!';

  @override
  String get ouResponsive => 'Адаптивний дизайн';

  @override
  String get ouResponsiveContent =>
      'Щоб побачити це в дії, пограйтеся з вікном, яке ви використовуєте прямо зараз!';

  @override
  String get ouScreen => 'Підтримка зчитувачів екрана';

  @override
  String get ouScreenContent =>
      'Застосунки Empathetech підтримують користувачів, яким потрібні ';

  @override
  String get ouScreenContentFix =>
      'Застосунки Empathetic підтримують користувачів, яким потрібні ';

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
      'Єдиний спосіб бути справді доступним для ВСІХ клієнтів — надати їм свободу вибору!\nEFUI забезпечує елегантний UX для повного контролю над зовнішнім виглядом застосунку.';

  @override
  String get ouInternational => 'Інтернаціоналізація';

  @override
  String get ouInternationalContent =>
      'Додатки Empathetech (наразі) перекладено 14 мовами.\nEFUI також забезпечує інфраструктуру для необмеженої кількості майбутніх перекладів.';

  @override
  String get ouInternationalContentFix =>
      'Додатки Empathetic (наразі) перекладено 14 мовами.\nEFUI також забезпечує інфраструктуру для необмеженої кількості майбутніх перекладів.';

  @override
  String get ouReliability => 'Надійність';

  @override
  String get ouReliabilityContent =>
      'Програмне забезпечення Empathetech створене, щоб служити довго. Це НЕ генерація коду штучним інтелектом.\nПрограмісти Empathetech — це люди. LLM — це гумові качечки.';

  @override
  String get ouReliabilityContentFix =>
      'Програмне забезпечення Empathetic створене, щоб служити довго. Це НЕ генерація коду штучним інтелектом.\nПрограмісти Empathetic — це люди. LLM — це гумові качечки.';

  @override
  String get ouGetStarted => 'Почати';

  @override
  String get ouOpenUIIconLabel => 'пісочниця налаштувань.';

  @override
  String get ouEFUITagLine =>
      'Створені з EFUI, ваші застосунки справді зможуть охопити будь-яку аудиторію!\n';

  @override
  String get sosPromoLabel => 'Промо-відео для Insta SOS.';

  @override
  String get sosDescription =>
      'Камера, маячок SOS та список ваших прав — усе в одному місці.\nВін доступний 14 мовами та підтримує програми зчитування з екрана.';

  @override
  String get sosPrivate =>
      'InstaSOS не має облікових записів, файлів cookie чи реклами.\n';

  @override
  String get sosPrivateFix =>
      'Insta-SOS не має облікових записів, файлів cookie чи реклами.\n';

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
  String get llDescription => 'Android-лаунчер Empathetech.';

  @override
  String get llDescriptionFix => 'Android-лаунчер Empathetic.';

  @override
  String get llInDev =>
      'Liminal перебуває в розробці.\nЙого дизайн тяжіє до мінімалізму, адже наші телефони мають бути інструментами для нашого використання, а не навпаки.';

  @override
  String get llBut => 'Але це мінімалістичний лаунчер, створений з ';

  @override
  String get llWhimsy =>
      '.\nТаким чином, ваш головний екран буде вільним від безладу та відволікаючих факторів, І матиме безмежні можливості налаштування. З додаванням крапельки химерності.';

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
  String get ssPreview1 => 'Ще один застосунок Empathetech, ';

  @override
  String get ssPreview1Fix => 'Ще один застосунок Empathetic, ';

  @override
  String get ssPreview2 =>
      ', перебуває в розробці.\nSmoke Signal — це застосунок соціальної мережі, створений для того, щоб відволікти нас від екранів.';

  @override
  String get ssPreview3 =>
      'Smoke Signal також буде повністю підтримувати self-hosting завдяки ';

  @override
  String get ssAPHint => 'Відкрити посилання на документацію Activity Pub';

  @override
  String get trWonder =>
      'Якщо вам цікаво, як команда з однієї людини підтримує 14 мов: відповідальне використання LLM.\nПроцес виглядає так...';

  @override
  String get trFirst =>
      '1. Затвердити && структурувати (американський) англійський ';

  @override
  String get trSource => 'оригінал';

  @override
  String get trSecond => '2. Попросити ';

  @override
  String get trBeNice =>
      ' ввічливо перекласти ці записи.\nПо одній мові на тред, щоб не перевантажувати контекст.';

  @override
  String get trThird => '3. Перевірити результати за допомогою ';

  @override
  String get trScript => 'цього скрипта';

  @override
  String get trReverse =>
      'Він робить зворотний переклад для всіх мов, по одному запису за раз. Я читаю кожен результат і позначаю ті, де втратився оригінальний зміст.';

  @override
  String get trFourth =>
      '4. Використати Google Translate (без Gemini), щоб виправити помилки, по одній за раз. Та/або...';

  @override
  String get trFifth =>
      '5. Найняти професіоналів для найважливіших частин.\nНаприклад, права (записи rvX) у ';

  @override
  String get trBy => ' перекладали ';

  @override
  String get trHumans => 'люди';

  @override
  String get trProcess =>
      'Процес неідеальний, але він вимагає значно більше зусиль, ніж сліпе штампування через LLM.\nІ, чесно кажучи, це все, що я можу собі дозволити (поки що).';

  @override
  String get trSpeaking => 'До речі, будь ласка, подумайте про ';

  @override
  String get trEither =>
      '.\nГрошима або часом. За моїми припущеннями, ймовірність (дрібних) помилок — 100%.';

  @override
  String get vaIntro =>
      'Те, як використовується технологія, не можуть вирішувати ті, хто її створює.';

  @override
  String get vaTheBad =>
      'Що може бути чимось хорошим, чимось поганим, або чимось посередині.\nДавайте на хвилинку обговоримо погане: шахрайські застосунки (scam apps).';

  @override
  String get vaScamRisk =>
      ' значно знижує складність створення застосунків, готових до виробництва. У поєднанні з інструментами програмування зі штучним інтелектом шахраям як ніколи легко створювати застосунки, які виглядають і відчуваються як легітимні.\nЩоб допомогти боротися з цим, ми будемо підтримувати список перевірених застосунків.';

  @override
  String get vaCheckIn =>
      'Якщо ви бачите застосунок, який використовує наш UI, спочатку перевірте його тут. Якщо він не перевірений, наша порада: не завантажуйте його.\nКрім того, це не список рекомендацій. Єдина вимога, щоб потрапити до цього списку, — не бути шахрайством.\nЗ огляду на це, відомий UIniverse (всесвіт UI) містить...';

  @override
  String get vaFirst => 'Власні (First party)';

  @override
  String get vaThird => 'Перевірені сторонні';

  @override
  String get vaWaiting => 'В очікуванні';

  @override
  String get vaWillYou => 'Ви будете першим?';

  @override
  String get vaKnown => 'Відомі шахрайства';

  @override
  String get vaSoGood => 'Поки що все добре!\nБудь ласка, не будьте першим :)';

  @override
  String get vaPublished =>
      'Якщо ви опублікували застосунок із використанням EFUI, надішліть нам ';

  @override
  String get vaDoNoHarm =>
      '.\nМи не зобов\'язані любити цей застосунок, і ми не проводимо його публічний огляд.\nМи перевіримо код, і якщо він не завдає шкоди, його буде підтверджено.';

  @override
  String get vaPrivateFree =>
      'Якщо ваш застосунок недоступний для широкого загалу, не хвилюйтеся!\nАле якщо його можуть завантажити незнайомі вам люди, повідомте нам, щоб ми могли його перевірити.';

  @override
  String get vaDoYourPart =>
      'Якщо ми не отримали від вас звістки, ми будемо вважати ваш продукт шахрайством, поки не буде доведено протилежне.\nЯкщо ви вважаєте, що це занадто жорстко, подумайте ще раз. Open UI — це роки роботи, якими діляться безкоштовно. Надіслати електронного листа — це найменше, що ви можете зробити.';

  @override
  String get tsPageTitle => 'Команда';

  @override
  String get tsCore => 'Основний склад';

  @override
  String get tsTheFounderLabel => 'Двовимірний профіль Майкла Уолдрона.';

  @override
  String get tsTheFounderHint =>
      'Натисніть, щоб надіслати йому електронного листа.';

  @override
  String get tsTheFounder => 'Засновник';

  @override
  String get tsBoardMember => 'Член правління';

  @override
  String get tsYou => 'Ви?';

  @override
  String get tsMirrorLabel => 'Чорне коло з мерехтінням, що імітує дзеркало.';

  @override
  String get tsMirrorTip => 'Натисніть, щоб надіслати нам електронного листа';

  @override
  String get tsMirrorHint => 'Запитати про приєднання до команди.';

  @override
  String get tsNonProfit =>
      'Єдине, що стоїть на заваді перетворенню Empathetech на повноцінну некомерційну організацію — це кількість співробітників.\nЯкщо ви вірите в місію, яку я виклав, і маєте кілька вільних годин на тиждень, будь ласка, зв\'яжіться зі мною!\n\nДля початку це буде повністю на волонтерських засадах. Мені теж (поки що) не платять.\nАле я б цього не робив, якби в мене не було хорошого плану і для цього.\n\nУсім зацікавленим пропонується зв\'язатися з нами, але є особлива потреба в людях із досвідом у:\nуправлінні соціальними мережами, фандрейзингу та написанні грантів.';

  @override
  String get tsWild => 'У реальному житті';

  @override
  String get ts2025BoothLabel => 'Стенд Empathetech на Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Натисніть, щоб відкрити сторінку виставок Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) був просто вибуховим!\nБуло важко повернутися до нормального життя після того, як мене оточувало стільки добрих, цілеспрямованих, розумних і творчих людей.\nЩе раз дякую, якщо ви завітали до стенду Empathetech, і до зустрічі наступного року!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) був просто вибуховим!\nБуло важко повернутися до нормального життя після того, як мене оточувало стільки добрих, цілеспрямованих, розумних і творчих людей.\nЩе раз дякую, якщо ви завітали до стенду Empathetic, і до зустрічі наступного року!';

  @override
  String get tsCommunity => 'Спільнота';

  @override
  String get tsFreelance => 'Фріланс';

  @override
  String get tsVideoProduction => 'Виробництво відео';

  @override
  String get tsTranslators => 'Перекладачі';

  @override
  String tsProfile(Object name) {
    return 'Профіль $name';
  }

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
  String get fahTeamHint =>
      'Відкрити сторінку команди Empathetic у Folding@home';

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
      'Кожен біт, який ви віддаєте Empathetech, забирає байт у великих технологічних компаній.';

  @override
  String get csEveryBitFix =>
      'Кожен біт, який ви віддаєте Empathetic, забирає байт у великих технологічних компаній.';

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
    return 'Відкрити посилання на $page Empathetic';
  }

  @override
  String get csPower => 'Потужність';

  @override
  String get csThanks => 'Щиро дякуємо за будь-яку вашу підтримку!';
}
