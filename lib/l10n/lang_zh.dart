// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class LangZh extends Lang {
  LangZh([String locale = 'zh']) : super(locale);

  @override
  String get gEmpathLogoLabel => '一个二维的沙漏。';

  @override
  String get gEmpathLogoHint => '激活以返回首页。';

  @override
  String gLearn(Object name) {
    return '了解关于 $name 的信息';
  }

  @override
  String get gHomeHint => '打开首页';

  @override
  String get gProductsHint => '打开产品页';

  @override
  String get gMissionHint => '打开使命页';

  @override
  String get gTeamHint => '打开团队页';

  @override
  String get gContributeHint => '打开贡献页';

  @override
  String get gShare => '分享';

  @override
  String get gEmail => '电子邮件';

  @override
  String gEmailTo(Object recipient) {
    return '发邮件给 $recipient';
  }

  @override
  String get gAnEmail => '一封电子邮件';

  @override
  String get gEmailHint => '打开您的电子邮件客户端';

  @override
  String get gNewsletter => '新闻简报';

  @override
  String gLogoLabel(Object thing) {
    return '$thing 徽标：';
  }

  @override
  String gIconLabel(Object app) {
    return '$app 的图标：';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return '下载适用于 $platform 的 $app。';
  }

  @override
  String get gRepoHint => '打开开发代码库的链接。';

  @override
  String get gEmpathetechGitHint => '打开 Empathetic LLC 的 GitHub 页面';

  @override
  String gImageCredit(Object creator) {
    return '图片来源：$creator';
  }

  @override
  String get gReachOut => '联系我们';

  @override
  String gFiverrPage(Object user) {
    return '打开 $user 的 Fiverr 页面';
  }

  @override
  String get gDontChaWish => '你不希望你的前端也有趣得';

  @override
  String get gMeQ => '像我一样？';

  @override
  String get gDontCha => '不想吗？';

  @override
  String get gDontChaHint => '打开此屏幕源代码的 GitHub 页面';

  @override
  String get hsSlogan => '让我们一起构建更美好的世界\nbit x bit';

  @override
  String get hsSloganFix => '让我们一起构建更美好的世界\n一点一滴 (bit by bit)';

  @override
  String get hsVideoLabel => 'Empathetic LLC 动画徽标：Empathetic 中的字母转变为二维沙漏徽标';

  @override
  String get hsPeople => '人不是产品。';

  @override
  String get hsWell => '嗯，他们不应该是。';

  @override
  String get hsReality => '不幸的现实是，我们的身份、我们的';

  @override
  String get hsData => '数据';

  @override
  String get hsGold => '，正是大型科技公司最新的淘金热。';

  @override
  String get hsRush => '而大型科技公司确实喜欢狂奔。\n多亏了他们永无止境的冲刺，反乌托邦的科幻电影正以过快的速度成为现实。';

  @override
  String get hsSlow => '是时候放慢脚步了。\n是时候让我们拥有自己的数字自我了。\n是时候制定一个更好的';

  @override
  String get hsPlan => '计划。';

  @override
  String get msPageTitle => '使命';

  @override
  String get msSoWe => '所以我们';

  @override
  String get msBy => '通过';

  @override
  String get msFirst => '首先通过';

  @override
  String get msIDProblem => '发现问题';

  @override
  String get msIDProblemContent =>
      '利润至上的商业模式是不可持续的。\n\n根据定义：如果利润放在首位，那么诸如为使命而努力、善待员工以及负责任地消耗资源等事情，都会变成事后才考虑的问题。\n\n而这种贪婪在大型科技公司中已经到了不受控制的地步。科技巨头们对我们的金钱已经感到不满足，他们正在构建针对我们身份并垄断我们思想的产品。';

  @override
  String get msFindSolution => '寻找解决方案';

  @override
  String get msFindSolutionContent =>
      '幸运的是，世界各地都有出色的技术人员在一起合作，努力谱写一个更好的叙事。\n在这个叙事中，服务提供商和客户之间拥有一种积极、健康且互惠互利的关系。\n\n这就是开源社区。\n\n本质上，开源软件对任何人都是免费开放查看的。许多项目也可以自由修改和重新分发。\n这是一款没有什么可隐藏的软件，由那些认识到共同的问题需要共同的解决方案的人们构建。\n\n在开源软件的美妙世界里，还有一个子类别：自托管软件。\n\n自托管使我们能够利用任何闲置的计算机（包括口袋大小的计算机）并在那里存储我们的数据。\n通过自托管，我们可以控制我们自己的数字存在，而不是将控制权签给某个由缺乏同理心的公司所拥有的遥远服务器。\n\n几乎所有的东西都有自托管的版本！从 Adobe 到 Zoom，充满激情的黑客行动主义者正在构建将人置于利润之上的替代方案。\n\n那么，如何从利润至上/闭源转变为开源呢？如何开始自托管？\n这需要花费大量的时间、精力以及预备知识。\n\n这就是我们要解决的问题。';

  @override
  String get msProvideValue => '付诸行动';

  @override
  String get msProvideValueContent1 =>
      'Empathetech 的使命是通过让自托管变得更加平易近人，来重新平衡科技界的权力。\n\n我们将构建能让任何人拥有自己数字身份的应用程序。\n我们将在开源社区与那些没有所需时间、精力或预备知识的人之间搭建桥梁。\n\n没有坚实的基础，你无法建造桥梁（或应用程序）！这就是为什么 ';

  @override
  String get msProvideValueContent1Fix =>
      'Empathetic 的使命是通过让自托管变得更加平易近人，来重新平衡科技界的权力。\n\n我们将构建能让任何人拥有自己数字身份的应用程序。\n我们将在开源社区与那些没有所需时间、精力或预备知识的人之间搭建桥梁。\n\n没有坚实的基础，你无法建造桥梁（或应用程序）！这就是为什么 ';

  @override
  String get msProvideValueContent2 =>
      ' 存在的原因。\nEmpathetech 为能够言出必行而自豪，并已将我们无障碍的用户界面 (UI) 开源。\n\n让我们一点一滴，共同构建一个更美好的世界。';

  @override
  String get msProvideValueContent2Fix =>
      ' 存在的原因。\nEmpathetic 为能够言出必行而自豪，并已将我们无障碍的用户界面 (UI) 开源。\n\n让我们一点一滴，共同构建一个更美好的世界。';

  @override
  String get psPageTitle => '产品';

  @override
  String get psTitleHint => '显示列表';

  @override
  String get psShowDemo => '显示演示';

  @override
  String get psHideDemo => '隐藏演示';

  @override
  String get psShowPromo => '显示宣传片';

  @override
  String get psHidePromo => '隐藏宣传片';

  @override
  String get psLearnMore => ' 了解更多。';

  @override
  String get psDownloadNow => '立即下载';

  @override
  String get psComingSoon => '敬请期待...';

  @override
  String get ouSlogan => '为所有人构建应用';

  @override
  String get ouLike => '比如需要...的用户';

  @override
  String get ouAccessible => '无障碍控件';

  @override
  String get ouZeroStrain => '零眼睛疲劳';

  @override
  String get ouEverything => '两者之间的一切';

  @override
  String get ouRandom => '已应用随机配置。';

  @override
  String get ouIs => 'Open UI 是一个应用生成器。';

  @override
  String get ouDemo => 'Open UI 创建新应用的演示。';

  @override
  String get ouFoundation => '它只需一键即可为无障碍、跨平台、多语言、生产就绪的应用程序奠定基础。';

  @override
  String get ouLocal => '一切都在您的计算机上运行。没有凭据、信用卡或 cookie。';

  @override
  String get ouRequirements => '唯一的要求是互联网连接和一个想法。';

  @override
  String get ouFlutterToo => '...还有 Flutter...';

  @override
  String get ouHow => '它是如何工作的？';

  @override
  String get ouEFUIsHow => 'Open UI 建立在以下基础上，并让您从此处开始：';

  @override
  String get ouSimplifies => 'EFUI 是一个用于构建真正无障碍应用程序的库。它简化了...';

  @override
  String get ouPlatform => '平台可用性';

  @override
  String get ouPlatformContent =>
      '您可以使用 EFUI 在 Android、iOS、Linux、macOS、Windows 和 Web 上进行创建！';

  @override
  String get ouResponsive => '响应式设计';

  @override
  String get ouResponsiveContent => '要查看它的实际效果，请调整您现在正在使用的窗口即可！';

  @override
  String get ouScreen => '屏幕阅读器支持';

  @override
  String get ouScreenContent => 'Empathetech 应用程序支持需要 ';

  @override
  String get ouScreenContentFix => 'Empathetic 应用程序支持需要 ';

  @override
  String get ouTalkBackHint => '打开 TalkBack 文档的链接';

  @override
  String get ouAnd => ' 和 ';

  @override
  String get ouVoiceOverHint => '打开 VoiceOver 文档的链接';

  @override
  String get ouCustom => '用户自定义';

  @override
  String get ouCustomContent =>
      '对所有客户真正做到无障碍的唯一途径，就是赋予他们选择的自由！\nEFUI 提供优雅的 UX (用户体验)，让用户完全控制应用的外观。';

  @override
  String get ouInternational => '国际化';

  @override
  String get ouInternationalContent =>
      'Empathetech 应用程序已被翻译成 14 种语言（截至目前）。\nEFUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouInternationalContentFix =>
      'Empathetic 应用程序已被翻译成 14 种语言（截至目前）。\nEFUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouReliability => '可靠性';

  @override
  String get ouReliabilityContent =>
      'Empathetech 软件经久耐用。这不是 AI 生成的代码。\nEmpathetech 程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic 软件经久耐用。这不是 AI 生成的代码。\nEmpathetic 程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouGetStarted => '开始使用';

  @override
  String get ouOpenUIIconLabel => '一个设置沙盒。';

  @override
  String get ouEFUITagLine => '当使用 EFUI 构建时，您的应用程序可以真正触达任何受众！\n';

  @override
  String get sosPromoLabel => 'Insta SOS 的宣传视频。';

  @override
  String get sosDescription => '将相机、SOS 信标和您的权利清单集于一处。\n它提供14种语言版本，并支持屏幕阅读器。';

  @override
  String get sosPrivate => 'InstaSOS 没有帐户、cookie 或广告。\n';

  @override
  String get sosPrivateFix => 'Insta-SOS 没有帐户、cookie 或广告。\n';

  @override
  String get sosFree => '它是完全免费的，并且代码是';

  @override
  String get sosOpenSource => '开源的';

  @override
  String get sosConsider => '请考虑';

  @override
  String get sosContributing => '捐赠贡献';

  @override
  String get sosSAPS => ' 以支持作为公共服务的软件。';

  @override
  String get sosIconLabel => '一个色彩醒目的通知铃声图标。';

  @override
  String get sosWeb =>
      '一种具体的、具有巨大影响力的贡献方式，是为 InstaSOS 在线托管买单。\n\n应用商店所有者已经表明了他们的立场，如果/当 InstaSOS 获得关注时，它可能会被移除。\nAndroid 用户将始终可以选择自行安装，但 iOS 用户唯一可行的替代方案将是 Web 应用程序。\n\n值得庆幸的是，Flutter 应用程序是客户端计算，所以账单会很低。\n我们 (你) 只需要支付流量管理费用。';

  @override
  String get llDescription => '一款 Empathetech Android 启动器。';

  @override
  String get llDescriptionFix => '一款 Empathetic Android 启动器。';

  @override
  String get llInDev =>
      'Liminal 正在开发中。\n它的设计倾向于极简主义，因为我们的手机应该是供我们使用的工具，而不是反过来。';

  @override
  String get llBut => '但是，它是一个极简主义的启动器，由 ';

  @override
  String get llWhimsy => ' 构建。\n因此，您的主屏幕将免受混乱和干扰，并且可以无限制地自定义。还能带点奇思妙想。';

  @override
  String get llTheHood => '一张以波特兰胡德山 (Mount Hood) 为背景的示例主屏幕。';

  @override
  String get llLasRosas => '一张以波特兰玫瑰园为背景的示例主屏幕。';

  @override
  String get llFrogAndPigs => '一张以波特兰野生动物为背景的示例主屏幕。';

  @override
  String get llModel =>
      'Liminal 将在“按能力付费”的模式下发布。\nGoogle Play 版本将是付费的，因为 (好的) 代码不会自己编写。\nGitHub 代码库也将有一个免费提供的 APK，因为与技术保持健康的关系不应该只是那些有闲钱的人的专属。';

  @override
  String get ssPreview1 => '另一款 Empathetech 应用程序，';

  @override
  String get ssPreview1Fix => '另一款 Empathetic 应用程序，';

  @override
  String get ssPreview2 => '，正在开发中。\nSmoke Signal 是一款旨在让我们远离屏幕的社交网络应用程序。';

  @override
  String get ssPreview3 => 'Smoke Signal 也将完全支持自托管，这要归功于 ';

  @override
  String get ssAPHint => '打开 Activity Pub 文档的链接';

  @override
  String get trWonder => '如果您好奇一个人的团队如何支持 14 种语言：负责任地使用大语言模型（LLM）。\n流程如下...';

  @override
  String get trFirst => '1. 最终确定并整理（美式）英文 ';

  @override
  String get trSource => '原文';

  @override
  String get trSecond => '2. 礼貌地请求 ';

  @override
  String get trBeNice => ' 帮忙翻译这些词条。\n每个线程只处理一种语言，以免上下文爆炸。';

  @override
  String get trThird => '3. 审核结果，使用 ';

  @override
  String get trScript => '此脚本';

  @override
  String get trReverse => '它逐条反向翻译所有语言。我会阅读每一个结果，并标记出失去原意的词条。';

  @override
  String get trFourth => '4. 使用 Google 翻译（停用 Gemini）逐个修复翻译失败的地方。和/或...';

  @override
  String get trFifth => '5. 将重要的部分交由专业人士处理。\n例如，在 ';

  @override
  String get trBy => ' 中的权利（rvX 词条）的翻译者为 ';

  @override
  String get trHumans => '人工';

  @override
  String get trProcess =>
      '这是一个不完美的流程，但比单纯让 LLM 自动跑一遍要费力得多。\n而且老实说，这也是我（目前）所能负担得起的极限。';

  @override
  String get trSpeaking => '说到这个，请考虑 ';

  @override
  String get trEither => '。\n出钱或出力都可以。我敢说里面 100% 会存在（小）错误。';

  @override
  String get vaIntro => '技术的使用方式不能由创造它的人来决定。';

  @override
  String get vaTheBad =>
      '这可能是一件好事，也可能是一件坏事，或者是介于两者之间的事情。\n让我们花点时间来讨论一下坏处：诈骗应用程序。';

  @override
  String get vaScamRisk =>
      ' 极大地降低了构建生产就绪应用程序的难度。结合 AI 编码工具，诈骗者比以往任何时候都更容易创建看起来和用起来都很合法的应用程序。\n为了帮助打击这种情况，我们将维护一个经过验证的应用程序列表。';

  @override
  String get vaCheckIn =>
      '如果您看到使用我们 UI 的应用程序，请先在此处查看。如果未经验证，我们的建议是：不要下载它。\n除此之外，这不是一个推荐列表。在这个列表上的唯一要求，就是不能是诈骗。\n讲完这些，已知的 UI 宇宙 (UIniverse) 包含...';

  @override
  String get vaFirst => '第一方';

  @override
  String get vaThird => '第三方验证';

  @override
  String get vaWaiting => '等待中';

  @override
  String get vaWillYou => '你会成为第一个吗？';

  @override
  String get vaKnown => '已知诈骗';

  @override
  String get vaSoGood => '目前为止，一切都好！\n请不要成为第一个 :)';

  @override
  String get vaPublished => '如果您使用 EFUI 发布了应用程序，请发送给我们 ';

  @override
  String get vaDoNoHarm =>
      '。\n我们不必非得喜欢这款应用，也不会对其进行公开审查。\n我们将检查代码，只要它不会造成损害，就会被验证。';

  @override
  String get vaPrivateFree =>
      '如果您的应用程序未公开提供，请不要担心！\n但是，如果您不认识的人可以下载它，请告诉我们，以便我们验证它。';

  @override
  String get vaDoYourPart =>
      '如果我们没有收到您的消息，除非另有证明，否则我们将假定您的产品是骗局。\n如果您认为这太激烈了，请再想一想。Open UI 是经过多年的努力工作并免费分享的。发一封电子邮件是您最起码能做的事。';

  @override
  String get tsPageTitle => '团队';

  @override
  String get tsCore => '核心';

  @override
  String get tsTheFounderLabel => 'Michael Waldron 的二维个人资料照片。';

  @override
  String get tsTheFounderHint => '激活以向他发送电子邮件。';

  @override
  String get tsTheFounder => '创始人';

  @override
  String get tsBoardMember => '董事会成员';

  @override
  String get tsYou => '你？';

  @override
  String get tsMirrorLabel => '一个闪烁着微光的黑色圆圈，模仿一面镜子。';

  @override
  String get tsMirrorTip => '激活以向我们发送电子邮件';

  @override
  String get tsMirrorHint => '询问加入团队的事宜。';

  @override
  String get tsNonProfit =>
      '阻碍 Empathetech 成为一个真正非营利组织的唯一因素是人数。\n如果您认同我阐述的使命，并且每周有几个小时的空闲时间，请联系我们！\n\n刚开始它将完全是志愿性质的。我也 (还) 没有获得报酬。\n但是，如果我对此没有一个好的计划，我也不会这样做。\n\n鼓励所有感兴趣的人联系我们，但我们特别需要具有以下经验的人才：\n社交媒体管理、筹款和拨款申请写作。';

  @override
  String get tsWild => '实地活动';

  @override
  String get ts2025BoothLabel => 'Open Sauce 2025 的 Empathetech 展位。';

  @override
  String get ts2025BoothHint => '激活以打开 Open Sauce 展览页面。';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) 真的太棒了！\n在被这么多善良、有干劲、聪明和富有创造力的人包围之后，很难再回到正常的生活。\n如果你曾光临 Empathetech 展位，再次表示感谢，让我们为明年干杯！';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) 真的太棒了！\n在被这么多善良、有干劲、聪明和富有创造力的人包围之后，很难再回到正常的生活。\n如果你曾光临 Empathetic 展位，再次表示感谢，让我们为明年干杯！';

  @override
  String get tsCommunity => '社区';

  @override
  String get tsFreelance => '自由职业者';

  @override
  String get tsVideoProduction => '视频制作';

  @override
  String get tsTranslators => '翻译人员';

  @override
  String tsProfile(Object name) {
    return '$name 的个人资料';
  }

  @override
  String get fahJoin => '加入行列';

  @override
  String get fahIconLabel => '一个蛋白质分子。';

  @override
  String get fahIconHint => '激活以打开他们的网站。';

  @override
  String get fahIntro1 => '加入 ';

  @override
  String get fahIntro2 => ' Folding@home 团队！';

  @override
  String get fahTeamHint => '打开 Empathetic folding at home 团队页面';

  @override
  String get fahWhats => '什么是 ';

  @override
  String get fahName => 'Folding@home？';

  @override
  String get fahNameHint => '打开 Folding at Home 的关于页面';

  @override
  String get fahStats => '我们一起获得了超过 4 亿积分。\n这使我们在全球所有团队中跻身前 2%！';

  @override
  String get csPageTitle => '贡献';

  @override
  String get csEveryBit =>
      '您给予 Empathetech 的每一个 bit 贡献，都在从大型科技公司那里夺走一个 byte 的垄断。';

  @override
  String get csEveryBitFix =>
      '您给予 Empathetic 的每一个 bit 贡献，都在从大型科技公司那里夺走一个 byte 的垄断。';

  @override
  String get csTime => '时间';

  @override
  String get csBecome => ' 关于成为一名 ';

  @override
  String get csGit => 'GitHub 贡献者';

  @override
  String get csMoney => '金钱';

  @override
  String csOpenLink(Object page) {
    return '打开 Empathetic $page 的链接';
  }

  @override
  String get csPower => '算力';

  @override
  String get csThanks => '非常感谢您提供的一切支持！';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class LangZhCn extends LangZh {
  LangZhCn() : super('zh_CN');

  @override
  String get gEmpathLogoLabel => '一个二维的沙漏。';

  @override
  String get gEmpathLogoHint => '激活以返回首页。';

  @override
  String gLearn(Object name) {
    return '了解关于 $name 的信息';
  }

  @override
  String get gHomeHint => '打开首页';

  @override
  String get gProductsHint => '打开产品页';

  @override
  String get gMissionHint => '打开使命页';

  @override
  String get gTeamHint => '打开团队页';

  @override
  String get gContributeHint => '打开贡献页';

  @override
  String get gShare => '分享';

  @override
  String get gEmail => '电子邮件';

  @override
  String gEmailTo(Object recipient) {
    return '发邮件给 $recipient';
  }

  @override
  String get gAnEmail => '一封电子邮件';

  @override
  String get gEmailHint => '打开您的电子邮件客户端';

  @override
  String get gNewsletter => '新闻简报';

  @override
  String gLogoLabel(Object thing) {
    return '$thing 徽标：';
  }

  @override
  String gIconLabel(Object app) {
    return '$app 的图标：';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return '下载适用于 $platform 的 $app。';
  }

  @override
  String get gRepoHint => '打开开发代码库的链接。';

  @override
  String get gEmpathetechGitHint => '打开 Empathetic LLC 的 GitHub 页面';

  @override
  String gImageCredit(Object creator) {
    return '图片来源：$creator';
  }

  @override
  String get gReachOut => '联系我们';

  @override
  String gFiverrPage(Object user) {
    return '打开 $user 的 Fiverr 页面';
  }

  @override
  String get gDontChaWish => '你不希望你的前端也有趣得';

  @override
  String get gMeQ => '像我一样？';

  @override
  String get gDontCha => '不想吗？';

  @override
  String get gDontChaHint => '打开此屏幕源代码的 GitHub 页面';

  @override
  String get hsSlogan => '让我们一起构建更美好的世界\nbit x bit';

  @override
  String get hsSloganFix => '让我们一起构建更美好的世界\n一点一滴 (bit by bit)';

  @override
  String get hsVideoLabel => 'Empathetic LLC 动画徽标：Empathetic 中的字母转变为二维沙漏徽标';

  @override
  String get hsPeople => '人不是产品。';

  @override
  String get hsWell => '嗯，他们不应该是。';

  @override
  String get hsReality => '不幸的现实是，我们的身份、我们的';

  @override
  String get hsData => '数据';

  @override
  String get hsGold => '，正是大型科技公司最新的淘金热。';

  @override
  String get hsRush => '而大型科技公司确实喜欢狂奔。\n多亏了他们永无止境的冲刺，反乌托邦的科幻电影正以过快的速度成为现实。';

  @override
  String get hsSlow => '是时候放慢脚步了。\n是时候让我们拥有自己的数字自我了。\n是时候制定一个更好的';

  @override
  String get hsPlan => '计划。';

  @override
  String get msPageTitle => '使命';

  @override
  String get msSoWe => '所以我们';

  @override
  String get msBy => '通过';

  @override
  String get msFirst => '首先通过';

  @override
  String get msIDProblem => '发现问题';

  @override
  String get msIDProblemContent =>
      '利润至上的商业模式是不可持续的。\n\n根据定义：如果利润放在首位，那么诸如为使命而努力、善待员工以及负责任地消耗资源等事情，都会变成事后才考虑的问题。\n\n而这种贪婪在大型科技公司中已经到了不受控制的地步。科技巨头们对我们的金钱已经感到不满足，他们正在构建针对我们身份并垄断我们思想的产品。';

  @override
  String get msFindSolution => '寻找解决方案';

  @override
  String get msFindSolutionContent =>
      '幸运的是，世界各地都有出色的技术人员在一起合作，努力谱写一个更好的叙事。\n在这个叙事中，服务提供商和客户之间拥有一种积极、健康且互惠互利的关系。\n\n这就是开源社区。\n\n本质上，开源软件对任何人都是免费开放查看的。许多项目也可以自由修改和重新分发。\n这是一款没有什么可隐藏的软件，由那些认识到共同的问题需要共同的解决方案的人们构建。\n\n在开源软件的美妙世界里，还有一个子类别：自托管软件。\n\n自托管使我们能够利用任何闲置的计算机（包括口袋大小的计算机）并在那里存储我们的数据。\n通过自托管，我们可以控制我们自己的数字存在，而不是将控制权签给某个由缺乏同理心的公司所拥有的遥远服务器。\n\n几乎所有的东西都有自托管的版本！从 Adobe 到 Zoom，充满激情的黑客行动主义者正在构建将人置于利润之上的替代方案。\n\n那么，如何从利润至上/闭源转变为开源呢？如何开始自托管？\n这需要花费大量的时间、精力以及预备知识。\n\n这就是我们要解决的问题。';

  @override
  String get msProvideValue => '付诸行动';

  @override
  String get msProvideValueContent1 =>
      'Empathetech 的使命是通过让自托管变得更加平易近人，来重新平衡科技界的权力。\n\n我们将构建能让任何人拥有自己数字身份的应用程序。\n我们将在开源社区与那些没有所需时间、精力或预备知识的人之间搭建桥梁。\n\n没有坚实的基础，你无法建造桥梁（或应用程序）！这就是为什么 ';

  @override
  String get msProvideValueContent1Fix =>
      'Empathetic 的使命是通过让自托管变得更加平易近人，来重新平衡科技界的权力。\n\n我们将构建能让任何人拥有自己数字身份的应用程序。\n我们将在开源社区与那些没有所需时间、精力或预备知识的人之间搭建桥梁。\n\n没有坚实的基础，你无法建造桥梁（或应用程序）！这就是为什么 ';

  @override
  String get msProvideValueContent2 =>
      ' 存在的原因。\nEmpathetech 为能够言出必行而自豪，并已将我们无障碍的用户界面 (UI) 开源。\n\n让我们一点一滴，共同构建一个更美好的世界。';

  @override
  String get msProvideValueContent2Fix =>
      ' 存在的原因。\nEmpathetic 为能够言出必行而自豪，并已将我们无障碍的用户界面 (UI) 开源。\n\n让我们一点一滴，共同构建一个更美好的世界。';

  @override
  String get psPageTitle => '产品';

  @override
  String get psTitleHint => '显示列表';

  @override
  String get psShowDemo => '显示演示';

  @override
  String get psHideDemo => '隐藏演示';

  @override
  String get psShowPromo => '显示宣传片';

  @override
  String get psHidePromo => '隐藏宣传片';

  @override
  String get psLearnMore => ' 了解更多。';

  @override
  String get psDownloadNow => '立即下载';

  @override
  String get psComingSoon => '敬请期待...';

  @override
  String get ouSlogan => '为所有人构建应用';

  @override
  String get ouLike => '比如需要...的用户';

  @override
  String get ouAccessible => '无障碍控件';

  @override
  String get ouZeroStrain => '零眼睛疲劳';

  @override
  String get ouEverything => '两者之间的一切';

  @override
  String get ouRandom => '已应用随机配置。';

  @override
  String get ouIs => 'Open UI 是一个应用生成器。';

  @override
  String get ouDemo => 'Open UI 创建新应用的演示。';

  @override
  String get ouFoundation => '它只需一键即可为无障碍、跨平台、多语言、生产就绪的应用程序奠定基础。';

  @override
  String get ouLocal => '一切都在您的计算机上运行。没有凭据、信用卡或 cookie。';

  @override
  String get ouRequirements => '唯一的要求是互联网连接和一个想法。';

  @override
  String get ouFlutterToo => '...还有 Flutter...';

  @override
  String get ouHow => '它是如何工作的？';

  @override
  String get ouEFUIsHow => 'Open UI 建立在以下基础上，并让您从此处开始：';

  @override
  String get ouSimplifies => 'EFUI 是一个用于构建真正无障碍应用程序的库。它简化了...';

  @override
  String get ouPlatform => '平台可用性';

  @override
  String get ouPlatformContent =>
      '您可以使用 EFUI 在 Android、iOS、Linux、macOS、Windows 和 Web 上进行创建！';

  @override
  String get ouResponsive => '响应式设计';

  @override
  String get ouResponsiveContent => '要查看它的实际效果，请调整您现在正在使用的窗口即可！';

  @override
  String get ouScreen => '屏幕阅读器支持';

  @override
  String get ouScreenContent => 'Empathetech 应用程序支持需要 ';

  @override
  String get ouScreenContentFix => 'Empathetic 应用程序支持需要 ';

  @override
  String get ouTalkBackHint => '打开 TalkBack 文档的链接';

  @override
  String get ouAnd => ' 和 ';

  @override
  String get ouVoiceOverHint => '打开 VoiceOver 文档的链接';

  @override
  String get ouCustom => '用户自定义';

  @override
  String get ouCustomContent =>
      '对所有客户真正做到无障碍的唯一途径，就是赋予他们选择的自由！\nEFUI 提供优雅的 UX (用户体验)，让用户完全控制应用的外观。';

  @override
  String get ouInternational => '国际化';

  @override
  String get ouInternationalContent =>
      'Empathetech 应用程序已被翻译成 14 种语言（截至目前）。\nEFUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouInternationalContentFix =>
      'Empathetic 应用程序已被翻译成 14 种语言（截至目前）。\nEFUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouReliability => '可靠性';

  @override
  String get ouReliabilityContent =>
      'Empathetech 软件经久耐用。这不是 AI 生成的代码。\nEmpathetech 程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic 软件经久耐用。这不是 AI 生成的代码。\nEmpathetic 程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouGetStarted => '开始使用';

  @override
  String get ouOpenUIIconLabel => '一个设置沙盒。';

  @override
  String get ouEFUITagLine => '当使用 EFUI 构建时，您的应用程序可以真正触达任何受众！\n';

  @override
  String get sosPromoLabel => 'Insta SOS 的宣传视频。';

  @override
  String get sosDescription => '将相机、SOS 信标和您的权利清单集于一处。\n它提供14种语言版本，并支持屏幕阅读器。';

  @override
  String get sosPrivate => 'InstaSOS 没有帐户、cookie 或广告。\n';

  @override
  String get sosPrivateFix => 'Insta-SOS 没有帐户、cookie 或广告。\n';

  @override
  String get sosFree => '它是完全免费的，并且代码是';

  @override
  String get sosOpenSource => '开源的';

  @override
  String get sosConsider => '请考虑';

  @override
  String get sosContributing => '捐赠贡献';

  @override
  String get sosSAPS => ' 以支持作为公共服务的软件。';

  @override
  String get sosIconLabel => '一个色彩醒目的通知铃声图标。';

  @override
  String get sosWeb =>
      '一种具体的、具有巨大影响力的贡献方式，是为 InstaSOS 在线托管买单。\n\n应用商店所有者已经表明了他们的立场，如果/当 InstaSOS 获得关注时，它可能会被移除。\nAndroid 用户将始终可以选择自行安装，但 iOS 用户唯一可行的替代方案将是 Web 应用程序。\n\n值得庆幸的是，Flutter 应用程序是客户端计算，所以账单会很低。\n我们 (你) 只需要支付流量管理费用。';

  @override
  String get llDescription => '一款 Empathetech Android 启动器。';

  @override
  String get llDescriptionFix => '一款 Empathetic Android 启动器。';

  @override
  String get llInDev =>
      'Liminal 正在开发中。\n它的设计倾向于极简主义，因为我们的手机应该是供我们使用的工具，而不是反过来。';

  @override
  String get llBut => '但是，它是一个极简主义的启动器，由 ';

  @override
  String get llWhimsy => ' 构建。\n因此，您的主屏幕将免受混乱和干扰，并且可以无限制地自定义。还能带点奇思妙想。';

  @override
  String get llTheHood => '一张以波特兰胡德山 (Mount Hood) 为背景的示例主屏幕。';

  @override
  String get llLasRosas => '一张以波特兰玫瑰园为背景的示例主屏幕。';

  @override
  String get llFrogAndPigs => '一张以波特兰野生动物为背景的示例主屏幕。';

  @override
  String get llModel =>
      'Liminal 将在“按能力付费”的模式下发布。\nGoogle Play 版本将是付费的，因为 (好的) 代码不会自己编写。\nGitHub 代码库也将有一个免费提供的 APK，因为与技术保持健康的关系不应该只是那些有闲钱的人的专属。';

  @override
  String get ssPreview1 => '另一款 Empathetech 应用程序，';

  @override
  String get ssPreview1Fix => '另一款 Empathetic 应用程序，';

  @override
  String get ssPreview2 => '，正在开发中。\nSmoke Signal 是一款旨在让我们远离屏幕的社交网络应用程序。';

  @override
  String get ssPreview3 => 'Smoke Signal 也将完全支持自托管，这要归功于 ';

  @override
  String get ssAPHint => '打开 Activity Pub 文档的链接';

  @override
  String get trWonder => '如果您好奇一个人的团队如何支持 14 种语言：负责任地使用大语言模型（LLM）。\n流程如下...';

  @override
  String get trFirst => '1. 最终确定并整理（美式）英文 ';

  @override
  String get trSource => '原文';

  @override
  String get trSecond => '2. 礼貌地请求 ';

  @override
  String get trBeNice => ' 帮忙翻译这些词条。\n每个线程只处理一种语言，以免上下文爆炸。';

  @override
  String get trThird => '3. 审核结果，使用 ';

  @override
  String get trScript => '此脚本';

  @override
  String get trReverse => '它逐条反向翻译所有语言。我会阅读每一个结果，并标记出失去原意的词条。';

  @override
  String get trFourth => '4. 使用 Google 翻译（停用 Gemini）逐个修复翻译失败的地方。和/或...';

  @override
  String get trFifth => '5. 将重要的部分交由专业人士处理。\n例如，在 ';

  @override
  String get trBy => ' 中的权利（rvX 词条）的翻译者为 ';

  @override
  String get trHumans => '人工';

  @override
  String get trProcess =>
      '这是一个不完美的流程，但比单纯让 LLM 自动跑一遍要费力得多。\n而且老实说，这也是我（目前）所能负担得起的极限。';

  @override
  String get trSpeaking => '说到这个，请考虑 ';

  @override
  String get trEither => '。\n出钱或出力都可以。我敢说里面 100% 会存在（小）错误。';

  @override
  String get vaIntro => '技术的使用方式不能由创造它的人来决定。';

  @override
  String get vaTheBad =>
      '这可能是一件好事，也可能是一件坏事，或者是介于两者之间的事情。\n让我们花点时间来讨论一下坏处：诈骗应用程序。';

  @override
  String get vaScamRisk =>
      ' 极大地降低了构建生产就绪应用程序的难度。结合 AI 编码工具，诈骗者比以往任何时候都更容易创建看起来和用起来都很合法的应用程序。\n为了帮助打击这种情况，我们将维护一个经过验证的应用程序列表。';

  @override
  String get vaCheckIn =>
      '如果您看到使用我们 UI 的应用程序，请先在此处查看。如果未经验证，我们的建议是：不要下载它。\n除此之外，这不是一个推荐列表。在这个列表上的唯一要求，就是不能是诈骗。\n讲完这些，已知的 UI 宇宙 (UIniverse) 包含...';

  @override
  String get vaFirst => '第一方';

  @override
  String get vaThird => '第三方验证';

  @override
  String get vaWaiting => '等待中';

  @override
  String get vaWillYou => '你会成为第一个吗？';

  @override
  String get vaKnown => '已知诈骗';

  @override
  String get vaSoGood => '目前为止，一切都好！\n请不要成为第一个 :)';

  @override
  String get vaPublished => '如果您使用 EFUI 发布了应用程序，请发送给我们 ';

  @override
  String get vaDoNoHarm =>
      '。\n我们不必非得喜欢这款应用，也不会对其进行公开审查。\n我们将检查代码，只要它不会造成损害，就会被验证。';

  @override
  String get vaPrivateFree =>
      '如果您的应用程序未公开提供，请不要担心！\n但是，如果您不认识的人可以下载它，请告诉我们，以便我们验证它。';

  @override
  String get vaDoYourPart =>
      '如果我们没有收到您的消息，除非另有证明，否则我们将假定您的产品是骗局。\n如果您认为这太激烈了，请再想一想。Open UI 是经过多年的努力工作并免费分享的。发一封电子邮件是您最起码能做的事。';

  @override
  String get tsPageTitle => '团队';

  @override
  String get tsCore => '核心';

  @override
  String get tsTheFounderLabel => 'Michael Waldron 的二维个人资料照片。';

  @override
  String get tsTheFounderHint => '激活以向他发送电子邮件。';

  @override
  String get tsTheFounder => '创始人';

  @override
  String get tsBoardMember => '董事会成员';

  @override
  String get tsYou => '你？';

  @override
  String get tsMirrorLabel => '一个闪烁着微光的黑色圆圈，模仿一面镜子。';

  @override
  String get tsMirrorTip => '激活以向我们发送电子邮件';

  @override
  String get tsMirrorHint => '询问加入团队的事宜。';

  @override
  String get tsNonProfit =>
      '阻碍 Empathetech 成为一个真正非营利组织的唯一因素是人数。\n如果您认同我阐述的使命，并且每周有几个小时的空闲时间，请联系我们！\n\n刚开始它将完全是志愿性质的。我也 (还) 没有获得报酬。\n但是，如果我对此没有一个好的计划，我也不会这样做。\n\n鼓励所有感兴趣的人联系我们，但我们特别需要具有以下经验的人才：\n社交媒体管理、筹款和拨款申请写作。';

  @override
  String get tsWild => '实地活动';

  @override
  String get ts2025BoothLabel => 'Open Sauce 2025 的 Empathetech 展位。';

  @override
  String get ts2025BoothHint => '激活以打开 Open Sauce 展览页面。';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) 真的太棒了！\n在被这么多善良、有干劲、聪明和富有创造力的人包围之后，很难再回到正常的生活。\n如果你曾光临 Empathetech 展位，再次表示感谢，让我们为明年干杯！';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) 真的太棒了！\n在被这么多善良、有干劲、聪明和富有创造力的人包围之后，很难再回到正常的生活。\n如果你曾光临 Empathetic 展位，再次表示感谢，让我们为明年干杯！';

  @override
  String get tsCommunity => '社区';

  @override
  String get tsFreelance => '自由职业者';

  @override
  String get tsVideoProduction => '视频制作';

  @override
  String get tsTranslators => '翻译人员';

  @override
  String tsProfile(Object name) {
    return '$name 的个人资料';
  }

  @override
  String get fahJoin => '加入行列';

  @override
  String get fahIconLabel => '一个蛋白质分子。';

  @override
  String get fahIconHint => '激活以打开他们的网站。';

  @override
  String get fahIntro1 => '加入 ';

  @override
  String get fahIntro2 => ' Folding@home 团队！';

  @override
  String get fahTeamHint => '打开 Empathetic folding at home 团队页面';

  @override
  String get fahWhats => '什么是 ';

  @override
  String get fahName => 'Folding@home？';

  @override
  String get fahNameHint => '打开 Folding at Home 的关于页面';

  @override
  String get fahStats => '我们一起获得了超过 4 亿积分。\n这使我们在全球所有团队中跻身前 2%！';

  @override
  String get csPageTitle => '贡献';

  @override
  String get csEveryBit =>
      '您给予 Empathetech 的每一个 bit 贡献，都在从大型科技公司那里夺走一个 byte 的垄断。';

  @override
  String get csEveryBitFix =>
      '您给予 Empathetic 的每一个 bit 贡献，都在从大型科技公司那里夺走一个 byte 的垄断。';

  @override
  String get csTime => '时间';

  @override
  String get csBecome => ' 关于成为一名 ';

  @override
  String get csGit => 'GitHub 贡献者';

  @override
  String get csMoney => '金钱';

  @override
  String csOpenLink(Object page) {
    return '打开 Empathetic $page 的链接';
  }

  @override
  String get csPower => '算力';

  @override
  String get csThanks => '非常感谢您提供的一切支持！';
}
