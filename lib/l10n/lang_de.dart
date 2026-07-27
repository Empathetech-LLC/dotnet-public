// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class LangDe extends Lang {
  LangDe([String locale = 'de']) : super(locale);

  @override
  String get gYWTLogoLabel => 'eine zweidimensionale Sanduhr.';

  @override
  String get gYWTLogoHint => 'Aktivieren, um zur Startseite zu gelangen.';

  @override
  String gLearn(Object name) {
    return 'Erfahre mehr über $name';
  }

  @override
  String get gHomeHint => 'Startseite öffnen';

  @override
  String get gProductsHint => 'Produktseite öffnen';

  @override
  String get gMissionHint => 'Missionsseite öffnen';

  @override
  String get gTeamHint => 'Teamseite öffnen';

  @override
  String get gContributeHint => 'Mitwirkungsseite öffnen';

  @override
  String get gShare => 'Teilen';

  @override
  String get gEmail => 'E-Mail';

  @override
  String gEmailTo(Object recipient) {
    return 'E-Mail an $recipient';
  }

  @override
  String get gAnEmail => 'eine E-Mail';

  @override
  String get gEmailHint => 'Öffnet dein E-Mail-Programm';

  @override
  String get gNewsletter => 'Newsletter';

  @override
  String gLogoLabel(Object thing) {
    return '$thing-Logo: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'Das Symbol für $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Lade $app für $platform herunter.';
  }

  @override
  String get gRepoHint => 'Link zum Entwicklungs-Repository öffnen.';

  @override
  String get gYWTGitHint => 'GitHub-Seite von YWT öffnen';

  @override
  String gImageCredit(Object creator) {
    return 'Bildnachweis: $creator';
  }

  @override
  String get gReachOut => 'Kontakt aufnehmen';

  @override
  String gProfile(Object name) {
    return '$name Profil';
  }

  @override
  String gFiverrPage(Object user) {
    return 'Fiverr-Seite von $user öffnen';
  }

  @override
  String get gDontChaWish =>
      'Wünschst du dir nicht auch, dein Frontend würde so viel Spaß machen ';

  @override
  String get gMeQ => 'wie ich?';

  @override
  String get gDontCha => 'Oder etwa nicht?';

  @override
  String get gDontChaHint =>
      'GitHub-Seite für den Quellcode dieses Bildschirms öffnen';

  @override
  String get hsAnimLabel =>
      'Animiertes Logo der YWT: Die Buchstaben in YWT verwandeln sich in das zweidimensionale Sanduhr-Logo';

  @override
  String get hsChange => 'Es ist Zeit für Veränderung';

  @override
  String get hsmIDProblem => 'Das Problem identifizieren';

  @override
  String get hsmIDProblemContent =>
      'Geschäftsmodelle, die Profit an die erste Stelle setzen, sind nicht nachhaltig.\n\nPer Definition: Wenn Profit an erster Stelle steht, werden Dinge wie das Hinarbeiten auf eine Mission, der richtige Umgang mit Menschen und der verantwortungsvolle Umgang mit Ressourcen zu Nebensachen.\n\nUnd diese Gier ist in Big Tech ungebremst. Die Tech-Giganten sind mit unserem Geld nicht mehr zufrieden und bauen Produkte, die auf unsere Identitäten abzielen und unsere Gedanken monopolisieren.';

  @override
  String get hsmSoWe => 'Deshalb wir';

  @override
  String get hsmFindSolution => 'Eine Lösung finden';

  @override
  String get hsmFindSolutionContent =>
      'Glücklicherweise gibt es auf der ganzen Welt großartige Technologen, die gemeinsam an einem besseren Narrativ arbeiten.\nEines, bei dem Dienstleister und Kunden eine aktive, gesunde und für beide Seiten vorteilhafte Beziehung führen.\n\nDie Open-Source-Community.\n\nIm Kern ist Open-Source-Software für jeden frei zugänglich. Viele Projekte können auch frei modifiziert und weitergegeben werden.\nEs ist Software, die nichts zu verbergen hat, entwickelt von Menschen, die erkennen, dass gemeinsame Probleme gemeinsame Lösungen erfordern.\n\nUnd in der wunderbaren Welt der Open-Source-Software gibt es eine Unterkategorie: Self-Hosting-Software.\n\nSelf-Hosting ermöglicht es uns, jeden nicht genutzten Computer (auch im Taschenformat) zu nehmen und unsere Daten dort zu speichern.\nDurch Self-Hosting können wir unsere eigene digitale Präsenz kontrollieren, anstatt die Kontrolle an einen weit entfernten Server abzutreten, der einem unempathischen Unternehmen gehört.\n\nUnd es gibt selbst gehostete Versionen von fast allem! Von Adobe bis Zoom gibt es leidenschaftliche Hacktivisten, die Alternativen entwickeln, die Menschen über Profite stellen.\n\nWie also vollzieht man den Wechsel von Profit-First/Closed-Source zu Open-Source? Wie beginnt man mit dem Self-Hosting?\nEs erfordert viel Zeit, Energie und Vorwissen.\n\nUnd da kommen wir ins Spiel.';

  @override
  String get hsmBy => 'Durch';

  @override
  String get hsmProvideValue => 'Die Arbeit erledigen';

  @override
  String get hsmProvideValueContent1 =>
      'YWT bringt Technologie wieder ins Gleichgewicht, indem es Self-Hosting zugänglicher macht.\n\nWir werden Apps entwickeln, die es jedem ermöglichen, seine digitale Identität zu besitzen.\nWir werden Brücken bauen zwischen der Open-Source-Community und denjenigen, denen es an der nötigen Zeit, Energie oder den Vorkenntnissen fehlt.\n\nUnd man kann keine Brücken (oder Apps) ohne ein starkes Fundament bauen! Das ist der Grund, warum ';

  @override
  String get hsmProvideValueContent2 =>
      ' existiert.\nWir sind stolz darauf, unseren Worten Taten folgen zu lassen, und haben unsere zugängliche Benutzeroberfläche Open Source gemacht.\n\nLasst uns gemeinsam eine bessere Welt aufbauen, Bit für Bit.';

  @override
  String get hsmFirst => 'Indem wir zuerst';

  @override
  String get psPageTitle => 'Produkte';

  @override
  String get psTitleHint => 'Liste anzeigen';

  @override
  String get psShowDemo => 'Demo anzeigen';

  @override
  String get psHideDemo => 'Demo ausblenden';

  @override
  String get psShowPromo => 'Promo anzeigen';

  @override
  String get psHidePromo => 'Promo ausblenden';

  @override
  String get psLearnMore => ' um mehr zu erfahren.';

  @override
  String get psDownloadNow => 'Jetzt herunterladen';

  @override
  String get psComingSoon => 'Demnächst...';

  @override
  String get ouSlogan => 'Baue Apps für jeden';

  @override
  String get ouLike => 'Wie für Nutzer, die ... benötigen';

  @override
  String get ouAccessible => 'Barrierefreie Steuerung';

  @override
  String get ouZeroStrain => 'keine Augenbelastung';

  @override
  String get ouEverything => 'Alles dazwischen';

  @override
  String get ouRandom => 'Zufällige Konfiguration angewendet.';

  @override
  String get ouIs => 'Open UI ist ein App-Generator.';

  @override
  String get ouDemo =>
      'Demonstration von Open UI beim Erstellen einer neuen App.';

  @override
  String get ouFoundation =>
      'Es schafft mit einem Klick das Fundament für barrierefreie, plattformübergreifende, mehrsprachige und produktionsbereite Apps.';

  @override
  String get ouLocal =>
      'Alles läuft auf deinem Computer. Es gibt keine Zugangsdaten, Kreditkarten oder Cookies.';

  @override
  String get ouRequirements =>
      'Die einzigen Voraussetzungen sind eine Internetverbindung und eine Idee.';

  @override
  String get ouFlutterToo => '...und Flutter...';

  @override
  String get ouPlatform => 'Plattformverfügbarkeit';

  @override
  String get ouPlatformContent =>
      'Du kannst Open UI verwenden, um für Android, iOS, Linux, macOS, Windows und das Web zu entwickeln!';

  @override
  String get ouResponsive => 'Responsives Design';

  @override
  String get ouResponsiveContent =>
      'Um es in Aktion zu sehen, spiele mit dem Fenster, das du gerade benutzt!';

  @override
  String get ouScreen => 'Screenreader-Unterstützung';

  @override
  String get ouScreenContent => 'OUI-Apps unterstützen Nutzer, die ';

  @override
  String get ouTalkBackHint => 'Link zur TalkBack-Dokumentation öffnen';

  @override
  String get ouAnd => ' und ';

  @override
  String get ouVoiceOverHint => 'Link zur VoiceOver-Dokumentation öffnen';

  @override
  String get ouCustom => 'Benutzeranpassung';

  @override
  String get ouCustomContent =>
      'Der einzige Weg, um für ALLE Kunden wirklich barrierefrei zu sein, ist ihnen die Freiheit der Wahl zu geben!\nOpen UI bietet eine elegante UX für die volle Kontrolle über das Erscheinungsbild einer App.';

  @override
  String get ouInternational => 'Internationalisierung';

  @override
  String get ouInternationalContent =>
      'OUI-Apps wurden (bisher) in 14 Sprachen übersetzt.\nOUI bietet zudem die Infrastruktur für unbegrenzte zukünftige Übersetzungen.';

  @override
  String get ouReliability => 'Zuverlässigkeit';

  @override
  String get ouReliabilityContent =>
      'YWT-Software ist für die Ewigkeit gebaut. Dies ist KEINE KI-Codegenerierung.\nProgrammierer sind Menschen. LLMs sind Quietscheentchen.';

  @override
  String get ouGetStarted => 'Loslegen';

  @override
  String get ouIconLabel => 'eine Einstellungs-Sandbox.';

  @override
  String get ouTagLine =>
      'Wenn sie mit Open UI erstellt wurden, können deine Apps wirklich jedes Publikum erreichen!\n';

  @override
  String get sosPromoLabel => 'Ein Werbevideo für Insta SOS.';

  @override
  String get sosDescription =>
      'Eine Kamera, ein SOS-Signal und eine Liste deiner Rechte an einem Ort.\nEs ist in 14 Sprachen verfügbar und unterstützt Screenreader.';

  @override
  String get sosPrivate => 'InstaSOS hat keine Konten, Cookies oder Werbung.\n';

  @override
  String get sosFree => 'Es ist völlig kostenlos und der Code ist ';

  @override
  String get sosOpenSource => 'Open Source';

  @override
  String get sosConsider => 'Bitte erwäge ';

  @override
  String get sosContributing => 'mitzuwirken';

  @override
  String get sosSAPS =>
      ', um Software als öffentlichen Dienst zu unterstützen.';

  @override
  String get sosIconLabel => 'eine knallbunte Benachrichtigungsglocke.';

  @override
  String get sosWeb =>
      'Eine spezifische und sehr wirkungsvolle Möglichkeit, einen Beitrag zu leisten, bestünde darin, die Kosten für das Online-Hosting von InstaSOS zu übernehmen.\n\nDie App-Store-Betreiber haben ihre Loyalitäten deutlich gemacht, und InstaSOS könnte entfernt werden, wenn es an Zugkraft gewinnt.\nAndroid-Nutzer werden immer die Möglichkeit haben, es selbst zu installieren, aber die einzige praktikable Alternative für iOS-Nutzer wäre eine Web-App.\n\nZum Glück werden Flutter-Apps clientseitig berechnet, sodass die Rechnung niedrig ausfallen würde.\nWir (du) müssten nur für das Traffic-Management bezahlen.';

  @override
  String get sosTranslators => 'Übersetzer';

  @override
  String get llInDev =>
      'Liminal befindet sich in der Entwicklung.\nDas Design tendiert zum Minimalismus, aber es ist gebaut mit ';

  @override
  String get llWhimsy =>
      'So wird dein Startbildschirm frei von Unordnung und Ablenkungen sein UND grenzenlos anpassbar.\nMit einer Prise Verspieltheit obendrein.';

  @override
  String get llTheHood =>
      'Ein Beispiel-Startbildschirm mit einem Bild von Portlands Mount Hood.';

  @override
  String get llLasRosas =>
      'Ein Beispiel-Startbildschirm mit einem Bild von Portlands Rosengarten.';

  @override
  String get llFrogAndPigs =>
      'Ein Beispiel-Startbildschirm mit einem Bild von Portlands Tierwelt.';

  @override
  String get llModel =>
      'Liminal wird nach einem \"Zahl, was du kannst\"-Modell veröffentlicht.\nDie Google Play-Version wird kostenpflichtig sein, da sich (guter) Code nicht von selbst schreibt.\nDas GitHub-Repository wird auch eine frei verfügbare APK enthalten, denn eine gesunde Beziehung zu Technologie sollte nicht nur denjenigen vorbehalten sein, die über ein verfügbares Einkommen verfügen.';

  @override
  String get fahJoin => 'Mach mit';

  @override
  String get fahIconLabel => 'ein Proteinmolekül.';

  @override
  String get fahIconHint => 'Aktivieren, um ihre Seite zu öffnen.';

  @override
  String get fahIntro1 => 'Tritt dem ';

  @override
  String get fahIntro2 => ' Folding@home-Team bei!';

  @override
  String get fahTeamHint => 'Teamseite von YWT Folding at Home öffnen';

  @override
  String get fahWhats => 'Was ist ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Info-Seite von Folding at Home öffnen';

  @override
  String get fahStats =>
      'Zusammen haben wir über 400 Millionen Punkte gesammelt.\nDamit gehören wir zu den Top 2 % aller Teams weltweit!';

  @override
  String get csPageTitle => 'Mitwirken';

  @override
  String get csEveryBit =>
      'Jedes Bit, das du uns gibst, nimmt ein Byte von Big Tech.';

  @override
  String get csTime => 'Zeit';

  @override
  String get csBecome => ' darüber, wie du ein ';

  @override
  String get csGit => 'GitHub-Mitwirkender wirst';

  @override
  String get csMoney => 'Geld';

  @override
  String csOpenLink(Object page) {
    return 'Link zu YWT $page öffnen';
  }

  @override
  String get csPower => 'Rechenleistung';

  @override
  String get csThanks => 'Vielen Dank für jede Art der Unterstützung!';
}
