// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class LangJa extends Lang {
  LangJa([String locale = 'ja']) : super(locale);

  @override
  String get gEmpathLogoLabel => '2次元の砂時計。';

  @override
  String get gEmpathLogoHint => '選択してホームページへ移動します。';

  @override
  String gLearn(Object name) {
    return '$name について学ぶ';
  }

  @override
  String get gHomeHint => 'ホームページを開く';

  @override
  String get gProductsHint => '製品ページを開く';

  @override
  String get gMissionHint => 'ミッションページを開く';

  @override
  String get gTeamHint => 'チームページを開く';

  @override
  String get gContributeHint => '貢献ページを開く';

  @override
  String get gShare => '共有';

  @override
  String get gEmail => 'メール';

  @override
  String gEmailTo(Object recipient) {
    return '$recipient にメールを送信';
  }

  @override
  String get gAnEmail => 'メール';

  @override
  String get gEmailHint => 'メールクライアントを開く';

  @override
  String get gNewsletter => 'ニュースレター';

  @override
  String gLogoLabel(Object thing) {
    return '$thingのロゴ: ';
  }

  @override
  String gIconLabel(Object app) {
    return '$appのアイコン: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return '$platform向けの$appをダウンロードします。';
  }

  @override
  String get gRepoHint => '開発リポジトリへのリンクを開く';

  @override
  String get gEmpathetechGitHint => 'Empathetic LLCのGitHubページを開く';

  @override
  String gImageCredit(Object creator) {
    return '画像クレジット: $creator';
  }

  @override
  String get gReachOut => '連絡する';

  @override
  String gFiverrPage(Object user) {
    return '$userのFiverrページを開く';
  }

  @override
  String get gDontChaWish => 'あなたのフロントエンドも楽しくなればいいのにと ';

  @override
  String get gMeQ => '私のように思いませんか？';

  @override
  String get gDontCha => '思いませんか？';

  @override
  String get gDontChaHint => 'この画面のソースコードのGitHubページを開く';

  @override
  String get hsSlogan => '一緒により良い世界を築きましょう\nビット x ビット';

  @override
  String get hsSloganFix => '一緒により良い世界を築きましょう\n少しずつ（bit by bit）';

  @override
  String get hsVideoLabel =>
      'Empathetic LLCのアニメーションロゴ: Empatheticの文字が2次元の砂時計のロゴに変形します';

  @override
  String get hsPeople => '人間は製品ではありません。';

  @override
  String get hsWell => 'そうであってはならないのです。';

  @override
  String get hsReality => '残念な現実は、私たちのアイデンティティ、つまり私たちの ';

  @override
  String get hsData => 'データ';

  @override
  String get hsGold => ' が、巨大テクノロジー企業の最新のゴールドラッシュになっているということです。';

  @override
  String get hsRush =>
      'そして、巨大テクノロジー企業は急ぐのが大好きです。\n彼らの終わりのない全力疾走のおかげで、ディストピアSF映画の世界が、あまりにも早く現実になろうとしています。';

  @override
  String get hsSlow => 'そろそろペースを落とす時です。\n私たちがデジタルの自分自身の所有権を持つ時です。\nより良い ';

  @override
  String get hsPlan => '計画のための時です。';

  @override
  String get msPageTitle => 'ミッション';

  @override
  String get msSoWe => 'だからこそ私たちは';

  @override
  String get msBy => '〜によって';

  @override
  String get msFirst => 'まず最初に';

  @override
  String get msIDProblem => '問題を特定する';

  @override
  String get msIDProblemContent =>
      '利益第一のビジネスモデルは持続可能ではありません。\n\n定義上、利益が最優先されるのであれば、使命に向かって努力することや、人々を正当に扱うこと、資源の責任ある消費などは、すべて後回しになります。\n\nそして、この貪欲さは巨大テクノロジー企業の中で野放しにされてきました。巨大テクノロジー企業は私たちのお金だけでは満足できなくなり、私たちのアイデンティティを標的にし、私たちの心を独占するための製品を作っています。';

  @override
  String get msFindSolution => '解決策を見つける';

  @override
  String get msFindSolutionContent =>
      '幸いなことに、世界中にはより良い物語に向けて共に働く素晴らしい技術者たちがいます。\nサービス提供者と顧客が、活発で健全な、互恵的な関係を築ける物語です。\n\nそれがオープンソースコミュニティです。\n\n根本的に、オープンソースソフトウェアは誰でも無料で見ることができます。多くのプロジェクトは自由に修正や再配布も可能です。\nこれは隠し事のないソフトウェアであり、共有の問題には共有の解決策が必要だと認識している人々によって構築されています。\n\nそして、オープンソースソフトウェアの素晴らしい世界には、セルフホスティングソフトウェアというサブカテゴリが存在します。\n\nセルフホスティングにより、使用されていないコンピューター（ポケットサイズのものも含め）を利用して、そこにデータを保存することができます。\nセルフホスティングを行うことで、共感力のない企業が所有する遠く離れたサーバーにコントロールを譲り渡すのではなく、自分自身のデジタルプレゼンスをコントロールすることができます。\n\nそして、AdobeからZoomまで、ほぼすべてのものにセルフホスト版が存在します！利益よりも人を優先する代替手段を構築している情熱的なハクティビストたちがいるのです。\n\nでは、利益第一・クローズドソースからオープンソースへ、どのように移行すればよいのでしょうか？どうやってセルフホスティングを始めればよいのでしょうか？\nそれには多くの時間、エネルギー、そして予備知識が必要です。\n\nそこで私たちの出番です。';

  @override
  String get msProvideValue => '実行に移す';

  @override
  String get msProvideValueContent1 =>
      'Empathetechの使命は、セルフホスティングをより身近なものにすることで、テクノロジー業界における力のバランスを取り戻すことです。\n\n私たちは、誰もが自分のデジタルアイデンティティを所有できるようなアプリを構築します。\n私たちは、オープンソースコミュニティと、必要な時間、エネルギー、あるいは予備知識を持たない人々との間に橋を架けます。\n\nそして、強固な基盤なしには橋（またはアプリ）を構築することはできません！だからこそ ';

  @override
  String get msProvideValueContent1Fix =>
      'Empatheticの使命は、セルフホスティングをより身近なものにすることで、テクノロジー業界における力のバランスを取り戻すことです。\n\n私たちは、誰もが自分のデジタルアイデンティティを所有できるようなアプリを構築します。\n私たちは、オープンソースコミュニティと、必要な時間、エネルギー、あるいは予備知識を持たない人々との間に橋を架けます。\n\nそして、強固な基盤なしには橋（またはアプリ）を構築することはできません！だからこそ ';

  @override
  String get msProvideValueContent2 =>
      ' が存在するのです。\nEmpathetechは言葉を行動で示すことに誇りを持っており、私たちのアクセシブルなUIをオープンソース化しました。\n\n一緒により良い世界を築きましょう、少しずつ。';

  @override
  String get msProvideValueContent2Fix =>
      ' が存在するのです。\nEmpatheticは言葉を行動で示すことに誇りを持っており、私たちのアクセシブルなUIをオープンソース化しました。\n\n一緒により良い世界を築きましょう、少しずつ。';

  @override
  String get psPageTitle => '製品';

  @override
  String get psTitleHint => 'リストを表示';

  @override
  String get psShowDemo => 'デモを表示';

  @override
  String get psHideDemo => 'デモを隠す';

  @override
  String get psShowPromo => 'プロモーションを表示';

  @override
  String get psHidePromo => 'プロモーションを隠す';

  @override
  String get psLearnMore => ' をクリックして詳細をご覧ください。';

  @override
  String get psDownloadNow => '今すぐダウンロード';

  @override
  String get psComingSoon => '近日公開...';

  @override
  String get ouSlogan => '誰のためのアプリでも構築';

  @override
  String get ouLike => '以下を必要とするユーザーのように...';

  @override
  String get ouAccessible => 'アクセシブルなコントロール';

  @override
  String get ouZeroStrain => '眼精疲労ゼロ';

  @override
  String get ouEverything => 'その間にあるすべて';

  @override
  String get ouRandom => 'ランダムな設定が適用されました。';

  @override
  String get ouIs => 'Open UIはアプリジェネレーターです。';

  @override
  String get ouDemo => 'Open UIが新しいアプリを作成するデモンストレーション。';

  @override
  String get ouFoundation =>
      'アクセシブルでクロスプラットフォーム、多言語対応、実稼働準備完了のアプリの基盤をワンクリックで作成します。';

  @override
  String get ouLocal =>
      'すべてがあなたのコンピューター上で実行されます。認証情報、クレジットカード、Cookieは一切必要ありません。';

  @override
  String get ouRequirements => '必要なのはインターネット接続とアイデアだけです。';

  @override
  String get ouFlutterToo => '...そしてFlutter...';

  @override
  String get ouHow => '仕組みは？';

  @override
  String get ouEFUIsHow => 'Open UIは以下を基盤として構築されており、そこから始めることができます: ';

  @override
  String get ouSimplifies => 'EFUIは、真にアクセシブルなアプリを構築するためのライブラリです。以下を簡素化します...';

  @override
  String get ouPlatform => 'プラットフォームの可用性';

  @override
  String get ouPlatformContent =>
      'EFUIを使用して、Android、iOS、Linux、macOS、Windows、およびWeb向けのアプリを作成できます！';

  @override
  String get ouResponsive => 'レスポンシブデザイン';

  @override
  String get ouResponsiveContent => '実際の動作を確認するには、今使用しているウィンドウを動かしてみてください！';

  @override
  String get ouScreen => 'スクリーンリーダーのサポート';

  @override
  String get ouScreenContent => 'Empathetechアプリは次を必要とするユーザーをサポートします: ';

  @override
  String get ouScreenContentFix => 'Empatheticアプリは次を必要とするユーザーをサポートします: ';

  @override
  String get ouTalkBackHint => 'TalkBackのドキュメントへのリンクを開く';

  @override
  String get ouAnd => ' および ';

  @override
  String get ouVoiceOverHint => 'VoiceOverのドキュメントへのリンクを開く';

  @override
  String get ouCustom => 'ユーザーカスタマイズ';

  @override
  String get ouCustomContent =>
      'すべての顧客にとって真にアクセシブルであるための唯一の方法は、選択の自由を彼らに与えることです！\nEFUIは、アプリの外観を完全にコントロールするためのエレガントなUXを提供します。';

  @override
  String get ouInternational => '国際化';

  @override
  String get ouInternationalContent =>
      'Empathetechのアプリは、（これまでに）14の言語に翻訳されています。\nEFUIは、将来の無制限の翻訳のためのインフラも提供します。';

  @override
  String get ouInternationalContentFix =>
      'Empatheticのアプリは、（これまでに）14の言語に翻訳されています。\nEFUIは、将来の無制限の翻訳のためのインフラも提供します。';

  @override
  String get ouReliability => '信頼性';

  @override
  String get ouReliabilityContent =>
      'Empathetechのソフトウェアは長持ちするように構築されています。これはAIによるコード生成ではありません。\nEmpathetechのプログラマーは人間です。LLMはラバーダック（ただの相談役）です。';

  @override
  String get ouReliabilityContentFix =>
      'Empatheticのソフトウェアは長持ちするように構築されています。これはAIによるコード生成ではありません。\nEmpatheticのプログラマーは人間です。LLMはラバーダック（ただの相談役）です。';

  @override
  String get ouGetStarted => 'はじめる';

  @override
  String get ouOpenUIIconLabel => '設定サンドボックス。';

  @override
  String get ouEFUITagLine => 'EFUIで構築すれば、あなたのアプリは本当にどんなターゲット層にも届けることができます！\n';

  @override
  String get sosPromoLabel => 'InstaSOSのプロモーションビデオ。';

  @override
  String get sosDescription =>
      'カメラ、SOSビーコン、権利のリストがすべて1か所に。\n14言語に対応しており、スクリーンリーダーもサポートしています。';

  @override
  String get sosPrivate => 'InstaSOSにはアカウント、Cookie、広告はありません。\n';

  @override
  String get sosPrivateFix => 'Insta-SOSにはアカウント、Cookie、広告はありません。\n';

  @override
  String get sosFree => '完全に無料で、コードは ';

  @override
  String get sosOpenSource => 'オープンソース';

  @override
  String get sosConsider => 'ぜひご検討ください: ';

  @override
  String get sosContributing => '貢献';

  @override
  String get sosSAPS => ' （公共サービスとしてのソフトウェアを支援するために）。';

  @override
  String get sosIconLabel => '派手な色の通知ベル。';

  @override
  String get sosWeb =>
      '貢献の1つの具体的かつ非常に影響力のある方法は、InstaSOSをオンラインでホストする費用を負担することです。\n\nアプリストアの運営者は自分たちの立場を明確にしており、InstaSOSが普及した場合、削除される可能性があります。\nAndroidユーザーには常に自分でインストールする選択肢がありますが、iOSユーザーにとって唯一の実行可能な代替案はWebアプリとなります。\n\nありがたいことに、Flutterアプリはクライアントサイドでの計算処理となるため、費用は低く抑えられます。\n私たち（あなた）が支払う必要があるのはトラフィック管理の費用のみです。';

  @override
  String get llDescription => 'Empathetech Androidランチャー。';

  @override
  String get llDescriptionFix => 'Empathetic Androidランチャー。';

  @override
  String get llInDev =>
      'Liminalは開発中です。\n私たちのスマートフォンは私たちが使用するためのツールであるべきであり、その逆であってはならないため、そのデザインはミニマリズムに傾倒しています。';

  @override
  String get llBut => 'しかし、これは以下で構築されたミニマリストランチャーです: ';

  @override
  String get llWhimsy =>
      '。\nそのため、ホーム画面から雑然としたものや気が散るものがなくなり、かつ無限にカスタマイズ可能になります。少しの遊び心も添えて。';

  @override
  String get llTheHood => 'ポートランドのマウント・フッドの写真を使用したホーム画面のサンプル。';

  @override
  String get llLasRosas => 'ポートランドのローズガーデンの写真を使用したホーム画面のサンプル。';

  @override
  String get llFrogAndPigs => 'ポートランドの野生動物の写真を使用したホーム画面のサンプル。';

  @override
  String get llModel =>
      'Liminalは「支払える額だけ支払う（pay what you can）」モデルでリリースされる予定です。\n（優れた）コードは勝手に書かれるものではないため、Google Play版は有料となります。\nテクノロジーとの健全な関係は、自由に使える収入がある人だけのものであるべきではないため、GitHubリポジトリには無料で利用できるAPKも用意されます。';

  @override
  String get ssPreview1 => 'もう一つのEmpathetechアプリである ';

  @override
  String get ssPreview1Fix => 'もう一つのEmpatheticアプリである ';

  @override
  String get ssPreview2 =>
      ' は開発中です。\nSmoke Signalは、私たちが画面から離れられるように設計されたソーシャルネットワークアプリです。';

  @override
  String get ssPreview3 => 'Smoke Signalも、次のおかげで完全にセルフホストされる予定です: ';

  @override
  String get ssAPHint => 'Activity Pubのドキュメントへのリンクを開く';

  @override
  String get trWonder =>
      '1人でどうやって14ヶ国語もサポートしているのか疑問に思っている方へ：責任を持ってLLMを活用しています。\nプロセスは以下の通りです...';

  @override
  String get trFirst => '1. 完成させ、整理する：(アメリカ)英語の ';

  @override
  String get trSource => 'ソース';

  @override
  String get trSecond => '2. ';

  @override
  String get trBeNice =>
      ' にエントリの翻訳を丁寧にお願いする。\nコンテキストが崩壊しないよう、1つのスレッドにつき1つの言語にします。';

  @override
  String get trThird => '3. 結果の監査に使用するもの： ';

  @override
  String get trScript => 'このスクリプト';

  @override
  String get trReverse =>
      'すべての言語を1エントリずつ逆翻訳します。私はすべての結果を読み、本来の意味が失われているものにフラグを立てます。';

  @override
  String get trFourth =>
      '4. Google翻訳（Geminiはオフ）を使用して、失敗したものを1つずつ修正します。および/または...';

  @override
  String get trFifth => '5. 重要な部分は専門家に依頼します。\nたとえば、';

  @override
  String get trBy => ' の権利関係（rvXエントリ）の翻訳者は ';

  @override
  String get trHumans => '人間';

  @override
  String get trProcess =>
      '完璧なプロセスではありませんが、LLMに丸投げするよりはるかに手間がかかっています。\nそれに、正直なところ、（今のところ）これが私にできる精一杯のことです。';

  @override
  String get trSpeaking => 'そういえば、ぜひご検討ください：';

  @override
  String get trEither => '。\n資金、あるいは時間によるご支援を。（細かい）ミスが含まれている可能性は100%だと推測しています。';

  @override
  String get vaIntro => 'テクノロジーがどのように使用されるかは、それを作成した人々が決定することはできません。';

  @override
  String get vaTheBad =>
      'それは良いことでもあり、悪いことでもあり、あるいはその中間でもあります。\n少し時間を取って、悪い側面である詐欺アプリについて話し合いましょう。';

  @override
  String get vaScamRisk =>
      ' は、実稼働環境向けのアプリを構築する難易度を大幅に下げます。AIコーディングツールと組み合わせることで、詐欺師が本物のように見え、機能するアプリを作成することがこれまで以上に容易になっています。\nこれに対抗するため、私たちは検証済みアプリのリストを管理します。';

  @override
  String get vaCheckIn =>
      '私たちのUIを使用しているアプリを見かけた場合は、まずここで確認してください。もし検証されていなければ、私たちの助言は「ダウンロードしないこと」です。\nそれ以上の意味合いにおいて、これは推奨リストではありません。このリストに載るための唯一の要件は、詐欺ではないということです。\n前置きはこのくらいにして、既知のUIniverse（UIの世界）に含まれるのは...';

  @override
  String get vaFirst => 'ファーストパーティ';

  @override
  String get vaThird => 'サードパーティ（検証済み）';

  @override
  String get vaWaiting => '待機中';

  @override
  String get vaWillYou => 'あなたが最初の1人になりますか？';

  @override
  String get vaKnown => '既知の詐欺';

  @override
  String get vaSoGood => '今のところは問題ありません！\n最初の1人にはならないでくださいね :)';

  @override
  String get vaPublished => 'EFUIを使用してアプリを公開した場合は、以下を送信してください: ';

  @override
  String get vaDoNoHarm =>
      '。\n私たちがそのアプリを気に入る必要はありませんし、公開レビューするわけでもありません。\nコードを確認し、害を及ぼさない限り、検証済みとなります。';

  @override
  String get vaPrivateFree =>
      'アプリが一般公開されていない場合は心配無用です！\nしかし、あなたの知らない人がダウンロードできる状態であれば、検証できるように私たちにお知らせください。';

  @override
  String get vaDoYourPart =>
      'ご連絡がない場合、そうでないと証明されるまで、あなたの製品を詐欺とみなします。\n厳しすぎると感じるなら、もう一度考えてみてください。Open UIは何年もの労力の結晶であり、それが無料で共有されているのです。メールを送るくらいは最低限できるはずです。';

  @override
  String get tsPageTitle => 'チーム';

  @override
  String get tsCore => 'コアメンバー';

  @override
  String get tsTheFounderLabel => 'Michael Waldronの2次元プロフィール。';

  @override
  String get tsTheFounderHint => '選択して彼にメールを送信します。';

  @override
  String get tsTheFounder => '創設者';

  @override
  String get tsBoardMember => '取締役';

  @override
  String get tsYou => 'あなた？';

  @override
  String get tsMirrorLabel => '鏡を模した、きらめきのある黒い円。';

  @override
  String get tsMirrorTip => '選択して私たちにメールを送信します';

  @override
  String get tsMirrorHint => 'チームへの参加について問い合わせる。';

  @override
  String get tsNonProfit =>
      'Empathetechが正式な非営利団体になるための唯一の障壁は人数です。\n私が提示した使命を信じ、週に数時間を割ける方は、ぜひご連絡ください！\n\n最初は完全なボランティアとなります。私も（まだ）報酬は受け取っていません。\nしかし、それに対する良い計画がなければ、私もこのようなことはしていません。\n\n興味のある方はどなたでもご連絡をお待ちしておりますが、以下の経験がある方を特に求めています:\nソーシャルメディアの管理、資金調達、助成金申請書の作成。';

  @override
  String get tsWild => '実際の活動';

  @override
  String get ts2025BoothLabel => 'Open Sauce 2025のEmpathetechブース。';

  @override
  String get ts2025BoothHint => '選択してOpen Sauceの展示ページを開きます。';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) は最高でした！\nとても親切で、意欲的で、知的で創造的な人々に囲まれた後では、通常の生活に戻るのが大変でした。\nEmpathetechブースにお立ち寄りいただいた皆様、改めてありがとうございました。また来年お会いしましょう！';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) は最高でした！\nとても親切で、意欲的で、知的で創造的な人々に囲まれた後では、通常の生活に戻るのが大変でした。\nEmpatheticブースにお立ち寄りいただいた皆様、改めてありがとうございました。また来年お会いしましょう！';

  @override
  String get tsCommunity => 'コミュニティ';

  @override
  String get tsFreelance => 'フリーランス';

  @override
  String get tsVideoProduction => 'ビデオ制作';

  @override
  String get tsTranslators => '翻訳者';

  @override
  String tsProfile(Object name) {
    return '$nameのプロフィール';
  }

  @override
  String get fahJoin => 'Foldに参加する';

  @override
  String get fahIconLabel => 'タンパク質分子。';

  @override
  String get fahIconHint => '選択して彼らのサイトを開きます。';

  @override
  String get fahIntro1 => '次のチームに参加しよう: ';

  @override
  String get fahIntro2 => ' Folding@home チーム！';

  @override
  String get fahTeamHint => 'EmpatheticのFolding@homeチームページを開く';

  @override
  String get fahWhats => 'これって何？: ';

  @override
  String get fahName => 'Folding@homeとは？';

  @override
  String get fahNameHint => 'Folding at Homeの概要ページを開く';

  @override
  String get fahStats =>
      '私たちはこれまでに合計で4億ポイント以上を獲得しました。\nこれは、世界中の全チームの上位2%に入ります！';

  @override
  String get csPageTitle => '貢献する';

  @override
  String get csEveryBit =>
      'あなたがEmpathetechに与えるすべてのビット（bit）が、巨大テクノロジー企業からバイト（byte）を奪い取ります。';

  @override
  String get csEveryBitFix =>
      'あなたがEmpatheticに与えるすべてのビット（bit）が、巨大テクノロジー企業からバイト（byte）を奪い取ります。';

  @override
  String get csTime => '時間';

  @override
  String get csBecome => ' 次になることについて: ';

  @override
  String get csGit => 'GitHubコントリビューター';

  @override
  String get csMoney => '資金';

  @override
  String csOpenLink(Object page) {
    return 'Empatheticの$pageへのリンクを開く';
  }

  @override
  String get csPower => '力';

  @override
  String get csThanks => 'あらゆるご支援に心より感謝申し上げます！';
}
