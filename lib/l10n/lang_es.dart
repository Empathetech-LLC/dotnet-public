// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class LangEs extends Lang {
  LangEs([String locale = 'es']) : super(locale);

  @override
  String get gEmpathLogoLabel => 'un reloj de arena bidimensional.';

  @override
  String get gEmpathLogoHint => 'Activar para ir a la página de inicio.';

  @override
  String gLearn(Object name) {
    return 'Conozca más sobre $name';
  }

  @override
  String get gHomeHint => 'Abrir la página de inicio';

  @override
  String get gProductsHint => 'Abrir una página de producto';

  @override
  String get gMissionHint => 'Abrir la página del misión';

  @override
  String get gTeamHint => 'Abrir la página del equipo';

  @override
  String get gContributeHint => 'Abrir la página de contribuir';

  @override
  String get gShare => 'Compartir';

  @override
  String get gEmail => 'Email';

  @override
  String gEmailTo(Object recipient) {
    return 'Email $recipient';
  }

  @override
  String get gNewsletter => 'Boletín de noticias';

  @override
  String gLogoLabel(Object thing) {
    return 'Logotipo de $thing: ';
  }

  @override
  String gIconLabel(Object app) {
    return 'El icono de $app: ';
  }

  @override
  String gDownloadHint(Object app, Object platform) {
    return 'Descargar $app para $platform.';
  }

  @override
  String get gRepoHint => 'Abre un enlace al repositorio de desarrollo.';

  @override
  String get gEmpathetechGitHint =>
      'Abrir la página de GitHub de Empathetic LLC';

  @override
  String get gReachOut => 'Contacto';

  @override
  String gFiverrPage(Object user) {
    return 'Abre la página de $user en Fiverr';
  }

  @override
  String get gDontChaWish => '¿No te gustaría que tu frontend fuera divertido ';

  @override
  String get gMeQ => 'como yo?';

  @override
  String get gDontCha => '¿No?';

  @override
  String get gDontChaHint =>
      'Abre la página de GitHub del código fuente de esta pantalla';

  @override
  String get hsSlogan => 'Construyamos juntos un mundo mejor\nbit x bit';

  @override
  String get hsSloganFix => 'Construyamos juntos un mundo mejor\npoco a poco';

  @override
  String get hsVideoLabel =>
      'Logotipo animado de Empathetic LLC: las letras de Empathetic se transforman en el logotipo bidimensional del reloj de arena';

  @override
  String get hsPeople => 'Las personas no son productos.';

  @override
  String get hsWell => 'Bueno, no deberían serlo.';

  @override
  String get hsReality =>
      'La desafortunada realidad es que nuestras identidades, nuestros ';

  @override
  String get hsData => 'datos';

  @override
  String get hsGold =>
      ', son la última fiebre del oro de las grandes tecnológicas.';

  @override
  String get hsRush =>
      'Y a las grandes tecnológicas les encanta correr.\nGracias a su carrera sin fin, las películas distópicas de ciencia ficción se están haciendo realidad demasiado rápido.';

  @override
  String get hsSlow =>
      'Es hora de reducir la velocidad.\nEs hora de que tengamos la propiedad de nuestro yo digital.\nEs hora de un mejor ';

  @override
  String get hsPlan => 'plan.';

  @override
  String get msPageTitle => 'Misión';

  @override
  String get msSoWe => 'Así que nosotros';

  @override
  String get msBy => 'Por';

  @override
  String get msFirst => 'Por primera vez';

  @override
  String get msIDProblem => 'Identificación del problema';

  @override
  String get msIDProblemContent =>
      'Los modelos de negocio que dan prioridad al beneficio no son sostenibles.\n\nPor definición, cosas como trabajar por una misión, tratar bien a las personas y consumir recursos de forma responsable pasan a un segundo plano.\n\nLos gigantes tecnológicos no se conforman con llevarse nuestro dinero. Ahora construyen productos para captar nuestras identidades y monopolizar nuestras mentes. Y nadie les dice nada.';

  @override
  String get msFindSolution => 'Encuentra una solución';

  @override
  String get msFindSolutionContent =>
      'Afortunadamente, hay tecnólogos increíbles en todo el mundo que trabajan juntos para lograr una mejor narrativa.\nUna en la que los proveedores de servicios y los clientes tengan una relación activa, saludable y mutuamente beneficiosa.\n\nLa comunidad de código abierto.\n\nEn esencia, el software de código abierto está disponible de forma gratuita para que cualquiera lo vea. Muchos proyectos también se pueden modificar y redistribuir libremente.\nEs un software que no tiene nada que ocultar, creado por gente que reconoce que los problemas compartidos requieren soluciones compartidas.\n\nY en el maravilloso mundo del software de código abierto, existe una subcategoría: el software de alojamiento propio.\n\nEl alojamiento propio nos permite tomar cualquier computadora que no esté en uso (incluso las de bolsillo) y almacenar allí nuestros datos.\nAl alojarnos nosotros mismos, podemos controlar nuestra propia presencia digital, en lugar de ceder el control a un servidor lejano, propiedad de una corporación poco empática.\n\n¡Y existen versiones alojadas por nosotros mismos de casi todo! Desde Adobe hasta Zoom, hay hacktivistas apasionados que crean alternativas que priorizan a las personas por sobre las ganancias.\n\nEntonces, ¿cómo se hace la transición de un código cerrado que prioriza las ganancias a un código abierto? ¿Cómo empiezan a alojar sus propios archivos?\nRequiere mucho tiempo, energía y conocimientos previos.\n\nAhí es donde entramos nosotros.';

  @override
  String get msProvideValue => 'Haciendo el trabajo';

  @override
  String get msProvideValueContent1 =>
      'La misión de Empathetech es reequilibrar el poder en la tecnología al hacer que el autohospedaje sea más accesible.\n\nCrearemos aplicaciones que permitan a cualquier persona ser dueña de su identidad digital.\n\nConstruiremos puentes entre la comunidad de código abierto y aquellos que no tienen el tiempo, la energía o el conocimiento previo necesarios.\n\n¡Y no se pueden construir puentes (o aplicaciones) sin una base sólida! Es por eso que ';

  @override
  String get msProvideValueContent1Fix =>
      'La misión de Empathetic es reequilibrar el poder en la tecnología al hacer que el autohospedaje sea más accesible.\n\nCrearemos aplicaciones que permitan a cualquier persona ser dueña de su identidad digital.\n\nConstruiremos puentes entre la comunidad de código abierto y aquellos que no tienen el tiempo, la energía o el conocimiento previo necesarios.\n\n¡Y no se pueden construir puentes (o aplicaciones) sin una base sólida! Es por eso que ';

  @override
  String get msProvideValueContent2 =>
      ' existe.\nEmpathetech se enorgullece de cumplir las palabras con acciones y ha hecho que nuestra interfaz de usuario accesible sea de código abierto.\n\nConstruyamos un mundo mejor juntos, poco a poco.';

  @override
  String get msProvideValueContent2Fix =>
      ' existe.\nEmpathetic se enorgullece de cumplir las palabras con acciones y ha hecho que nuestra interfaz de usuario accesible sea de código abierto.\n\nConstruyamos un mundo mejor juntos, poco a poco.';

  @override
  String get psPageTitle => 'Productos';

  @override
  String get psShowDemo => 'Mostrar demo';

  @override
  String get psHideDemo => 'Ocultar demo';

  @override
  String get psShowPromo => 'Mostrar promo';

  @override
  String get psHidePromo => 'Ocultar promo';

  @override
  String get psOpenUISlogan => 'Crea apps para todos';

  @override
  String get psLike => 'Como usuarios que necesitan ...';

  @override
  String get psAccessible => 'Controles accesibles';

  @override
  String get psZeroStrain => 'cero fatiga visual';

  @override
  String get psEverything => 'Algo más';

  @override
  String get psRandom => 'Configuración aleatoria aplicada.';

  @override
  String get psOpenUIIs => 'Open UI es un generador de aplicaciones.';

  @override
  String get psOpenUIDemo =>
      'Demostración de Open UI creando una nueva aplicación.';

  @override
  String get psFoundation =>
      'Crea la base para aplicaciones accesibles, multiplataforma, multilingües y listas para producción en un solo clic.';

  @override
  String get psLocal =>
      'Todo funciona en tu ordenador. No hay credenciales, tarjetas de crédito ni cookies.';

  @override
  String get psRequirements =>
      'Los únicos requisitos son una conexión a Internet y una idea.';

  @override
  String get psFlutterToo => '...y Flutter...';

  @override
  String get psHow => '¿Cómo funciona?';

  @override
  String get psEFUIsHow => 'Open UI te ayuda a empezar a utilizar, ';

  @override
  String get psSimplifies =>
      'EFUI es una biblioteca para crear aplicaciones verdaderamente accesibles. Se simplifica...';

  @override
  String get psPlatform => 'Disponibilidad de plataforma';

  @override
  String get psPlatformContent =>
      '¡Puedes usar EFUI para crear apps de Android, iOS, Linux, macOS, Windows y Web!';

  @override
  String get psResponsive => 'Diseño adaptativo';

  @override
  String get psResponsiveContent =>
      'Para verlo en acción, ¡interactúa con la ventana que estás usando ahora mismo!';

  @override
  String get psScreen => 'Soporte para lectores de pantalla';

  @override
  String get psScreenContent =>
      'Las apps de Empathetech ayudan a los usuarios que lo necesitan ';

  @override
  String get psScreenContentFix =>
      'Las apps de Empathetic ayudan a los usuarios que lo necesitan ';

  @override
  String get psTalkBackHint => 'Abrir un enlace a la documentación de TalkBack';

  @override
  String get psAnd => ' y ';

  @override
  String get psVoiceOverHint =>
      'Abrir un enlace a la documentación de VoiceOver';

  @override
  String get psCustom => 'Personalización del usuario';

  @override
  String get psCustomContent =>
      '¡La única forma de ser verdaderamente accesible para TODOS los clientes es brindarles la libertad de elección!\nEFUI proporciona una UX elegante para un control total sobre la apariencia de una aplicación.';

  @override
  String get psInternational => 'Internacionalización';

  @override
  String get psInternationalContent =>
      'Las aplicaciones de Empathetech se han traducido al español y al francés (hasta el momento).\nEFUI también proporciona la infraestructura para futuras traducciones ilimitadas.';

  @override
  String get psInternationalContentFix =>
      'Las aplicaciones de Empathetic se han traducido al español y al francés (hasta el momento).\nEFUI también proporciona la infraestructura para futuras traducciones ilimitadas.';

  @override
  String get psReliability => 'Fiabilidad';

  @override
  String get psReliabilityContent =>
      'El software de Empathetech está diseñado para durar. Esto NO es generación de código de IA.\nLas programadoras Empathetech son personas. Los LLM son como patos de goma.';

  @override
  String get psReliabilityContentFix =>
      'El software de Empathetic está diseñado para durar. Esto NO es generación de código de IA.\nLas programadoras Empathetic son personas. Los LLM son como patos de goma.';

  @override
  String get psGetStarted => 'Velo en directo';

  @override
  String get psOpenUIIconLabel => 'un configuración sandbox.';

  @override
  String get psEFUITagLine =>
      '¡Cuando se construye con EFUI, tus apps pueden llegar a cualquier audiencia!\n';

  @override
  String get psConsult => ' para consultas y contrataciones.';

  @override
  String get psLearnMore => ' para saber más.';

  @override
  String get psPromoLabel => 'Un video promocional de Insta SOS.';

  @override
  String get psSOSDescription =>
      'Una cámara, una baliza SOS y una lista de tus derechos, todo en un solo lugar.\nEstá disponible en inglés, árabe, español, filipino, francés, criollo, chino simplificado, y admite lectores de pantalla.';

  @override
  String get psSafeSOS => 'InstaSOS no tiene cuentas, cookies ni anuncios.\n';

  @override
  String get psFreeSOS => 'Es completamente gratuito y el código es de ';

  @override
  String get psOpenSource => 'código abierto';

  @override
  String get psWeAlso => 'También hicimos una ';

  @override
  String get psSetupGuide => 'guía de instalación';

  @override
  String get psSetupGuideHint => 'Abrir un enlace al README';

  @override
  String get psConsider => 'Por favor, considere ';

  @override
  String get psContributing => 'contribuir';

  @override
  String get psSAPS => ' al soporte del software como un servicio público.';

  @override
  String get psDownloadNow => 'Descargar ahora';

  @override
  String get psSOSIconLabel => 'Un icono de notificación de color fuerte.';

  @override
  String get psComingSoon => 'Próximamente...';

  @override
  String get psSignalPreview1 => 'La próxima aplicación de Empathetech, ';

  @override
  String get psSignalPreview1Fix => 'La próxima aplicación de Empathetic, ';

  @override
  String get psSignalPreview2 =>
      ', está en desarrollo.\n es una aplicación de red social diseñada para mantenernos alejados de las pantallas.\n';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal también estará alojada completamente por el usuario, gracias a ';

  @override
  String get psAPHint => 'Abrir un enlace a la documentación de Activity Pub';

  @override
  String get tsPageTitle => 'Equipo';

  @override
  String get tsCore => 'Núcleo';

  @override
  String get tsTheFounderLabel => 'Perfil bidimensional de Michael Waldron.';

  @override
  String get tsTheFounderHint => 'Activar para enviarle un E-mail.';

  @override
  String get tsTheFounder => 'Fundador';

  @override
  String get tsWild => 'En la naturaleza';

  @override
  String get ts2025BoothLabel => 'El stand de Empathetech en Open Sauce 2025.';

  @override
  String get ts2025BoothHint =>
      'Activar para abrir la página de los expositores de Open Sauce.';

  @override
  String get ts2025BoothDescription =>
      '¡Open Sauce (2025) fue increíble!\nFue difícil volver a la vida normal, después de estar rodeado de tantas personas amables, motivadas, inteligentes y creativas.\n¡Gracias de nuevo si pasaste por el stand de Empathetech, y hasta el próximo año!';

  @override
  String get ts2025BoothDescriptionFix =>
      '¡Open Sauce (2025) fue increíble!\nFue difícil volver a la vida normal, después de estar rodeado de tantas personas amables, motivadas, inteligentes y creativas.\n¡Gracias de nuevo si pasaste por el stand de Empathetic, y hasta el próximo año!';

  @override
  String get tsCommunity => 'Comunidad';

  @override
  String get tsFreelance => 'Independiente';

  @override
  String get tsVideoProduction => 'Producción de video';

  @override
  String get tsTranslators => 'Traductores';

  @override
  String get tsAr => 'Arabe';

  @override
  String get tsEs => 'Español';

  @override
  String get tsFil => 'Filipino';

  @override
  String get tsFr => 'Francés';

  @override
  String get tsHt => 'Criollo';

  @override
  String get tsZh => 'Chino (simplificado)';

  @override
  String tsProfile(Object name) {
    return 'Perfil de $name';
  }

  @override
  String get fahJoin => 'Únete a Fold';

  @override
  String get fahIconLabel =>
      'Logotipo de Folding at home: una molécula de proteína.';

  @override
  String get fahIconHint => 'Activar para abrir su página.';

  @override
  String get fahIntro1 => '¡Únete al ';

  @override
  String get fahIntro2 => ' equipo de Folding@home!';

  @override
  String get fahTeamHint =>
      'Abre la página del equipo Empathetic folding at home';

  @override
  String get fahWhatQ => '¿Qué es Folding@home?';

  @override
  String get fahWhatQHint => 'Abrir la página de folding at home';

  @override
  String get fahStats =>
      'Juntos, hemos ganado más de 350 millones de puntos.\n¡Lo que nos sitúa en el 2% de los mejores equipos del mundo!';

  @override
  String get csPageTitle => 'Contribuir';

  @override
  String get csEveryBit =>
      'Cada bit que das a Empathetech le quitas un byte a los gigantes tecnológicos.';

  @override
  String get csEveryBitFix =>
      'Cada bit que das a Empathetic le quitas un byte a los gigantes tecnológicos.';

  @override
  String get csGive => '¿Te gustaría contribuir...';

  @override
  String get csTimeQ => 'Tiempo?';

  @override
  String get csBecome => ' acerca de convertirse en un ';

  @override
  String get csGit => 'colaborador de GitHub';

  @override
  String get csMoneyQ => 'Dinero?';

  @override
  String csOpenLink(Object page) {
    return 'Abre un enlace al $page de Empathetic';
  }

  @override
  String get csPowerQ => 'Poder?';

  @override
  String get csThanks => '¡Muchas gracias por todo el apoyo!';
}
