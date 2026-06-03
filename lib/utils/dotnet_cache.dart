/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class DotnetCache extends EzAppCache {
  // Construct //

  Locale _locale;
  Lang _l10n;

  late final SOSCaptionsLib _captionsLib;

  DotnetCache(Locale locale, Lang l10n)
      : _locale = locale,
        _l10n = l10n {
    _captionsLib = SOSCaptionsLib(
      ar: rootBundle.loadString(sosArCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      de: rootBundle.loadString(sosDeCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      en: rootBundle.loadString(sosEnCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      es: rootBundle.loadString(sosEsCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      fil: rootBundle.loadString(sosFilCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      fr: rootBundle.loadString(sosFrCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      hi: rootBundle.loadString(sosHiCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      ht: rootBundle.loadString(sosHtCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      ja: rootBundle.loadString(sosJaCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      ko: rootBundle.loadString(sosKoCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      ru: rootBundle.loadString(sosRuCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      sw: rootBundle.loadString(sosSwCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      uk: rootBundle.loadString(sosUkCaptionsPath).then((String data) => SubRipCaptionFile(data)),
      zh: rootBundle.loadString(sosZhCaptionsPath).then((String data) => SubRipCaptionFile(data)),
    );
  }

  // Set //

  @override
  void init(_) {}

  @override
  Future<void> rebuild() async {
    if (_locale != EzConfig.locale) {
      _locale = EzConfig.locale;
      _l10n = await Lang.delegate.load(EzConfig.locale);
    }
  }
}

DotnetCache get _cache => EzConfig.appCache! as DotnetCache;

Lang get l10n => _cache._l10n;

Future<ClosedCaptionFile> get sosCaptions => switch (EzConfig.locale.languageCode) {
      'ar' => _cache._captionsLib.ar,
      'de' => _cache._captionsLib.de,
      'es' => _cache._captionsLib.es,
      'fil' => _cache._captionsLib.fil,
      'fr' => _cache._captionsLib.fr,
      'hi' => _cache._captionsLib.hi,
      'ht' => _cache._captionsLib.ht,
      'ja' => _cache._captionsLib.ja,
      'ko' => _cache._captionsLib.ko,
      'ru' => _cache._captionsLib.ru,
      'sw' => _cache._captionsLib.sw,
      'uk' => _cache._captionsLib.uk,
      'zh' => _cache._captionsLib.zh,
      'en' || _ => _cache._captionsLib.en,
    };

class SOSCaptionsLib {
  final Future<ClosedCaptionFile> ar;
  final Future<ClosedCaptionFile> de;
  final Future<ClosedCaptionFile> en;
  final Future<ClosedCaptionFile> es;
  final Future<ClosedCaptionFile> fil;
  final Future<ClosedCaptionFile> fr;
  final Future<ClosedCaptionFile> hi;
  final Future<ClosedCaptionFile> ht;
  final Future<ClosedCaptionFile> ja;
  final Future<ClosedCaptionFile> ko;
  final Future<ClosedCaptionFile> ru;
  final Future<ClosedCaptionFile> sw;
  final Future<ClosedCaptionFile> uk;
  final Future<ClosedCaptionFile> zh;

  const SOSCaptionsLib({
    required this.ar,
    required this.de,
    required this.en,
    required this.es,
    required this.fil,
    required this.fr,
    required this.hi,
    required this.ht,
    required this.ja,
    required this.ko,
    required this.ru,
    required this.sw,
    required this.uk,
    required this.zh,
  });
}
