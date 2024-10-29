import 'lang.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class LangEs extends Lang {
  LangEs([String locale = 'es']) : super(locale);

  @override
  String get gLogoHint =>
      'Logotipo de Empathetic LLC: un reloj de arena bidimensional. Activar para ir a la página de inicio';

  @override
  String get gHomeHint => 'Abrir la página de inicio';

  @override
  String get gProductsHint => 'Abrir la página de productos';

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
  String get gSettingsHint => 'Abrir la página de configuraciones';

  @override
  String get gReachOut => 'Contacto';

  @override
  String get gEmpathetechGitHint =>
      'Abrir la página de GitHub de Empathetic LLC';

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
  String get gFahIconHint =>
      'Logotipo de Folding at home: una molécula de proteína. Activar para abrir su página';

  @override
  String gFiverrPage(Object user) {
    return 'Abre la página de $user en Fiverr';
  }

  @override
  String get hsSlogan => 'Construyamos juntos un mundo mejor\nbit x bit';

  @override
  String get hsSloganFix => 'Construyamos juntos un mundo mejor\npoco a poco';

  @override
  String get hsVideoHint =>
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
  String get psPageTitle => 'Productos';

  @override
  String get psCreate => 'Para crear';

  @override
  String get psUse => 'Para usar';

  @override
  String get psEFUISlogan => 'Crea apps para todos';

  @override
  String get psLike => 'Como usuarios que necesitan ...';

  @override
  String get psAccessible => 'Controles accesibles';

  @override
  String get psZeroStrain => 'cero fatiga visual';

  @override
  String get psEverything => 'algo más';

  @override
  String get psRandom => 'Configuración aleatoria aplicada.';

  @override
  String get psEFUIDescription =>
      'EFUI es un kit de inicio para creaciones accesibles de verdad apps.\nEFUI se encarga de todos los aspectos de la accesibilidad digital...';

  @override
  String get psPlatform => 'Disponibilidad de plataforma';

  @override
  String get psPlatformContent =>
      'Las apps de Empathetech soportan usuarios en todas las plataformas.\n¡Puedes usar EFUI para crear apps de Android, iOS, Linux, MacOS, Windows y Web!';

  @override
  String get psPlatformContentFix =>
      'Las apps de Empathetic soportan usuarios en todas las plataformas.\n¡Puedes usar EFUI para crear apps de Android, iOS, Linux, MacOS, Windows y Web!';

  @override
  String get psResponsive => 'Diseño adaptativo';

  @override
  String get psResponsiveContent =>
      'Las apps de Empathetech soportan usuarios en cualquier pantalla.\nPara verlo en acción, ¡interactúa con la ventana que estás usando ahora mismo!';

  @override
  String get psResponsiveContentFix =>
      'Las apps de Empathetic soportan usuarios en cualquier pantalla.\nPara verlo en acción, ¡interactúa con la ventana que estás usando ahora mismo!';

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
      'Las apps de Empathetech apoyan a todos los usuarios dándoles la libertad de elegir.\nEFUI expone cada aspecto del tema de una aplicación para que sea controlado por el usuario.\nPara verlo en acción, ¡haz clic en el engranaje de configuración en la parte inferior de tu pantalla!';

  @override
  String get psCustomContentFix =>
      'Las apps de Empathetic apoyan a todos los usuarios dándoles la libertad de elegir.\nEFUI expone cada aspecto del tema de una aplicación para que sea controlado por el usuario.\nPara verlo en acción, ¡haz clic en el engranaje de configuración en la parte inferior de tu pantalla!';

  @override
  String get psInternational => 'Internacionalización';

  @override
  String get psInternationalContent =>
      'Las apps de Empathetech apoyan a los usuarios estén donde estén.\nAhora mismo, EFUI está disponible en inglés, español y francés.\nAdemás, tiene la infraestructura para ilimitadas futuras traducciones.';

  @override
  String get psInternationalContentFix =>
      'Las apps de Empathetic apoyan a los usuarios estén donde estén.\nAhora mismo, EFUI está disponible en inglés, español y francés.\nAdemás, tiene la infraestructura para ilimitadas futuras traducciones.';

  @override
  String get psLive => 'Velo en directo';

  @override
  String psLiveHint(Object platform) {
    return 'El icono de Open UI: un configuración sandbox. Abrir un enlace a Open UI en $platform';
  }

  @override
  String get psEFUITagLine =>
      'Cuando se construye con EFUI, tus apps pueden llegar a cualquier audiencia.\n';

  @override
  String get psConsult => ' para consultas y contrataciones.';

  @override
  String get psLearnMore => ' para saber más.';

  @override
  String get psComingSoon => 'Próximamente...';

  @override
  String get psSignalHint =>
      'El icono de Smoke Signal. Abre un enlace al repositorio de desarrollo.';

  @override
  String get psSignalPreview1 => 'La próxima aplicación de Empathetech, ';

  @override
  String get psSignalPreview1Fix => 'La próxima aplicación de Empathetic, ';

  @override
  String get psSignalPreview2 =>
      ', está en desarrollo.\n es una aplicación de redes sociales diseñada para mantenernos alejados de las pantallas.\n';

  @override
  String get psSignalPreview3 =>
      'Smoke Signal también estará alojada completamente por el usuario, gracias a ';

  @override
  String get psAPHint => 'Abrir un enlace a la documentación de Activity Pub';

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
  String get tsPageTitle => 'Equipo';

  @override
  String get tsCore => 'Núcleo';

  @override
  String get tsTheFounderImageHint =>
      'Perfil bidimensional de Michael Waldron. Activar para enviarle un E-mail.';

  @override
  String get tsTheFounder => 'Fundador';

  @override
  String get tsCommunity => 'Comunidad';

  @override
  String get tsFreelance => 'Independiente';

  @override
  String get tsSpanish => 'Traductora de español';

  @override
  String get tsFrench => 'Traductor de francés';

  @override
  String get csPageTitle => 'Contribuir';

  @override
  String get csThanks => '¡Muchas gracias por todo el apoyo!';

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
  String get csPowerQ => 'Poder?';

  @override
  String get fahJoin => 'Únete a Fold';

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
}
