// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class LangEs extends Lang {
  LangEs([String locale = 'es']) : super(locale);

  @override
  String get gYWTLogoLabel => 'un reloj de arena bidimensional.';

  @override
  String get gYWTLogoHint => 'Activar para ir a la página de inicio.';

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
  String get gAnEmail => 'un email';

  @override
  String get gEmailHint => 'Abrir el cliente de email';

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
  String get gYWTGitHint => 'Abrir la página de GitHub de YWT';

  @override
  String gImageCredit(Object creator) {
    return 'Crédito de la imagen: $creator';
  }

  @override
  String get gReachOut => 'Contacto';

  @override
  String gProfile(Object name) {
    return 'Perfil de $name';
  }

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
  String get hsAnimLabel =>
      'Logotipo animado de YWT: las letras de YWT se transforman en el logotipo bidimensional del reloj de arena';

  @override
  String get hsChange => 'Es hora de cambiar';

  @override
  String get hsmIDProblem => 'Identificación del problema';

  @override
  String get hsmIDProblemContent =>
      'Los modelos de negocio que dan prioridad al beneficio no son sostenibles.\n\nPor definición, cosas como trabajar por una misión, tratar bien a las personas y consumir recursos de forma responsable pasan a un segundo plano.\n\nLos gigantes tecnológicos no se conforman con llevarse nuestro dinero. Ahora construyen productos para captar nuestras identidades y monopolizar nuestras mentes. Y nadie les dice nada.';

  @override
  String get hsmSoWe => 'Así que nosotros';

  @override
  String get hsmFindSolution => 'Encuentra una solución';

  @override
  String get hsmFindSolutionContent =>
      'Afortunadamente, hay tecnólogos increíbles en todo el mundo que trabajan juntos para lograr una mejor narrativa.\nUna en la que los proveedores de servicios y los clientes tengan una relación activa, saludable y mutuamente beneficiosa.\n\nLa comunidad de código abierto.\n\nEn esencia, el software de código abierto está disponible de forma gratuita para que cualquiera lo vea. Muchos proyectos también se pueden modificar y redistribuir libremente.\nEs un software que no tiene nada que ocultar, creado por gente que reconoce que los problemas compartidos requieren soluciones compartidas.\n\nY en el maravilloso mundo del software de código abierto, existe una subcategoría: el software de alojamiento propio.\n\nEl alojamiento propio nos permite tomar cualquier computadora que no esté en uso (incluso las de bolsillo) y almacenar allí nuestros datos.\nAl alojarnos nosotros mismos, podemos controlar nuestra propia presencia digital, en lugar de ceder el control a un servidor lejano, propiedad de una corporación poco empática.\n\n¡Y existen versiones alojadas por nosotros mismos de casi todo! Desde Adobe hasta Zoom, hay hacktivistas apasionados que crean alternativas que priorizan a las personas por sobre las ganancias.\n\nEntonces, ¿cómo se hace la transición de un código cerrado que prioriza las ganancias a un código abierto? ¿Cómo empiezan a alojar sus propios archivos?\nRequiere mucho tiempo, energía y conocimientos previos.\n\nAhí es donde entramos nosotros.';

  @override
  String get hsmBy => 'Por';

  @override
  String get hsmProvideValue => 'Haciendo el trabajo';

  @override
  String get hsmProvideValueContent1 =>
      'YWT está reequilibrando la tecnología al hacer que el autohospedaje sea más accesible.\n\nConstruiremos aplicaciones que permitan a cualquiera ser dueño de su identidad digital.\nConstruiremos puentes entre la comunidad de código abierto y aquellos sin el tiempo, la energía o los conocimientos previos requeridos.\n\n¡Y no se pueden construir puentes (ni aplicaciones) sin una base sólida! Es por eso que ';

  @override
  String get hsmProvideValueContent2 =>
      ' existe.\nNos enorgullece respaldar las palabras con acciones y hemos hecho que nuestra interfaz de usuario accesible sea de código abierto.\n\nConstruyamos juntos un mundo mejor, bit a bit.';

  @override
  String get hsmFirst => 'Por primera vez';

  @override
  String get psPageTitle => 'Productos';

  @override
  String get psTitleHint => 'Mostrar lista';

  @override
  String get psShowDemo => 'Mostrar demo';

  @override
  String get psHideDemo => 'Ocultar demo';

  @override
  String get psShowPromo => 'Mostrar promo';

  @override
  String get psHidePromo => 'Ocultar promo';

  @override
  String get psLearnMore => ' para saber más.';

  @override
  String get psDownloadNow => 'Descargar ahora';

  @override
  String get psComingSoon => 'Próximamente...';

  @override
  String get ouSlogan => 'Crea apps para todos';

  @override
  String get ouLike => 'Como usuarios que necesitan ...';

  @override
  String get ouAccessible => 'Controles accesibles';

  @override
  String get ouZeroStrain => 'cero fatiga visual';

  @override
  String get ouEverything => 'Algo más';

  @override
  String get ouRandom => 'Configuración aleatoria aplicada.';

  @override
  String get ouIs => 'Open UI es un generador de aplicaciones.';

  @override
  String get ouDemo => 'Demostración de Open UI creando una nueva aplicación.';

  @override
  String get ouFoundation =>
      'Crea la base para aplicaciones accesibles, multiplataforma, multilingües y listas para producción en un solo clic.';

  @override
  String get ouLocal =>
      'Todo funciona en tu ordenador. No hay credenciales, tarjetas de crédito ni cookies.';

  @override
  String get ouRequirements =>
      'Los únicos requisitos son una conexión a Internet y una idea.';

  @override
  String get ouFlutterToo => '...y Flutter...';

  @override
  String get ouPlatform => 'Disponibilidad de plataforma';

  @override
  String get ouPlatformContent =>
      '¡Puedes usar Open UI para crear apps de Android, iOS, Linux, macOS, Windows y Web!';

  @override
  String get ouResponsive => 'Diseño adaptativo';

  @override
  String get ouResponsiveContent =>
      'Para verlo en acción, ¡interactúa con la ventana que estás usando ahora mismo!';

  @override
  String get ouScreen => 'Soporte para lectores de pantalla';

  @override
  String get ouScreenContent =>
      'Las apps de OUI ayudan a los usuarios que lo necesitan ';

  @override
  String get ouTalkBackHint => 'Abrir un enlace a la documentación de TalkBack';

  @override
  String get ouAnd => ' y ';

  @override
  String get ouVoiceOverHint =>
      'Abrir un enlace a la documentación de VoiceOver';

  @override
  String get ouCustom => 'Personalización del usuario';

  @override
  String get ouCustomContent =>
      '¡La única forma de ser verdaderamente accesible para TODOS los clientes es brindarles la libertad de elección!\nOpen UI proporciona una UX elegante para un control total sobre la apariencia de una aplicación.';

  @override
  String get ouInternational => 'Internacionalización';

  @override
  String get ouInternationalContent =>
      'Las aplicaciones de OUI se han traducido a 14 idiomas (hasta el momento).\nOUI también proporciona la infraestructura para futuras traducciones ilimitadas.';

  @override
  String get ouReliability => 'Fiabilidad';

  @override
  String get ouReliabilityContent =>
      'El software de YWT está diseñado para durar. Esto NO es generación de código de IA.\nLas programadoras son personas. Los LLM son como patos de goma.';

  @override
  String get ouGetStarted => 'Velo en directo';

  @override
  String get ouIconLabel => 'un configuración sandbox.';

  @override
  String get ouTagLine =>
      '¡Cuando se construye con Open UI, tus apps pueden llegar a cualquier audiencia!\n';

  @override
  String get sosPromoLabel => 'Un video promocional de Insta SOS.';

  @override
  String get sosDescription =>
      'Una cámara, una baliza SOS y una lista de tus derechos, todo en un solo lugar.\nEstá disponible en 14 idiomas y es compatible con lectores de pantalla.';

  @override
  String get sosPrivate => 'InstaSOS no tiene cuentas, cookies ni anuncios.\n';

  @override
  String get sosFree => 'Es completamente gratuito y el código es de ';

  @override
  String get sosOpenSource => 'código abierto';

  @override
  String get sosConsider => 'Por favor, considere ';

  @override
  String get sosContributing => 'contribuir';

  @override
  String get sosSAPS => ' al soporte del software como un servicio público.';

  @override
  String get sosIconLabel => 'Un icono de notificación de color fuerte.';

  @override
  String get sosWeb =>
      'Una forma específica y de gran impacto de contribuir sería asumir el costo de alojar InstaSOS en línea.\n\nLos dueños de las tiendas de aplicaciones han dejado claras sus lealtades, e InstaSOS podría ser eliminada si/cuando gane tracción.\nLos usuarios de Android siempre tendrán la opción de instalarla manualmente, pero la única alternativa viable para los usuarios de iOS sería una aplicación web.\n\nAfortunadamente, el procesamiento de las aplicaciones hechas en Flutter se realiza del lado del cliente, por lo que la factura sería baja.\nSolo tendríamos (tendrías) que pagar por la gestión del tráfico.';

  @override
  String get sosTranslators => 'Traductoras';

  @override
  String get llInDev =>
      'Liminal está en desarrollo.\nSu diseño se inclina hacia el minimalismo, pero está construido con ';

  @override
  String get llWhimsy =>
      'Así que tu pantalla de inicio estará libre de desorden y distracciones, Y será ilimitadamente personalizable.\nCon un toque de fantasía para rematar.';

  @override
  String get llTheHood =>
      'Una pantalla de inicio de muestra con una foto del monte Hood en Portland.';

  @override
  String get llLasRosas =>
      'Una pantalla de inicio de muestra con una foto del jardín de rosas de Portland.';

  @override
  String get llFrogAndPigs =>
      'Una pantalla de inicio de muestra con una foto de la fauna de Portland.';

  @override
  String get llModel =>
      'Liminal se lanzará bajo un modelo de \"paga lo que puedas\".\nLa versión de Google Play será de pago, porque el (buen) código no se escribe solo.\nEl repositorio de GitHub también tendrá un APK disponible de forma gratuita, porque una relación saludable con la tecnología no debería ser exclusiva de quienes tienen ingresos disponibles.';

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
  String get fahTeamHint => 'Abre la página del equipo YWT folding at home';

  @override
  String get fahWhats => '¿Qué es ';

  @override
  String get fahName => 'Folding@home?';

  @override
  String get fahNameHint => 'Abrir la página de folding at home';

  @override
  String get fahStats =>
      'Juntos, hemos ganado más de 400 millones de puntos.\n¡Lo que nos sitúa en el 2% de los mejores equipos del mundo!';

  @override
  String get csPageTitle => 'Contribuir';

  @override
  String get csEveryBit =>
      'Cada bit que das a nos le quitas un byte a los gigantes tecnológicos.';

  @override
  String get csTime => 'Tiempo';

  @override
  String get csBecome => ' acerca de convertirse en un ';

  @override
  String get csGit => 'colaborador de GitHub';

  @override
  String get csMoney => 'Dinero';

  @override
  String csOpenLink(Object page) {
    return 'Abre un enlace al $page de YWT';
  }

  @override
  String get csPower => 'Poder';

  @override
  String get csThanks => '¡Muchas gracias por todo el apoyo!';
}
