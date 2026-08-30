// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class LangZh extends Lang {
  LangZh([String locale = 'zh']) : super(locale);

  @override
  String get gYWTLogoLabel => '一个二维的沙漏。';

  @override
  String get gYWTLogoHint => '激活以返回首页。';

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
  String get gYWTGitHint => '打开 YWT 的 GitHub 页面';

  @override
  String gImageCredit(Object creator) {
    return '图片来源：$creator';
  }

  @override
  String get gReachOut => '联系我们';

  @override
  String gProfile(Object name) {
    return '$name的个人资料';
  }

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
  String get hsAnimLabel => 'YWT 动画徽标：YWT 中的字母转变为二维沙漏徽标';

  @override
  String get hsChange => '是时候改变了';

  @override
  String get hsmIDProblem => '发现问题';

  @override
  String get hsmIDProblemContent =>
      '利润至上的商业模式是不可持续的。\n\n根据定义：如果利润放在首位，那么诸如为使命而努力、善待员工以及负责任地消耗资源等事情，都会变成事后才考虑的问题。\n\n而这种贪婪在大型科技公司中已经到了不受控制的地步。科技巨头们对我们的金钱已经感到不满足，他们正在构建针对我们身份并垄断我们思想的产品。';

  @override
  String get hsmSoWe => '所以我们';

  @override
  String get hsmFindSolution => '寻找解决方案';

  @override
  String get hsmFindSolutionContent =>
      '幸运的是，世界各地都有出色的技术人员在一起合作，努力谱写一个更好的叙事。\n在这个叙事中，服务提供商和客户之间拥有一种积极、健康且互惠互利的关系。\n\n这就是开源社区。\n\n本质上，开源软件对任何人都是免费开放查看的。许多项目也可以自由修改和重新分发。\n这是一款没有什么可隐藏的软件，由那些认识到共同的问题需要共同的解决方案的人们构建。\n\n在开源软件的美妙世界里，还有一个子类别：自托管软件。\n\n自托管使我们能够利用任何闲置的计算机（包括口袋大小的计算机）并在那里存储我们的数据。\n通过自托管，我们可以控制我们自己的数字存在，而不是将控制权签给某个由缺乏同理心的公司所拥有的遥远服务器。\n\n几乎所有的东西都有自托管的版本！从 Adobe 到 Zoom，充满激情的黑客行动主义者正在构建将人置于利润之上的替代方案。\n\n那么，如何从利润至上/闭源转变为开源呢？如何开始自托管？\n这需要花费大量的时间、精力以及预备知识。\n\n这就是我们要解决的问题。';

  @override
  String get hsmBy => '通过';

  @override
  String get hsmProvideValue => '付诸行动';

  @override
  String get hsmProvideValueContent1 =>
      'YWT 正致力于让自托管变得更平易近人，从而重新平衡科技生态。\n\n我们将开发能让任何人掌控自己数字身份的应用程序。\n我们将在开源社区与那些缺乏所需时间、精力或背景知识的人群之间搭建桥梁。\n\n如果没有坚实的基础，就无法搭建桥梁（或应用）！这就是为什么 ';

  @override
  String get hsmProvideValueContent2 =>
      ' 存在的原因。\n我们为能将承诺付诸实践而自豪，并且已经将我们易用的 UI 开源。\n\n让我们一点一滴，共同建设一个更美好的世界。';

  @override
  String get hsmFirst => '首先通过';

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
  String get ouPlatform => '平台可用性';

  @override
  String get ouPlatformContent =>
      '您可以使用 Open UI 在 Android、iOS、Linux、macOS、Windows 和 Web 上进行创建！';

  @override
  String get ouResponsive => '响应式设计';

  @override
  String get ouResponsiveContent => '要查看它的实际效果，请调整您现在正在使用的窗口即可！';

  @override
  String get ouScreen => '屏幕阅读器支持';

  @override
  String get ouScreenContent => 'OUI 应用程序支持需要 ';

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
      '对所有客户真正做到无障碍的唯一途径，就是赋予他们选择的自由！\nOpen UI 提供优雅的 UX (用户体验)，让用户完全控制应用的外观。';

  @override
  String get ouInternational => '国际化';

  @override
  String get ouInternationalContent =>
      'OUI 应用程序已被翻译成 14 种语言（截至目前）。\nOUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouReliability => '可靠性';

  @override
  String get ouReliabilityContent =>
      'YWT 软件经久耐用。这不是 AI 生成的代码。\n程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouGetStarted => '开始使用';

  @override
  String get ouIconLabel => '一个设置沙盒。';

  @override
  String get ouTagLine => '当使用 Open UI 构建时，您的应用程序可以真正触达任何受众！\n';

  @override
  String get sosPromoLabel => 'Insta SOS 的宣传视频。';

  @override
  String get sosDescription => '将相机、SOS 信标和您的权利清单集于一处。\n它提供14种语言版本，并支持屏幕阅读器。';

  @override
  String get sosPrivate => 'InstaSOS 没有帐户、cookie 或广告。\n';

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
  String get sosTranslators => '译者';

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
  String get fahTeamHint => '打开 YWT folding at home 团队页面';

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
  String get csEveryBit => '对我们而言，每一比特数据都与科技巨头仅有一字节之遥。';

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
    return '打开 YWT $page 的链接';
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
  String get gYWTLogoLabel => '一个二维的沙漏。';

  @override
  String get gYWTLogoHint => '激活以返回首页。';

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
  String get gYWTGitHint => '打开 YWT 的 GitHub 页面';

  @override
  String gImageCredit(Object creator) {
    return '图片来源：$creator';
  }

  @override
  String get gReachOut => '联系我们';

  @override
  String gProfile(Object name) {
    return '$name的个人资料';
  }

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
  String get hsAnimLabel => 'YWT 动画徽标：YWT 中的字母转变为二维沙漏徽标';

  @override
  String get hsChange => '是时候改变了';

  @override
  String get hsmIDProblem => '发现问题';

  @override
  String get hsmIDProblemContent =>
      '利润至上的商业模式是不可持续的。\n\n根据定义：如果利润放在首位，那么诸如为使命而努力、善待员工以及负责任地消耗资源等事情，都会变成事后才考虑的问题。\n\n而这种贪婪在大型科技公司中已经到了不受控制的地步。科技巨头们对我们的金钱已经感到不满足，他们正在构建针对我们身份并垄断我们思想的产品。';

  @override
  String get hsmSoWe => '所以我们';

  @override
  String get hsmFindSolution => '寻找解决方案';

  @override
  String get hsmFindSolutionContent =>
      '幸运的是，世界各地都有出色的技术人员在一起合作，努力谱写一个更好的叙事。\n在这个叙事中，服务提供商和客户之间拥有一种积极、健康且互惠互利的关系。\n\n这就是开源社区。\n\n本质上，开源软件对任何人都是免费开放查看的。许多项目也可以自由修改和重新分发。\n这是一款没有什么可隐藏的软件，由那些认识到共同的问题需要共同的解决方案的人们构建。\n\n在开源软件的美妙世界里，还有一个子类别：自托管软件。\n\n自托管使我们能够利用任何闲置的计算机（包括口袋大小的计算机）并在那里存储我们的数据。\n通过自托管，我们可以控制我们自己的数字存在，而不是将控制权签给某个由缺乏同理心的公司所拥有的遥远服务器。\n\n几乎所有的东西都有自托管的版本！从 Adobe 到 Zoom，充满激情的黑客行动主义者正在构建将人置于利润之上的替代方案。\n\n那么，如何从利润至上/闭源转变为开源呢？如何开始自托管？\n这需要花费大量的时间、精力以及预备知识。\n\n这就是我们要解决的问题。';

  @override
  String get hsmBy => '通过';

  @override
  String get hsmProvideValue => '付诸行动';

  @override
  String get hsmProvideValueContent1 =>
      'YWT 正致力于让自托管变得更平易近人，从而重新平衡科技生态。\n\n我们将开发能让任何人掌控自己数字身份的应用程序。\n我们将在开源社区与那些缺乏所需时间、精力或背景知识的人群之间搭建桥梁。\n\n如果没有坚实的基础，就无法搭建桥梁（或应用）！这就是为什么 ';

  @override
  String get hsmProvideValueContent2 =>
      ' 存在的原因。\n我们为能将承诺付诸实践而自豪，并且已经将我们易用的 UI 开源。\n\n让我们一点一滴，共同建设一个更美好的世界。';

  @override
  String get hsmFirst => '首先通过';

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
  String get ouPlatform => '平台可用性';

  @override
  String get ouPlatformContent =>
      '您可以使用 Open UI 在 Android、iOS、Linux、macOS、Windows 和 Web 上进行创建！';

  @override
  String get ouResponsive => '响应式设计';

  @override
  String get ouResponsiveContent => '要查看它的实际效果，请调整您现在正在使用的窗口即可！';

  @override
  String get ouScreen => '屏幕阅读器支持';

  @override
  String get ouScreenContent => 'OUI 应用程序支持需要 ';

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
      '对所有客户真正做到无障碍的唯一途径，就是赋予他们选择的自由！\nOpen UI 提供优雅的 UX (用户体验)，让用户完全控制应用的外观。';

  @override
  String get ouInternational => '国际化';

  @override
  String get ouInternationalContent =>
      'OUI 应用程序已被翻译成 14 种语言（截至目前）。\nOUI 也为未来无限的翻译提供了基础设施。';

  @override
  String get ouReliability => '可靠性';

  @override
  String get ouReliabilityContent =>
      'YWT 软件经久耐用。这不是 AI 生成的代码。\n程序员是真人。大语言模型 (LLM) 只是小黄鸭 (调试工具)。';

  @override
  String get ouGetStarted => '开始使用';

  @override
  String get ouIconLabel => '一个设置沙盒。';

  @override
  String get ouTagLine => '当使用 Open UI 构建时，您的应用程序可以真正触达任何受众！\n';

  @override
  String get sosPromoLabel => 'Insta SOS 的宣传视频。';

  @override
  String get sosDescription => '将相机、SOS 信标和您的权利清单集于一处。\n它提供14种语言版本，并支持屏幕阅读器。';

  @override
  String get sosPrivate => 'InstaSOS 没有帐户、cookie 或广告。\n';

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
  String get sosTranslators => '译者';

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
  String get fahTeamHint => '打开 YWT folding at home 团队页面';

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
  String get csEveryBit => '对我们而言，每一比特数据都与科技巨头仅有一字节之遥。';

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
    return '打开 YWT $page 的链接';
  }

  @override
  String get csPower => '算力';

  @override
  String get csThanks => '非常感谢您提供的一切支持！';
}
