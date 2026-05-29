// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class LangDe extends Lang {
  LangDe([String locale = 'de']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'eine zweidimensionale Sanduhr.';

  @override
  String get gEmpathLogoHint => 'Aktivieren, um zur Startseite zu gelangen.';

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
  String get gEmpathetechGitHint => 'GitHub-Seite von Empathetic LLC öffnen';

  @override
  String gImageCredit(Object creator) {
    return 'Bildnachweis: $creator';
  }

  @override
  String get gReachOut => 'Kontakt aufnehmen';

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
  String get hsSlogan =>
      'Lass uns gemeinsam eine bessere Welt bauen\nBit x Bit';

  @override
  String get hsSloganFix =>
      'Lass uns gemeinsam eine bessere Welt bauen\nBit für Bit';

  @override
  String get hsVideoLabel =>
      'Animiertes Logo der Empathetic LLC: Die Buchstaben in Empathetic verwandeln sich in das zweidimensionale Sanduhr-Logo';

  @override
  String get hsPeople => 'Menschen sind keine Produkte.';

  @override
  String get hsWell => 'Nun, das sollten sie zumindest nicht sein.';

  @override
  String get hsReality =>
      'Die traurige Realität ist, dass unsere Identitäten, unsere ';

  @override
  String get hsData => 'Daten';

  @override
  String get hsGold => ', der neueste Goldrausch von Big Tech sind.';

  @override
  String get hsRush =>
      'Und Big Tech liebt es, sich zu beeilen.\nDank ihres endlosen Sprints werden dystopische Sci-Fi-Filme viel zu schnell Realität.';

  @override
  String get hsSlow =>
      'Es ist an der Zeit, langsamer zu werden.\nEs ist an der Zeit, die Kontrolle über unser digitales Ich zurückzugewinnen.\nEs ist Zeit für einen besseren ';

  @override
  String get hsPlan => 'Plan.';

  @override
  String get msPageTitle => 'Mission';

  @override
  String get msSoWe => 'Deshalb wir';

  @override
  String get msBy => 'Durch';

  @override
  String get msFirst => 'Indem wir zuerst';

  @override
  String get msIDProblem => 'Das Problem identifizieren';

  @override
  String get msIDProblemContent =>
      'Geschäftsmodelle, die Profit an die erste Stelle setzen, sind nicht nachhaltig.\n\nPer Definition: Wenn Profit an erster Stelle steht, werden Dinge wie das Hinarbeiten auf eine Mission, der richtige Umgang mit Menschen und der verantwortungsvolle Umgang mit Ressourcen zu Nebensachen.\n\nUnd diese Gier ist in Big Tech ungebremst. Die Tech-Giganten sind mit unserem Geld nicht mehr zufrieden und bauen Produkte, die auf unsere Identitäten abzielen und unsere Gedanken monopolisieren.';

  @override
  String get msFindSolution => 'Eine Lösung finden';

  @override
  String get msFindSolutionContent =>
      'Glücklicherweise gibt es auf der ganzen Welt großartige Technologen, die gemeinsam an einem besseren Narrativ arbeiten.\nEines, bei dem Dienstleister und Kunden eine aktive, gesunde und für beide Seiten vorteilhafte Beziehung führen.\n\nDie Open-Source-Community.\n\nIm Kern ist Open-Source-Software für jeden frei zugänglich. Viele Projekte können auch frei modifiziert und weitergegeben werden.\nEs ist Software, die nichts zu verbergen hat, entwickelt von Menschen, die erkennen, dass gemeinsame Probleme gemeinsame Lösungen erfordern.\n\nUnd in der wunderbaren Welt der Open-Source-Software gibt es eine Unterkategorie: Self-Hosting-Software.\n\nSelf-Hosting ermöglicht es uns, jeden nicht genutzten Computer (auch im Taschenformat) zu nehmen und unsere Daten dort zu speichern.\nDurch Self-Hosting können wir unsere eigene digitale Präsenz kontrollieren, anstatt die Kontrolle an einen weit entfernten Server abzutreten, der einem unempathischen Unternehmen gehört.\n\nUnd es gibt selbst gehostete Versionen von fast allem! Von Adobe bis Zoom gibt es leidenschaftliche Hacktivisten, die Alternativen entwickeln, die Menschen über Profite stellen.\n\nWie also vollzieht man den Wechsel von Profit-First/Closed-Source zu Open-Source? Wie beginnt man mit dem Self-Hosting?\nEs erfordert viel Zeit, Energie und Vorwissen.\n\nUnd da kommen wir ins Spiel.';

  @override
  String get msProvideValue => 'Die Arbeit erledigen';

  @override
  String get msProvideValueContent1 =>
      'Die Mission von Empathetech ist es, die Machtverhältnisse in der Technologiebranche durch zugänglicheres Self-Hosting wieder ins Gleichgewicht zu bringen.\n\nWir werden Apps entwickeln, die es jedem ermöglichen, seine digitale Identität zu besitzen.\nWir werden Brücken zwischen der Open-Source-Community und denjenigen bauen, denen es an der nötigen Zeit, Energie oder dem Vorwissen fehlt.\n\nUnd man kann keine Brücken (oder Apps) ohne ein starkes Fundament bauen! Deshalb existiert ';

  @override
  String get msProvideValueContent1Fix =>
      'Die Mission von Empathetic ist es, die Machtverhältnisse in der Technologiebranche durch zugänglicheres Self-Hosting wieder ins Gleichgewicht zu bringen.\n\nWir werden Apps entwickeln, die es jedem ermöglichen, seine digitale Identität zu besitzen.\nWir werden Brücken zwischen der Open-Source-Community und denjenigen bauen, denen es an der nötigen Zeit, Energie oder dem Vorwissen fehlt.\n\nUnd man kann keine Brücken (oder Apps) ohne ein starkes Fundament bauen! Deshalb existiert ';

  @override
  String get msProvideValueContent2 =>
      '.\nEmpathetech ist stolz darauf, Worten Taten folgen zu lassen, und hat unsere barrierefreie UI als Open Source veröffentlicht.\n\nLass uns gemeinsam eine bessere Welt bauen, Bit für Bit.';

  @override
  String get msProvideValueContent2Fix =>
      '.\nEmpathetic ist stolz darauf, Worten Taten folgen zu lassen, und hat unsere barrierefreie UI als Open Source veröffentlicht.\n\nLass uns gemeinsam eine bessere Welt bauen, Bit für Bit.';

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
  String get ouHow => 'Wie funktioniert das?';

  @override
  String get ouEFUIsHow =>
      'Open UI baut auf folgendem auf und hilft dir beim Einstieg mit ';

  @override
  String get ouSimplifies =>
      'EFUI ist eine Bibliothek zum Erstellen wirklich barrierefreier Apps. Es vereinfacht...';

  @override
  String get ouPlatform => 'Plattformverfügbarkeit';

  @override
  String get ouPlatformContent =>
      'Du kannst EFUI verwenden, um für Android, iOS, Linux, macOS, Windows und das Web zu entwickeln!';

  @override
  String get ouResponsive => 'Responsives Design';

  @override
  String get ouResponsiveContent =>
      'Um es in Aktion zu sehen, spiele mit dem Fenster, das du gerade benutzt!';

  @override
  String get ouScreen => 'Screenreader-Unterstützung';

  @override
  String get ouScreenContent => 'Empathetech-Apps unterstützen Nutzer, die ';

  @override
  String get ouScreenContentFix => 'Empathetic-Apps unterstützen Nutzer, die ';

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
      'Der einzige Weg, um für ALLE Kunden wirklich barrierefrei zu sein, ist ihnen die Freiheit der Wahl zu geben!\nEFUI bietet eine elegante UX für die volle Kontrolle über das Erscheinungsbild einer App.';

  @override
  String get ouInternational => 'Internationalisierung';

  @override
  String get ouInternationalContent =>
      'Empathetech-Apps wurden (bisher) in 14 Sprachen übersetzt.\nEFUI bietet zudem die Infrastruktur für unbegrenzte zukünftige Übersetzungen.';

  @override
  String get ouInternationalContentFix =>
      'Empathetic-Apps wurden (bisher) in 14 Sprachen übersetzt.\nEFUI bietet zudem die Infrastruktur für unbegrenzte zukünftige Übersetzungen.';

  @override
  String get ouReliability => 'Zuverlässigkeit';

  @override
  String get ouReliabilityContent =>
      'Empathetech-Software ist für die Ewigkeit gebaut. Dies ist KEINE KI-Codegenerierung.\nEmpathetech-Programmierer sind Menschen. LLMs sind Quietscheentchen.';

  @override
  String get ouReliabilityContentFix =>
      'Empathetic-Software ist für die Ewigkeit gebaut. Dies ist KEINE KI-Codegenerierung.\nEmpathetic-Programmierer sind Menschen. LLMs sind Quietscheentchen.';

  @override
  String get ouGetStarted => 'Loslegen';

  @override
  String get ouOpenUIIconLabel => 'eine Einstellungs-Sandbox.';

  @override
  String get ouEFUITagLine =>
      'Wenn sie mit EFUI erstellt wurden, können deine Apps wirklich jedes Publikum erreichen!\n';

  @override
  String get sosPromoLabel => 'Ein Werbevideo für Insta SOS.';

  @override
  String get sosDescription =>
      'Eine Kamera, ein SOS-Signal und eine Liste deiner Rechte an einem Ort.\nEs ist in 14 Sprachen verfügbar und unterstützt Screenreader.';

  @override
  String get sosPrivate => 'InstaSOS hat keine Konten, Cookies oder Werbung.\n';

  @override
  String get sosPrivateFix =>
      'Insta-SOS hat keine Konten, Cookies oder Werbung.\n';

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
  String get llDescription => 'Ein Empathetech Android Launcher.';

  @override
  String get llDescriptionFix => 'Ein Empathetic Android Launcher.';

  @override
  String get llInDev =>
      'Liminal befindet sich in der Entwicklung.\nSein Design tendiert zum Minimalismus, denn unsere Telefone sollten Werkzeuge sein, die wir nutzen, und nicht umgekehrt.';

  @override
  String get llBut => 'Aber es ist ein minimalistischer Launcher, gebaut mit ';

  @override
  String get llWhimsy =>
      '.\nSo ist dein Startbildschirm frei von Unordnung und Ablenkungen UND grenzenlos anpassbar. Mit einer Prise Verspieltheit obendrein.';

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
  String get ssPreview1 => 'Eine weitere Empathetech-App, ';

  @override
  String get ssPreview1Fix => 'Eine weitere Empathetic-App, ';

  @override
  String get ssPreview2 =>
      ', ist in der Entwicklung.\nSmoke Signal ist eine soziale Netzwerk-App, die entwickelt wurde, um uns von unseren Bildschirmen fernzuhalten.';

  @override
  String get ssPreview3 =>
      'Smoke Signal wird ebenfalls vollständig selbst gehostet sein, dank ';

  @override
  String get ssAPHint => 'Link zur Activity Pub-Dokumentation öffnen';

  @override
  String get trWonder =>
      'Falls du dich fragst, wie ein Ein-Personen-Team 14 Sprachen unterstützt: Durch verantwortungsvolles LLM-ing.\nDer Prozess sieht wie folgt aus...';

  @override
  String get trFirst =>
      '1. Finalisiere && organisiere die (amerikanische) englische ';

  @override
  String get trSource => 'Quelle';

  @override
  String get trSecond => '2. Bitte ';

  @override
  String get trBeNice =>
      ' freundlich darum, die Einträge zu übersetzen.\nEine Sprache pro Thread, damit der Kontext nicht explodiert.';

  @override
  String get trThird => '3. Überprüfe die Ergebnisse mit ';

  @override
  String get trScript => 'diesem Skript';

  @override
  String get trReverse =>
      'Es übersetzt alle Sprachen zurück, Eintrag für Eintrag. Ich lese jedes Ergebnis und markiere diejenigen, die ihre ursprüngliche Bedeutung verloren haben.';

  @override
  String get trFourth =>
      '4. Nutze Google Übersetzer (ohne Gemini), um Fehler einzeln zu beheben. Und/oder...';

  @override
  String get trFifth =>
      '5. Beauftrage Profis für die wichtigen Teile.\nZum Beispiel wurden die Rechte (rvX-Einträge) in ';

  @override
  String get trBy => ' übersetzt von ';

  @override
  String get trHumans => 'Menschen';

  @override
  String get trProcess =>
      'Es ist ein unvollkommener Prozess, aber es ist viel mehr Aufwand als nur blindes LLM-Copy-Paste.\nUnd ehrlich gesagt, ist es das, was ich mir (im Moment) leisten kann.';

  @override
  String get trSpeaking => 'Apropos, bitte erwäge ';

  @override
  String get trEither =>
      '.\nGeld oder Zeit. Ich schätze die Wahrscheinlichkeit von (kleineren) Fehlern auf 100 %.';

  @override
  String get vaIntro =>
      'Die Art und Weise, wie eine Technologie genutzt wird, kann nicht von denjenigen bestimmt werden, die sie erschaffen.';

  @override
  String get vaTheBad =>
      'Was eine gute, eine schlechte oder eine Sache dazwischen sein kann.\nLass uns einen Moment über das Schlechte sprechen: Betrugs-Apps.';

  @override
  String get vaScamRisk =>
      ' reduziert die Schwierigkeit, produktionsbereite Apps zu erstellen, massiv. In Kombination mit KI-Codierungswerkzeugen ist es für Betrüger einfacher denn je, Apps zu erstellen, die legitim aussehen und sich auch so anfühlen.\nUm dem entgegenzuwirken, führen wir eine Liste verifizierter Apps.';

  @override
  String get vaCheckIn =>
      'Wenn du eine App siehst, die unsere UI verwendet, schau zuerst hier nach. Wenn sie nicht verifiziert ist, lautet unser Rat: Lade sie nicht herunter.\nDarüber hinaus ist dies keine Empfehlungsliste. Die einzige Voraussetzung, um auf dieser Liste zu stehen, ist, kein Betrug zu sein.\nDa das nun geklärt ist, enthält das bekannte UIniversum...';

  @override
  String get vaFirst => 'Erstanbieter';

  @override
  String get vaThird => 'Verifizierte Drittanbieter';

  @override
  String get vaWaiting => 'Wartend';

  @override
  String get vaWillYou => 'Wirst du der Erste sein?';

  @override
  String get vaKnown => 'Bekannter Betrug';

  @override
  String get vaSoGood => 'So weit, so gut!\nBitte sei nicht der Erste :)';

  @override
  String get vaPublished =>
      'Wenn du eine App veröffentlicht hast, die EFUI nutzt, sende uns ';

  @override
  String get vaDoNoHarm =>
      '.\nWir müssen die App nicht lieben und wir bewerten sie nicht öffentlich.\nWir prüfen den Code und solange sie keinen Schaden anrichtet, wird sie verifiziert.';

  @override
  String get vaPrivateFree =>
      'Wenn deine App nicht öffentlich zugänglich ist, keine Sorge!\nAber wenn Leute, die du nicht kennst, sie herunterladen können, lass es uns wissen, damit wir sie verifizieren können.';

  @override
  String get vaDoYourPart =>
      'Wenn wir nichts von dir gehört haben, gehen wir davon aus, dass dein Produkt ein Betrug ist, bis das Gegenteil bewiesen ist.\nWenn du denkst, dass das hart ist, denk nochmal nach. Open UI ist jahrelange Arbeit, die kostenlos geteilt wird. Eine E-Mail zu senden ist das Mindeste, was du tun kannst.';

  @override
  String get tsPageTitle => 'Team';

  @override
  String get tsCore => 'Kernteam';

  @override
  String get tsTheFounderLabel =>
      'Ein zweidimensionales Profil von Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Aktivieren, um ihm eine E-Mail zu senden.';

  @override
  String get tsTheFounder => 'Der Gründer';

  @override
  String get tsBoardMember => 'Vorstandsmitglied';

  @override
  String get tsYou => 'Du?';

  @override
  String get tsMirrorLabel =>
      'Ein schwarzer Kreis mit einem Schimmer, um einen Spiegel zu imitieren.';

  @override
  String get tsMirrorTip => 'Aktivieren, um uns eine E-Mail zu senden';

  @override
  String get tsMirrorHint => 'Nach einem Beitritt ins Team fragen.';

  @override
  String get tsNonProfit =>
      'Das Einzige, was Empathetech noch im Weg steht, um eine echte Non-Profit-Organisation zu werden, ist die Anzahl der Mitarbeiter.\nWenn du an die von mir dargelegte Mission glaubst und ein paar Stunden in der Woche erübrigen kannst, melde dich bitte!\n\nZunächst wird alles ehrenamtlich sein. Ich werde (noch) auch nicht bezahlt.\nAber ich würde das nicht tun, wenn ich nicht auch dafür einen guten Plan hätte.\n\nAlle Interessierten sind ermutigt, sich zu melden, aber es besteht ein besonderer Bedarf an Personen mit Erfahrung in den Bereichen:\nSocial-Media-Management, Fundraising und das Schreiben von Förderanträgen.';

  @override
  String get tsWild => 'In freier Wildbahn';

  @override
  String get ts2025BoothLabel => 'Der Empathetech-Stand für Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Aktivieren, um die Open Sauce Ausstellungsseite zu öffnen.';

  @override
  String get ts2025BoothDescription =>
      'Open Sauce (2025) war ein Riesenspaß!\nEs war schwer, ins normale Leben zurückzukehren, nachdem man von so vielen freundlichen, engagierten, intelligenten und kreativen Menschen umgeben war.\nNochmals vielen Dank, falls du am Empathetech-Stand vorbeigeschaut hast, und auf ein Neues im nächsten Jahr!';

  @override
  String get ts2025BoothDescriptionFix =>
      'Open Sauce (2025) war ein Riesenspaß!\nEs war schwer, ins normale Leben zurückzukehren, nachdem man von so vielen freundlichen, engagierten, intelligenten und kreativen Menschen umgeben war.\nNochmals vielen Dank, falls du am Empathetic-Stand vorbeigeschaut hast, und auf ein Neues im nächsten Jahr!';

  @override
  String get tsCommunity => 'Community';

  @override
  String get tsFreelance => 'Freiberufler';

  @override
  String get tsVideoProduction => 'Videoproduktion';

  @override
  String get tsTranslators => 'Übersetzer';

  @override
  String tsProfile(Object name) {
    return '${name}s Profil';
  }

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
  String get fahTeamHint => 'Teamseite von Empathetic Folding at Home öffnen';

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
      'Jedes Bit, das du Empathetech gibst, nimmt ein Byte von Big Tech.';

  @override
  String get csEveryBitFix =>
      'Jedes Bit, das du Empathetic gibst, nimmt ein Byte von Big Tech.';

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
    return 'Link zu Empathetics $page öffnen';
  }

  @override
  String get csPower => 'Rechenleistung';

  @override
  String get csThanks => 'Vielen Dank für jede Art der Unterstützung!';
}
