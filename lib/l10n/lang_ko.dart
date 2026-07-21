// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class LangKo extends Lang {
  LangKo([String locale = 'ko']) : super(locale);

  @override
  String get gYWTLogoLabel => '2차원 모래시계.';

  @override
  String get gYWTLogoHint => '홈페이지로 가려면 활성화하세요.';

  @override
  String gLearn(Object name) {
    return '$name에 대해 알아보기';
  }

  @override
  String get gHomeHint => '홈페이지 열기';

  @override
  String get gProductsHint => '제품 페이지 열기';

  @override
  String get gMissionHint => '미션 페이지 열기';

  @override
  String get gTeamHint => '팀 페이지 열기';

  @override
  String get gContributeHint => '기여 페이지 열기';

  @override
  String get gShare => '공유';

  @override
  String get gEmail => '이메일';

  @override
  String gEmailTo(Object recipient) {
    return '$recipient에게 이메일 보내기';
  }

  @override
  String get gAnEmail => '이메일 한 통';

  @override
  String get gEmailHint => '이메일 클라이언트 열기';

  @override
  String get gNewsletter => '뉴스레터';

  @override
  String gLogoLabel(Object thing) {
    return '$thing 로고: ';
  }

  @override
  String gIconLabel(Object app) {
    return '$app 아이콘: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return '$platform용 $app 다운로드.';
  }

  @override
  String get gRepoHint => '개발 리포지토리 링크 열기.';

  @override
  String get gYWTGitHint => 'YWT의 GitHub 페이지 열기';

  @override
  String gImageCredit(Object creator) {
    return '이미지 출처: $creator';
  }

  @override
  String get gReachOut => '연락하기';

  @override
  String gFiverrPage(Object user) {
    return '$user의 Fiverr 페이지 열기';
  }

  @override
  String get gDontChaWish => '프론트엔드가 재미있었으면 좋겠지 ';

  @override
  String get gMeQ => '나처럼?';

  @override
  String get gDontCha => '그렇지 않아?';

  @override
  String get gDontChaHint => '이 화면의 소스 코드를 위한 GitHub 페이지 열기';

  @override
  String get hsAnimLabel => 'YWT 애니메이션 로고: YWT 글자들이 2차원 모래시계 로고로 변합니다';

  @override
  String get hsChange => '변화가 필요한 때입니다.';

  @override
  String get hsmIDProblem => '문제 파악하기';

  @override
  String get hsmIDProblemContent =>
      '이익을 최우선으로 하는 비즈니스 모델은 지속 가능하지 않습니다.\n\n정의에 따르면: 이익이 최우선이 되면, 사명을 향해 노력하거나, 사람을 올바르게 대우하거나, 자원을 책임감 있게 소비하는 것과 같은 일들은 모두 뒷전이 됩니다.\n\n그리고 거대 기술 기업들 사이에서 이러한 탐욕은 통제되지 않고 있습니다. 기술 거인들은 우리의 돈에 만족하지 못하고, 우리의 정체성을 표적으로 삼아 우리의 마음을 독점하려는 제품을 만들고 있습니다.';

  @override
  String get hsmSoWe => '그래서 우리는';

  @override
  String get hsmFindSolution => '해결책 찾기';

  @override
  String get hsmFindSolutionContent =>
      '다행히도 전 세계에는 더 나은 이야기를 만들기 위해 함께 일하는 놀라운 기술자들이 있습니다.\n서비스 제공자와 고객이 적극적이고 건강하며 상호 이익이 되는 관계를 맺는 이야기 말입니다.\n\n바로 오픈 소스 커뮤니티입니다.\n\n기본적으로 오픈 소스 소프트웨어는 누구나 자유롭게 볼 수 있습니다. 많은 프로젝트는 자유롭게 수정하고 재배포할 수도 있습니다.\n숨길 것이 없는 소프트웨어이며, 공유된 문제에는 공유된 해결책이 필요하다는 것을 인식하는 사람들이 만들었습니다.\n\n그리고 이 멋진 오픈 소스 소프트웨어 세계에는 하위 범주가 존재합니다. 바로 셀프 호스팅 소프트웨어입니다.\n\n셀프 호스팅을 통해 우리는 사용하지 않는 컴퓨터(주머니 크기의 컴퓨터도 포함)를 가져와 데이터를 저장할 수 있습니다.\n셀프 호스팅을 함으로써, 우리는 공감 능력 없는 기업이 소유한 먼 서버에 통제권을 넘기는 대신, 우리 자신의 디지털 존재를 통제할 수 있습니다.\n\nAdobe부터 Zoom까지 거의 모든 것의 셀프 호스팅 버전이 있습니다! 이익보다 사람을 우선시하는 대안을 만드는 열정적인 핵티비스트(hacktivist)들이 있습니다.\n\n그렇다면 이익 최우선/비공개 소스에서 오픈 소스로 어떻게 전환할 수 있을까요? 어떻게 셀프 호스팅을 시작할까요?\n많은 시간과 에너지, 사전 지식이 필요합니다.\n\n그것이 바로 우리가 나설 차례입니다.';

  @override
  String get hsmBy => '방법론:';

  @override
  String get hsmProvideValue => '실행하기';

  @override
  String get hsmProvideValueContent1 =>
      'YWT는 셀프 호스팅의 접근성을 높여 기술의 균형을 다시 맞추고 있습니다.\n\n우리는 누구나 자신의 디지털 신원을 소유할 수 있게 해주는 앱을 만들 것입니다.\n우리는 오픈 소스 커뮤니티와 필요한 시간, 에너지, 사전 지식이 없는 사람들 사이에 다리를 놓을 것입니다.\n\n그리고 튼튼한 기반 없이는 다리(또는 앱)를 만들 수 없습니다! 그것이 바로 ';

  @override
  String get hsmProvideValueContent2 =>
      '이(가) 존재하는 이유입니다.\n우리는 말과 행동을 일치시키는 것에 자부심을 가지며, 접근성 높은 UI를 오픈 소스로 공개했습니다.\n\n조금씩, 함께 더 나은 세상을 만들어 갑시다.';

  @override
  String get hsmFirst => '첫 번째 단계:';

  @override
  String get psPageTitle => '제품';

  @override
  String get psTitleHint => '목록 보기';

  @override
  String get psShowDemo => '데모 보기';

  @override
  String get psHideDemo => '데모 숨기기';

  @override
  String get psShowPromo => '프로모션 보기';

  @override
  String get psHidePromo => '프로모션 숨기기';

  @override
  String get psLearnMore => '를 통해 자세히 알아보기.';

  @override
  String get psDownloadNow => '지금 다운로드';

  @override
  String get psComingSoon => '출시 예정...';

  @override
  String get ouSlogan => '모두를 위한 앱 구축';

  @override
  String get ouLike => '이런 사용자를 위한...';

  @override
  String get ouAccessible => '접근성 제어';

  @override
  String get ouZeroStrain => '눈의 피로 제로';

  @override
  String get ouEverything => '그 사이의 모든 것';

  @override
  String get ouRandom => '무작위 설정이 적용되었습니다.';

  @override
  String get ouIs => '오픈 UI(Open UI)는 앱 생성기입니다.';

  @override
  String get ouDemo => '새로운 앱을 생성하는 오픈 UI 데모.';

  @override
  String get ouFoundation =>
      '접근성이 뛰어나고 플랫폼 간에 호환되며 다국어를 지원하는 프로덕션 레디 앱의 기반을 클릭 한 번으로 생성합니다.';

  @override
  String get ouLocal => '모든 것은 당신의 컴퓨터에서 실행됩니다. 자격 증명, 신용 카드 또는 쿠키가 없습니다.';

  @override
  String get ouRequirements => '필요한 것은 인터넷 연결과 아이디어뿐입니다.';

  @override
  String get ouFlutterToo => '...그리고 Flutter...';

  @override
  String get ouSimplifies => '이는 단순화합니다:';

  @override
  String get ouPlatform => '플랫폼 호환성';

  @override
  String get ouPlatformContent =>
      'Open UI를 사용하여 Android, iOS, Linux, macOS, Windows 및 웹(Web)에서 개발할 수 있습니다!';

  @override
  String get ouResponsive => '반응형 디자인';

  @override
  String get ouResponsiveContent => '어떻게 작동하는지 보려면 지금 사용하고 있는 창을 조작해 보세요!';

  @override
  String get ouScreen => '화면 판독기 지원';

  @override
  String get ouScreenContent => 'YWT 앱은 다음이 필요한 사용자를 지원합니다: ';

  @override
  String get ouTalkBackHint => 'TalkBack 문서 링크 열기';

  @override
  String get ouAnd => ' 및 ';

  @override
  String get ouVoiceOverHint => 'VoiceOver 문서 링크 열기';

  @override
  String get ouCustom => '사용자 맞춤 설정';

  @override
  String get ouCustomContent =>
      '모든 고객에게 진정으로 다가갈 수 있는 유일한 방법은 고객에게 선택의 자유를 부여하는 것입니다!\nOpen UI는 앱의 외관을 완벽하게 제어할 수 있는 우아한 UX를 제공합니다.';

  @override
  String get ouInternational => '국제화';

  @override
  String get ouInternationalContent =>
      'YWT 앱은 (현재까지) 14개 언어로 번역되었습니다.\nOpen UI는 미래에 무제한의 번역을 제공할 수 있는 인프라도 제공합니다.';

  @override
  String get ouReliability => '신뢰성';

  @override
  String get ouReliabilityContent =>
      'YWT 소프트웨어는 오래 지속되도록 구축되었습니다. 이것은 AI 코드 생성이 아닙니다.\n프로그래머는 사람입니다. LLM은 그저 고무 오리(Rubber ducks)에 불과합니다.';

  @override
  String get ouGetStarted => '시작하기';

  @override
  String get ouIconLabel => '설정 샌드박스.';

  @override
  String get ouTagLine => 'Open UI로 앱을 구축하면 어떤 타겟 고객에게든 완벽하게 도달할 수 있습니다!\n';

  @override
  String get sosPromoLabel => '인스타 SOS(Insta SOS) 홍보 영상.';

  @override
  String get sosDescription =>
      '카메라, SOS 비콘, 사용자의 권리 목록이 모두 한 곳에 있습니다.\n14개 언어로 제공되며 스크린 리더를 지원합니다.';

  @override
  String get sosPrivate => 'InstaSOS에는 계정, 쿠키 또는 광고가 없습니다.\n';

  @override
  String get sosFree => '이 앱은 완전히 무료이며 코드는 ';

  @override
  String get sosOpenSource => '오픈 소스';

  @override
  String get sosConsider => '소프트웨어를 공공 서비스로 지원하기 위해 ';

  @override
  String get sosContributing => '기여';

  @override
  String get sosSAPS => '하는 것을 고려해 보세요.';

  @override
  String get sosIconLabel => '화려한 색상의 알림 종.';

  @override
  String get sosWeb =>
      '크게 기여할 수 있는 구체적이고 매우 영향력 있는 방법 중 하나는 InstaSOS를 온라인에 호스팅하는 비용을 지불하는 것입니다.\n\n앱 스토어 소유자들은 자신들의 입장을 명확히 밝혔으며, InstaSOS가 인기를 얻게 되면 제거될 수 있습니다.\nAndroid 사용자는 항상 직접 설치할 수 있는 옵션이 있지만, iOS 사용자에게 실행 가능한 유일한 대안은 웹 앱뿐입니다.\n\n다행히 Flutter 앱은 클라이언트 측 컴퓨팅이므로 비용이 낮습니다.\n우리는(당신은) 트래픽 관리 비용만 지불하면 됩니다.';

  @override
  String get llInDev =>
      'Liminal은 현재 개발 중입니다.\n이 디자인은 미니멀리즘을 지향합니다. 왜냐하면 우리의 휴대폰은 우리가 사용하는 도구여야지, 그 반대가 되어서는 안 되기 때문입니다.';

  @override
  String get llBut => '하지만, 이것은 다음을 사용하여 만든 미니멀리스트 런처입니다: ';

  @override
  String get llWhimsy =>
      '.\n따라서 홈 화면은 불필요한 것과 방해 요소가 없으면서도 무한히 사용자 지정할 수 있습니다. 약간의 기발함도 더했습니다.';

  @override
  String get llTheHood => '포틀랜드 후드산(Mount Hood)의 사진이 있는 샘플 홈 화면.';

  @override
  String get llLasRosas => '포틀랜드 장미 정원 사진이 있는 샘플 홈 화면.';

  @override
  String get llFrogAndPigs => '포틀랜드 야생 동물의 사진이 있는 샘플 홈 화면.';

  @override
  String get llModel =>
      'Liminal은 \"지불 가능한 만큼 지불(pay what you can)\" 모델로 출시될 예정입니다.\nGoogle Play 버전은 유료입니다. 왜냐하면 (좋은) 코드는 저절로 쓰여지지 않기 때문입니다.\n기술과의 건전한 관계가 여유 자금이 있는 사람들에게만 독점되어서는 안 되므로, GitHub 리포지토리에도 무료로 사용할 수 있는 APK가 제공될 것입니다.';

  @override
  String get vaIntro => '기술이 사용되는 방식은 기술을 만드는 사람들에 의해 결정될 수 없습니다.';

  @override
  String get vaTheBad =>
      '이것은 좋은 일일 수도, 나쁜 일일 수도, 혹은 그 중간일 수도 있습니다.\n잠시 시간을 내어 나쁜 점에 대해 이야기해 봅시다. 바로 스캠(사기) 앱입니다.';

  @override
  String get vaScamRisk =>
      '은(는) 프로덕션 레디 앱을 구축하는 어려움을 엄청나게 줄여줍니다. AI 코딩 도구와 결합하면 스캐머들이 진짜처럼 보이고 느껴지는 앱을 만드는 것이 그 어느 때보다 쉬워집니다.\n이를 방지하기 위해 우리는 검증된 앱 목록을 유지할 것입니다.';

  @override
  String get vaCheckIn =>
      '우리 UI를 사용하는 앱을 본다면 여기를 먼저 확인하세요. 확인되지 않은 앱이라면 다운로드하지 않는 것이 좋습니다.\n그 외에, 이것은 추천 목록이 아닙니다. 이 목록에 포함되기 위한 유일한 요건은 스캠이 아니어야 한다는 것뿐입니다.\n이 점을 숙지하신 상태에서, 알려진 UIniverse에는 다음이 포함됩니다...';

  @override
  String get vaFirst => '자사 (First party)';

  @override
  String get vaThird => '제3자 검증됨';

  @override
  String get vaWaiting => '대기 중';

  @override
  String get vaWillYou => '첫 번째가 되시겠습니까?';

  @override
  String get vaKnown => '알려진 스캠';

  @override
  String get vaSoGood => '지금까지는 아주 좋습니다!\n부디 첫 번째 스캠이 되지 말아 주세요 :)';

  @override
  String get vaPublished => 'Open UI를 사용하여 앱을 퍼블리시했다면 저희에게 보내주세요 ';

  @override
  String get vaDoNoHarm =>
      '.\n우리가 그 앱을 사랑할 필요는 없고, 공개적으로 리뷰하는 것도 아닙니다.\n코드를 확인할 것이며, 해를 끼치지 않는 한 검증될 것입니다.';

  @override
  String get vaPrivateFree =>
      '앱이 공개적으로 사용 가능하지 않아도 걱정하지 마세요!\n하지만 당신이 모르는 사람들이 앱을 다운로드할 수 있다면, 우리가 검증할 수 있도록 알려주세요.';

  @override
  String get vaDoYourPart =>
      '아무런 연락을 받지 못했다면, 반증이 없는 한 귀하의 제품을 스캠으로 간주할 것입니다.\n그것이 너무 강경하다고 생각하신다면 다시 생각해 보세요. 오픈 UI는 수년간의 노력 끝에 자유롭게 공유된 것입니다. 이메일을 보내는 것은 당신이 할 수 있는 최소한의 일입니다.';

  @override
  String get fahJoin => '동참하기';

  @override
  String get fahIconLabel => '단백질 분자.';

  @override
  String get fahIconHint => '활성화하여 해당 사이트를 엽니다.';

  @override
  String get fahIntro1 => '함께 ';

  @override
  String get fahIntro2 => ' Folding@home 팀에 합류하세요!';

  @override
  String get fahTeamHint => 'YWT Folding@home 팀 페이지 열기';

  @override
  String get fahWhats => '무엇인가요? ';

  @override
  String get fahName => 'Folding@home';

  @override
  String get fahNameHint => 'Folding at Home 소개 페이지 열기';

  @override
  String get fahStats =>
      '우리는 함께 4억 포인트 이상을 획득했습니다.\n이는 전 세계 모든 팀 중 상위 2%에 해당하는 기록입니다!';

  @override
  String get csPageTitle => '기여하기';

  @override
  String get csEveryBit =>
      '우리에게는 모든 \'비트(bit)\'가 거대 기술 기업으로부터 떼어낸 \'바이트(byte)\'와 같습니다.';

  @override
  String get csTime => '시간';

  @override
  String get csBecome => '다음에 대해 알아보세요: ';

  @override
  String get csGit => 'GitHub 기여자';

  @override
  String get csMoney => '금전';

  @override
  String csOpenLink(Object page) {
    return 'YWT $page 링크 열기';
  }

  @override
  String get csPower => '컴퓨팅 파워';

  @override
  String get csThanks => '모든 지원에 깊이 감사드립니다!';
}
