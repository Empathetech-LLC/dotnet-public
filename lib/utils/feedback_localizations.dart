import 'package:flutter/material.dart';
import 'package:feedback/feedback.dart';

class DotnetEnFeedbackLocalizations extends FeedbackLocalizations {
  @override
  String get draw => 'Draw';

  @override
  String get feedbackDescriptionText => "What's on your mind?";

  @override
  String get navigate => 'Interact';

  @override
  String get submitButtonText => 'Submit';
}

class DotnetEsFeedbackLocalizations extends FeedbackLocalizations {
  @override
  String get draw => 'Dibujar';

  @override
  String get feedbackDescriptionText => '¿Qué tienes en mente?';

  @override
  String get navigate => 'Interactuar';

  @override
  String get submitButtonText => 'Enviar comentarios';
}

class DotnetFeedbackLocalizationsDelegate
    extends GlobalFeedbackLocalizationsDelegate {
  @override
  Map<Locale, FeedbackLocalizations> get supportedLocales =>
      <Locale, FeedbackLocalizations>{
        const Locale('en'): DotnetEnFeedbackLocalizations(),
        const Locale('es'): DotnetEsFeedbackLocalizations(),
      };
}
