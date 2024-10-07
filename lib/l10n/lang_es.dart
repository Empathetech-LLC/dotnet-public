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
  String get gPlanHint => 'Abrir la página del plan';

  @override
  String get gTeamHint => 'Abrir la página del equipo';

  @override
  String get gSupportHint => 'Abrir la página de soporte';

  @override
  String get gSocials => 'Sociales';

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
  String get gAnitaBorgIconHint =>
      'Logotipo de AnitaB.org: un prisma de arco iris. Activar para abrir su sitio';

  @override
  String get gCodeDotOrgIconHint =>
      'Logotipo de code.org: teclas de un teclado deletreando la palabra code. Activar para abrir su sitio';

  @override
  String get gWorldSavvyIconHint =>
      'Logotipo de World Savvy: un dibujo del globo terráqueo a lápiz. Activar para abrir su sitio';

  @override
  String gFiverrPage(Object user) {
    return 'Abre la página de $user en Fiverr';
  }

  @override
  String get hsSlogan => 'Construye un mundo mejor\nbit x bit';

  @override
  String get hsSloganFix => 'Construye un mundo mejor\npoco a poco';

  @override
  String get hsVideoHint =>
      'Logotipo animado de Empathetic LLC: las letras de Empathetic se transforman en el logotipo bidimensional del reloj de arena';

  @override
  String get psPageTitle => 'Productos';

  @override
  String get psEFUISlogan => 'Crea apps para todos';

  @override
  String get psEFUIDescription1 =>
      'EFUI es un kit de inicio para creaciones accesibles de verdad ';

  @override
  String get psEFUIDescription2 =>
      ' apps.\nEFUI se encarga de todos los aspectos de la accesibilidad digital...';

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
      'Cuando se construye con EFUI, tus apps pueden llegar a cualquier audiencia.\n¡Mejoremos Internet juntos!';

  @override
  String get psConsult => ' para consultas y contrataciones.';

  @override
  String get plsPageTitle => 'Plan';

  @override
  String get plsThen => 'Entonces';

  @override
  String get plsBefore => 'Antes de esto';

  @override
  String get plsIDProblem => 'Identifica el problema';

  @override
  String get plsIDProblemContent =>
      'Los modelos de negocio que dan prioridad al beneficio no son sostenibles.\n\nPor definición, cosas como trabajar por una misión, tratar bien a las personas y consumir recursos de forma responsable pasan a un segundo plano.\n\nLos gigantes tecnológicos no se conforman con llevarse nuestro dinero. Ahora construyen productos para captar nuestras identidades y monopolizar nuestras mentes. Y nadie les dice nada.';

  @override
  String get plsBeSolution => 'Sé parte de la solución';

  @override
  String get plsBeSolutionContent =>
      'Afortunadamente, hay tecnólogos increíbles por todo el mundo que luchan conjuntamente por una mejor narrativa. Una en la que los proveedores de servicios y los clientes mantengan una relación activa, saludable y mutuamente beneficiosa.\n\nLa comunidad del código abierto.\n\nEn su esencia, el software de código abierto está disponible abiertamente a todos. Muchos proyectos también pueden modificarse y redistribuirse libremente. Se trata de software sin nada que ocultar, creado por personas que reconocen que los problemas colectivos requieren soluciones colectivas.\n\nEntonces, ¿cómo se pasa del código cerrado al código abierto? Requiere mucho tiempo, energía y conocimiento.\n\nAhí es donde entramos nosotros.';

  @override
  String get plsProvideValue => 'Aportar valor';

  @override
  String get plsProvideValueContent1 =>
      'Nuestra misión es reequilibrar el poder en la tecnología, haciendo que el software de código abierto sea más accesible.\n\nConstruiremos aplicaciones accesibles y multiplataforma para gestionar fácilmente un ecosistema de herramientas de código abierto.\n\nConstruiremos puentes entre la comunidad de código abierto y aquellos que no tienen suficiente tiempo, energía o conocimiento.\n\nY no se pueden construir puentes (o aplicaciones) sin una base sólida. Es por eso que ';

  @override
  String get plsProvideValueContent2 =>
      ' existe. Nos enorgullecemos de convertir las palabras en acciones, y hemos hecho que nuestra interfaz de usuario accesible sea de código abierto.\n\nConstruyamos juntos un mundo mejor, poco a poco.';

  @override
  String get fpsPageTitle => 'Plan financiero';

  @override
  String get fpsPageHint => 'Abrir la página del plan financiero';

  @override
  String get fpsGoal0 => 'Cubrir gastos';

  @override
  String get fpsGoal1 => 'Pagar un salario mínimo';

  @override
  String get fpsGoal2 => 'Pagar un salario básico';

  @override
  String get fpsGoal3 => 'Pagar un salario decente';

  @override
  String get fpsGoal4 => 'Pagar un salario digno';

  @override
  String fpsRaised(Object goal, Object income) {
    return '$income de $goal aumentado';
  }

  @override
  String fpsSplit(Object split) {
    return '$split será donado a...';
  }

  @override
  String get fpsEventual => 'Cualquier beneficio futuro se repartirá con...';

  @override
  String get fpsCheck => 'Comprueba nuestros cálculos';

  @override
  String get fpsCheckHint =>
      'Abre un enlace de Gitjab al código fuente de esta pantalla';

  @override
  String get tsPageTitle => 'Equipo';

  @override
  String get tsCore => 'Núcleo';

  @override
  String get tsTheFounderImageHint => 'Perfil bidimensional de Michael Waldron';

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
  String get spsPageTitle => 'Soporte';

  @override
  String get spsThanks => '¡Muchas gracias por todo el apoyo!';

  @override
  String get spsGive => '¿Te gustaría contribuir...';

  @override
  String get spsTimeQ => 'Tiempo?';

  @override
  String get spsBecome => ' acerca de convertirse en un ';

  @override
  String get spsGit => 'colaborador de GitHub';

  @override
  String get spsMoneyQ => 'Dinero?';

  @override
  String get spsPowerQ => 'Poder?';

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
