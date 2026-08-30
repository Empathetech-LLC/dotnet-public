// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class LangRu extends Lang {
  LangRu([String locale = 'ru']) : super(locale);

  @override
  String get gYWTLogoLabel => 'двухмерные песочные часы.';

  @override
  String get gYWTLogoHint => 'Нажмите, чтобы перейти на главную страницу.';

  @override
  String gLearn(Object name) {
    return 'Узнать о $name';
  }

  @override
  String get gHomeHint => 'Открыть главную страницу';

  @override
  String get gProductsHint => 'Открыть страницу продуктов';

  @override
  String get gMissionHint => 'Открыть страницу миссии';

  @override
  String get gTeamHint => 'Открыть страницу команды';

  @override
  String get gContributeHint => 'Открыть страницу участия';

  @override
  String get gShare => 'Поделиться';

  @override
  String get gEmail => 'Эл. почта';

  @override
  String gEmailTo(Object recipient) {
    return 'Написать $recipient';
  }

  @override
  String get gAnEmail => 'письмо';

  @override
  String get gEmailHint => 'Открывает почтовый клиент';

  @override
  String get gNewsletter => 'Новостная рассылка';

  @override
  String gLogoLabel(Object thing) {
    return 'Логотип $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'Иконка для $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Скачать $app для $platform.';
  }

  @override
  String get gRepoHint => 'Открыть ссылку на репозиторий разработки.';

  @override
  String get gYWTGitHint => 'Открыть страницу YWT на GitHub';

  @override
  String gImageCredit(Object creator) {
    return 'Автор изображения: $creator';
  }

  @override
  String get gReachOut => 'Связаться';

  @override
  String gProfile(Object name) {
    return 'Профиль $name';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Открыть страницу $user на Fiverr';
  }

  @override
  String get gDontChaWish =>
      'Разве не хотелось бы, чтобы ваш фронтенд был таким же веселым, ';

  @override
  String get gMeQ => 'как я?';

  @override
  String get gDontCha => 'Правда?';

  @override
  String get gDontChaHint =>
      'Открыть страницу исходного кода этого экрана на GitHub';

  @override
  String get hsAnimLabel =>
      'Анимированный логотип YWT: буквы в слове YWT превращаются в двухмерные песочные часы';

  @override
  String get hsChange => 'Пришло время перемен.';

  @override
  String get hsmIDProblem => 'Определение проблемы';

  @override
  String get hsmIDProblemContent =>
      'Бизнес-модели, в которых прибыль ставится на первое место, нежизнеспособны.\n\nПо определению: если прибыль стоит на первом месте, то такие вещи, как работа ради миссии, правильное отношение к людям и ответственное потребление ресурсов, отходят на второй план.\n\nИ эта жадность осталась безнаказанной в крупных технологических компаниях. ИТ-гигантам уже мало наших денег, они создают продукты, нацеленные на нашу личность, чтобы монополизировать наши умы.';

  @override
  String get hsmSoWe => 'Так что мы';

  @override
  String get hsmFindSolution => 'Поиск решения';

  @override
  String get hsmFindSolutionContent =>
      'К счастью, по всему миру есть потрясающие технологи, которые вместе работают над лучшим будущим.\nТем, где поставщики услуг и клиенты поддерживают активные, здоровые и взаимовыгодные отношения.\n\nСообщество open source.\n\nПо своей сути, программное обеспечение с открытым исходным кодом доступно для просмотра любому желающему. Многие проекты также можно свободно модифицировать и распространять.\nЭто программы, которым нечего скрывать, созданные людьми, понимающими, что общие проблемы требуют общих решений.\n\nИ в этом чудесном мире open source есть подкатегория: селф-хостинг.\n\nСелф-хостинг позволяет нам взять любой неиспользуемый компьютер (даже карманного размера) и хранить наши данные на нем.\nИспользуя селф-хостинг, мы можем сами контролировать свое цифровое присутствие, а не передавать контроль какому-то далекому серверу, принадлежащему бездушной корпорации.\n\nИ существуют селф-хост версии почти всего! От Adobe до Zoom — страстные хактивисты создают альтернативы, которые ставят людей выше прибыли.\n\nТак как же перейти от закрытого ПО, ориентированного на прибыль, к open source? Как начать использовать селф-хостинг?\nЭто требует много времени, энергии и предварительных знаний.\n\nИменно здесь на помощь приходим мы.';

  @override
  String get hsmBy => 'Путем';

  @override
  String get hsmProvideValue => 'Выполнение работы';

  @override
  String get hsmProvideValueContent1 =>
      'YWT восстанавливает баланс в сфере технологий, делая самостоятельный хостинг более доступным.\n\nМы будем создавать приложения, которые позволят каждому владеть своей цифровой идентичностью.\nМы построим мосты между сообществом открытого исходного кода и теми, у кого нет необходимого времени, сил или предварительных знаний.\n\nНо невозможно строить мосты (или приложения) без надежного фундамента! Именно поэтому ';

  @override
  String get hsmProvideValueContent2 =>
      ' существует.\nМы гордимся тем, что подкрепляем слова делом, и открыли исходный код нашего доступного пользовательского интерфейса.\n\nДавайте строить лучший мир вместе, бит за битом.';

  @override
  String get hsmFirst => 'Сначала путем';

  @override
  String get psPageTitle => 'Продукты';

  @override
  String get psTitleHint => 'Показать список';

  @override
  String get psShowDemo => 'Показать демо';

  @override
  String get psHideDemo => 'Скрыть демо';

  @override
  String get psShowPromo => 'Показать промо';

  @override
  String get psHidePromo => 'Скрыть промо';

  @override
  String get psLearnMore => ', чтобы узнать больше.';

  @override
  String get psDownloadNow => 'Скачать сейчас';

  @override
  String get psComingSoon => 'Скоро...';

  @override
  String get ouSlogan => 'Создавайте приложения для каждого';

  @override
  String get ouLike => 'Как и пользователи, которым нужны...';

  @override
  String get ouAccessible => 'Доступные элементы управления';

  @override
  String get ouZeroStrain => 'нулевая нагрузка на глаза';

  @override
  String get ouEverything => 'И все, что между ними';

  @override
  String get ouRandom => 'Применена случайная конфигурация.';

  @override
  String get ouIs => 'Open UI — это генератор приложений.';

  @override
  String get ouDemo => 'Демонстрация создания нового приложения в Open UI.';

  @override
  String get ouFoundation =>
      'Он создает фундамент для доступных, кроссплатформенных, мультиязычных и готовых к продакшену приложений в один клик.';

  @override
  String get ouLocal =>
      'Все работает на вашем компьютере. Никаких учетных данных, кредитных карт или файлов cookie.';

  @override
  String get ouRequirements =>
      'Единственные требования — это подключение к интернету и идея.';

  @override
  String get ouFlutterToo => '...и Flutter...';

  @override
  String get ouPlatform => 'Доступность на платформах';

  @override
  String get ouPlatformContent =>
      'Вы можете использовать Open UI для разработки под Android, iOS, Linux, macOS, Windows и Web!';

  @override
  String get ouResponsive => 'Адаптивный дизайн';

  @override
  String get ouResponsiveContent =>
      'Чтобы увидеть это в действии, поиграйте с размером окна, которое вы используете прямо сейчас!';

  @override
  String get ouScreen => 'Поддержка программ чтения с экрана';

  @override
  String get ouScreenContent =>
      'Приложения OUI поддерживают пользователей, которым нужны ';

  @override
  String get ouTalkBackHint => 'Открыть ссылку на документацию TalkBack';

  @override
  String get ouAnd => ' и ';

  @override
  String get ouVoiceOverHint => 'Открыть ссылку на документацию VoiceOver';

  @override
  String get ouCustom => 'Пользовательские настройки';

  @override
  String get ouCustomContent =>
      'Единственный способ быть по-настоящему доступными для ВСЕХ клиентов — это дать им свободу выбора!\nOpen UI обеспечивает элегантный UX для полного контроля над внешним видом приложения.';

  @override
  String get ouInternational => 'Интернационализация';

  @override
  String get ouInternationalContent =>
      'Приложения OUI переведены на 14 языков (на данный момент).\nOUI также предоставляет инфраструктуру для неограниченного числа будущих переводов.';

  @override
  String get ouReliability => 'Надежность';

  @override
  String get ouReliabilityContent =>
      'ПО от YWT создается на века. Это НЕ кодогенерация с помощью ИИ.\nПрограммисты — люди. LLM — это резиновые уточки.';

  @override
  String get ouGetStarted => 'Начать';

  @override
  String get ouIconLabel => 'песочница настроек.';

  @override
  String get ouTagLine =>
      'Создавая приложения с помощью Open UI, вы действительно можете охватить любую аудиторию!\n';

  @override
  String get sosPromoLabel => 'Промо-ролик для Insta SOS.';

  @override
  String get sosDescription =>
      'Камера, SOS-маяк и список ваших прав в одном месте.\nОно доступно на 14 языках и поддерживает программы чтения с экрана.';

  @override
  String get sosPrivate =>
      'В InstaSOS нет аккаунтов, файлов cookie или рекламы.\n';

  @override
  String get sosFree => 'Приложение полностью бесплатно, а его код — ';

  @override
  String get sosOpenSource => 'open source';

  @override
  String get sosConsider => 'Пожалуйста, рассмотрите возможность ';

  @override
  String get sosContributing => 'внесения вклада';

  @override
  String get sosSAPS =>
      ', чтобы поддержать программное обеспечение как общественную услугу.';

  @override
  String get sosIconLabel => 'ярко раскрашенный колокольчик уведомлений.';

  @override
  String get sosWeb =>
      'Один из конкретных и очень действенных способов помочь — оплатить счет за онлайн-хостинг InstaSOS.\n\nВладельцы магазинов приложений четко обозначили свои приоритеты, и InstaSOS могут удалить, если/когда приложение наберет популярность.\nУ пользователей Android всегда будет возможность установить его самостоятельно, но единственной жизнеспособной альтернативой для пользователей iOS станет веб-приложение.\n\nК счастью, приложения Flutter вычисляются на стороне клиента, поэтому счета будут небольшими.\nНам (вам) придется платить только за управление трафиком.';

  @override
  String get sosTranslators => 'Переводчики';

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
  String get fahJoin => 'Присоединяйтесь к фолдингу';

  @override
  String get fahIconLabel => 'молекула белка.';

  @override
  String get fahIconHint => 'Нажмите, чтобы открыть их сайт.';

  @override
  String get fahIntro1 => 'Присоединяйтесь к ';

  @override
  String get fahIntro2 => ' команде Folding@home!';

  @override
  String get fahTeamHint => 'Открыть страницу команды YWT на Folding at Home';

  @override
  String get fahWhats => 'Что такое ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Открыть страницу \"О нас\" Folding at Home';

  @override
  String get fahStats =>
      'Вместе мы заработали более 400 миллионов очков.\nЭто ставит нас в топ 2% всех команд мира!';

  @override
  String get csPageTitle => 'Участие';

  @override
  String get csEveryBit =>
      'Каждый бит, который вы отдаете нас, забирает байт у ИТ-гигантов.';

  @override
  String get csTime => 'Время';

  @override
  String get csBecome => ' о том, как стать ';

  @override
  String get csGit => 'контрибьютором на GitHub';

  @override
  String get csMoney => 'Деньги';

  @override
  String csOpenLink(Object page) {
    return 'Открыть ссылку на $page YWT';
  }

  @override
  String get csPower => 'Вычислительная мощность';

  @override
  String get csThanks => 'Огромное спасибо за любую поддержку!';
}
