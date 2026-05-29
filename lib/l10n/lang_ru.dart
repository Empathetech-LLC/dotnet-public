// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class LangRu extends Lang {
  LangRu([String locale = 'ru']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'двухмерные песочные часы.';

  @override
  String get gEmpathLogoHint => 'Нажмите, чтобы перейти на главную страницу.';

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
  String get gEmpathetechGitHint => 'Открыть страницу Empathetic LLC на GitHub';

  @override
  String gImageCredit(Object creator) {
    return 'Автор изображения: $creator';
  }

  @override
  String get gReachOut => 'Связаться';

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
  String get hsSlogan => 'Давайте построим лучший мир вместе\nбит за битом';

  @override
  String get hsSloganFix => 'Давайте построим лучший мир вместе\nбит за битом';

  @override
  String get hsVideoLabel =>
      'Анимированный логотип Empathetic LLC: буквы в слове Empathetic превращаются в двухмерные песочные часы';

  @override
  String get hsPeople => 'Люди — не продукты.';

  @override
  String get hsWell => 'По крайней мере, не должны ими быть.';

  @override
  String get hsReality => 'К сожалению, в реальности наши личности, наши ';

  @override
  String get hsData => 'данные';

  @override
  String get hsGold => ' — это новая золотая жила для ИТ-гигантов.';

  @override
  String get hsRush =>
      'А ИТ-гиганты очень любят спешить.\nБлагодаря их бесконечной гонке, антиутопические научно-фантастические фильмы слишком быстро становятся реальностью.';

  @override
  String get hsSlow =>
      'Пора притормозить.\nПора взять под контроль свою цифровую личность.\nПора придумать лучший ';

  @override
  String get hsPlan => 'план.';

  @override
  String get msPageTitle => 'Миссия';

  @override
  String get msSoWe => 'Так что мы';

  @override
  String get msBy => 'Путем';

  @override
  String get msFirst => 'Сначала путем';

  @override
  String get msIDProblem => 'Определение проблемы';

  @override
  String get msIDProblemContent =>
      'Бизнес-модели, в которых прибыль ставится на первое место, нежизнеспособны.\n\nПо определению: если прибыль стоит на первом месте, то такие вещи, как работа ради миссии, правильное отношение к людям и ответственное потребление ресурсов, отходят на второй план.\n\nИ эта жадность осталась безнаказанной в крупных технологических компаниях. ИТ-гигантам уже мало наших денег, они создают продукты, нацеленные на нашу личность, чтобы монополизировать наши умы.';

  @override
  String get msFindSolution => 'Поиск решения';

  @override
  String get msFindSolutionContent =>
      'К счастью, по всему миру есть потрясающие технологи, которые вместе работают над лучшим будущим.\nТем, где поставщики услуг и клиенты поддерживают активные, здоровые и взаимовыгодные отношения.\n\nСообщество open source.\n\nПо своей сути, программное обеспечение с открытым исходным кодом доступно для просмотра любому желающему. Многие проекты также можно свободно модифицировать и распространять.\nЭто программы, которым нечего скрывать, созданные людьми, понимающими, что общие проблемы требуют общих решений.\n\nИ в этом чудесном мире open source есть подкатегория: селф-хостинг.\n\nСелф-хостинг позволяет нам взять любой неиспользуемый компьютер (даже карманного размера) и хранить наши данные на нем.\nИспользуя селф-хостинг, мы можем сами контролировать свое цифровое присутствие, а не передавать контроль какому-то далекому серверу, принадлежащему бездушной корпорации.\n\nИ существуют селф-хост версии почти всего! От Adobe до Zoom — страстные хактивисты создают альтернативы, которые ставят людей выше прибыли.\n\nТак как же перейти от закрытого ПО, ориентированного на прибыль, к open source? Как начать использовать селф-хостинг?\nЭто требует много времени, энергии и предварительных знаний.\n\nИменно здесь на помощь приходим мы.';

  @override
  String get msProvideValue => 'Выполнение работы';

  @override
  String get msProvideValueContent1 =>
      'Миссия Empathetech — восстановить баланс сил в технологиях, сделав селф-хостинг более доступным.\n\nМы будем создавать приложения, которые позволят каждому владеть своей цифровой личностью.\nМы наведем мосты между сообществом open source и теми, у кого нет необходимого времени, энергии или предварительных знаний.\n\nА мосты (или приложения) невозможно построить без надежного фундамента! Именно поэтому ';

  @override
  String get msProvideValueContent1Fix =>
      'Миссия Empathetic — восстановить баланс сил в технологиях, сделав селф-хостинг более доступным.\n\nМы будем создавать приложения, которые позволят каждому владеть своей цифровой личностью.\nМы наведем мосты между сообществом open source и теми, у кого нет необходимого времени, энергии или предварительных знаний.\n\nА мосты (или приложения) невозможно построить без надежного фундамента! Именно поэтому ';

  @override
  String get msProvideValueContent2 =>
      ' существует.\nEmpathetech гордится тем, что подкрепляет слова делом, и сделала свой доступный UI открытым исходным кодом.\n\nДавайте построим лучший мир вместе, бит за битом.';

  @override
  String get msProvideValueContent2Fix =>
      ' существует.\nEmpathetic гордится тем, что подкрепляет слова делом, и сделала свой доступный UI открытым исходным кодом.\n\nДавайте построим лучший мир вместе, бит за битом.';

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
  String get ouHow => 'Как это работает?';

  @override
  String get ouEFUIsHow =>
      'Open UI построен на базе и помогает начать работу с ';

  @override
  String get ouSimplifies =>
      'EFUI — это библиотека для создания по-настоящему доступных приложений. Она упрощает...';

  @override
  String get ouPlatform => 'Доступность на платформах';

  @override
  String get ouPlatformContent =>
      'Вы можете использовать EFUI для разработки под Android, iOS, Linux, macOS, Windows и Web!';

  @override
  String get ouResponsive => 'Адаптивный дизайн';

  @override
  String get ouResponsiveContent =>
      'Чтобы увидеть это в действии, поиграйте с размером окна, которое вы используете прямо сейчас!';

  @override
  String get ouScreen => 'Поддержка программ чтения с экрана';

  @override
  String get ouScreenContent =>
      'Приложения Empathetech поддерживают пользователей, которым нужны ';

  @override
  String get ouScreenContentFix =>
      'Приложения Empathetic поддерживают пользователей, которым нужны ';

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
      'Единственный способ быть по-настоящему доступными для ВСЕХ клиентов — это дать им свободу выбора!\nEFUI обеспечивает элегантный UX для полного контроля над внешним видом приложения.';

  @override
  String get ouInternational => 'Интернационализация';

  @override
  String get ouInternationalContent =>
      'Приложения Empathetech переведены на 14 языков (на данный момент).\nEFUI также предоставляет инфраструктуру для неограниченного числа будущих переводов.';

  @override
  String get ouInternationalContentFix =>
      'Приложения Empathetic переведены на 14 языков (на данный момент).\nEFUI также предоставляет инфраструктуру для неограниченного числа будущих переводов.';

  @override
  String get ouReliability => 'Надежность';

  @override
  String get ouReliabilityContent =>
      'ПО от Empathetech создается на века. Это НЕ кодогенерация с помощью ИИ.\nПрограммисты Empathetech — люди. LLM — это резиновые уточки.';

  @override
  String get ouReliabilityContentFix =>
      'ПО от Empathetic создается на века. Это НЕ кодогенерация с помощью ИИ.\nПрограммисты Empathetic — люди. LLM — это резиновые уточки.';

  @override
  String get ouGetStarted => 'Начать';

  @override
  String get ouOpenUIIconLabel => 'песочница настроек.';

  @override
  String get ouEFUITagLine =>
      'Создавая приложения с помощью EFUI, вы действительно можете охватить любую аудиторию!\n';

  @override
  String get sosPromoLabel => 'Промо-ролик для Insta SOS.';

  @override
  String get sosDescription =>
      'Камера, SOS-маяк и список ваших прав в одном месте.\nОно доступно на 14 языках и поддерживает программы чтения с экрана.';

  @override
  String get sosPrivate =>
      'В InstaSOS нет аккаунтов, файлов cookie или рекламы.\n';

  @override
  String get sosPrivateFix =>
      'В Insta-SOS нет аккаунтов, файлов cookie или рекламы.\n';

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
  String get llDescription => 'Android-лаунчер от Empathetech.';

  @override
  String get llDescriptionFix => 'Android-лаунчер от Empathetic.';

  @override
  String get llInDev =>
      'Liminal находится в разработке.\nЕго дизайн тяготеет к минимализму, потому что наши телефоны должны быть инструментами для нас, а не наоборот.';

  @override
  String get llBut => 'Но это минималистичный лаунчер, созданный с помощью ';

  @override
  String get llWhimsy =>
      '.\nТаким образом, ваш домашний экран будет свободен от беспорядка и отвлекающих факторов, И будет иметь безграничные возможности настройки. С долей причудливости в придачу.';

  @override
  String get llTheHood =>
      'Пример домашнего экрана с фотографией горы Маунт-Худ в Портленде.';

  @override
  String get llLasRosas =>
      'Пример домашнего экрана с фотографией Розового сада в Портленде.';

  @override
  String get llFrogAndPigs =>
      'Пример домашнего экрана с фотографией дикой природы Портленда.';

  @override
  String get llModel =>
      'Liminal будет выпущен по модели \"плати, сколько сможешь\".\nВерсия в Google Play будет платной, потому что (хороший) код не пишется сам по себе.\nВ репозитории на GitHub также будет свободно доступный APK, потому что здоровые отношения с технологиями не должны быть доступны только тем, у кого есть лишние деньги.';

  @override
  String get ssPreview1 => 'Еще одно приложение Empathetech, ';

  @override
  String get ssPreview1Fix => 'Еще одно приложение Empathetic, ';

  @override
  String get ssPreview2 =>
      ', находится в разработке.\nSmoke Signal — это социальная сеть, созданная для того, чтобы оторвать нас от экранов.';

  @override
  String get ssPreview3 =>
      'Smoke Signal также будет полностью доступен для селф-хостинга благодаря ';

  @override
  String get ssAPHint => 'Открыть ссылку на документацию Activity Pub';

  @override
  String get trWonder =>
      'Если вам интересно, как команда из одного человека поддерживает 14 языков: ответственное использование LLM.\nПроцесс выглядит так...';

  @override
  String get trFirst =>
      '1. Утвердить && структурировать (американский) английский ';

  @override
  String get trSource => 'исходник';

  @override
  String get trSecond => '2. Попросить ';

  @override
  String get trBeNice =>
      ' вежливо перевести эти записи.\nПо одному языку на тред, чтобы не перегружать контекст.';

  @override
  String get trThird => '3. Проверить результаты с помощью ';

  @override
  String get trScript => 'этого скрипта';

  @override
  String get trReverse =>
      'Он делает обратный перевод для всех языков, по одной записи за раз. Я читаю каждый результат и отмечаю те, где потерялся оригинальный смысл.';

  @override
  String get trFourth =>
      '4. Использовать Google Translate (без Gemini), чтобы исправить ошибки, по одной за раз. И/или...';

  @override
  String get trFifth =>
      '5. Нанять профессионалов для самых важных частей.\nНапример, права (записи rvX) в ';

  @override
  String get trBy => ' переводили ';

  @override
  String get trHumans => 'люди';

  @override
  String get trProcess =>
      'Процесс неидеален, но он требует гораздо больше усилий, чем слепая штамповка через LLM.\nИ, честно говоря, это всё, что я могу себе позволить (пока).';

  @override
  String get trSpeaking => 'Кстати об этом, пожалуйста, подумайте о ';

  @override
  String get trEither =>
      '.\nДеньгами или временем. По моим прикидкам, вероятность (мелких) ошибок — 100%.';

  @override
  String get vaIntro =>
      'То, как используются технологии, не могут решать те, кто их создает.';

  @override
  String get vaTheBad =>
      'И это может быть хорошо, плохо или что-то посередине.\nДавайте уделим минутку и обсудим плохое: мошеннические приложения.';

  @override
  String get vaScamRisk =>
      ' значительно снижает сложность создания готовых к продакшену приложений. В сочетании с ИИ-инструментами для написания кода мошенникам стало проще, чем когда-либо, создавать приложения, которые выглядят и ощущаются легитимными.\nЧтобы помочь в борьбе с этим, мы будем вести список проверенных приложений.';

  @override
  String get vaCheckIn =>
      'Если вы видите приложение, использующее наш интерфейс, сначала проверьте его здесь. Если оно не проверено, наш совет: не скачивайте его.\nПомимо этого, это не список рекомендаций. Единственное требование для попадания в этот список — не быть мошенником.\nРазобравшись с этим, известная UI-вселенная содержит...';

  @override
  String get vaFirst => 'Официальные';

  @override
  String get vaThird => 'Проверенные сторонние';

  @override
  String get vaWaiting => 'В ожидании';

  @override
  String get vaWillYou => 'Будете ли вы первыми?';

  @override
  String get vaKnown => 'Известные мошенники';

  @override
  String get vaSoGood => 'Пока все хорошо!\nПожалуйста, не будьте первыми :)';

  @override
  String get vaPublished =>
      'Если вы опубликовали приложение с использованием EFUI, отправьте нам ';

  @override
  String get vaDoNoHarm =>
      '.\nНам не обязательно должно нравиться ваше приложение, и мы не проводим его публичный обзор.\nМы проверим код, и если он не причиняет вреда, приложение будет верифицировано.';

  @override
  String get vaPrivateFree =>
      'Если ваше приложение не является общедоступным, не волнуйтесь!\nНо если его могут скачать незнакомые вам люди, дайте нам знать, чтобы мы могли его проверить.';

  @override
  String get vaDoYourPart =>
      'Если мы не получили от вас весточки, мы будем считать ваш продукт мошенническим, пока не будет доказано обратное.\nЕсли вам кажется, что это жестко, подумайте еще раз. Open UI — это годы работы, которыми делятся совершенно бесплатно. Отправка письма — это меньшее, что вы можете сделать.';

  @override
  String get tsPageTitle => 'Команда';

  @override
  String get tsCore => 'Основной состав';

  @override
  String get tsTheFounderLabel => 'Двухмерный профиль Майкла Уолдрона.';

  @override
  String get tsTheFounderHint => 'Нажмите, чтобы отправить ему письмо.';

  @override
  String get tsTheFounder => 'Основатель';

  @override
  String get tsBoardMember => 'Член правления';

  @override
  String get tsYou => 'Вы?';

  @override
  String get tsMirrorLabel => 'Черный круг с мерцанием, имитирующий зеркало.';

  @override
  String get tsMirrorTip => 'Нажмите, чтобы отправить нам письмо';

  @override
  String get tsMirrorHint => 'Спросить о присоединении к команде.';

  @override
  String get tsNonProfit =>
      'Единственное, что мешает Empathetech стать полноценной некоммерческой организацией — это количество сотрудников.\nЕсли вы верите в изложенную мной миссию и у вас есть пара свободных часов в неделю, пожалуйста, свяжитесь со мной!\n\nДля начала работа будет полностью волонтерской. Мне тоже (пока) не платят.\nНо я бы не занимался этим, если бы у меня не было хорошего плана и на этот счет.\n\nПриглашаются все желающие, но особенно нужны люди с опытом в:\nSMM, фандрайзинге и написании грантов.';

  @override
  String get tsWild => 'В реальном мире';

  @override
  String get ts2025BoothLabel => 'Стенд Empathetech на Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Нажмите, чтобы открыть страницу выставок Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) прошел на ура!\nБыло трудно возвращаться к обычной жизни после того, как меня окружало столько добрых, целеустремленных, умных и творческих людей.\nЕще раз спасибо, если вы заглянули на стенд Empathetech, и до встречи в следующем году!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) прошел на ура!\nБыло трудно возвращаться к обычной жизни после того, как меня окружало столько добрых, целеустремленных, умных и творческих людей.\nЕще раз спасибо, если вы заглянули на стенд Empathetic, и до встречи в следующем году!';

  @override
  String get tsCommunity => 'Сообщество';

  @override
  String get tsFreelance => 'Фриланс';

  @override
  String get tsVideoProduction => 'Производство видео';

  @override
  String get tsTranslators => 'Переводчики';

  @override
  String tsProfile(Object name) {
    return 'Профиль $name';
  }

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
  String get fahTeamHint =>
      'Открыть страницу команды Empathetic на Folding at Home';

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
      'Каждый бит, который вы отдаете Empathetech, забирает байт у ИТ-гигантов.';

  @override
  String get csEveryBitFix =>
      'Каждый бит, который вы отдаете Empathetic, забирает байт у ИТ-гигантов.';

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
    return 'Открыть ссылку на $page Empathetic';
  }

  @override
  String get csPower => 'Вычислительная мощность';

  @override
  String get csThanks => 'Огромное спасибо за любую поддержку!';
}
