/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:open_ui/open_ui.dart';

class DotnetCache extends EzAppCache {
  // Construct //

  Locale _locale;
  Lang _l10n;

  late final SOSCaptionsLib _captionsLib;

  DotnetCache(Locale locale, Lang l10n)
      : _locale = locale,
        _l10n = l10n {
    _captionsLib = SOSCaptionsLib(
      ar: rootBundle.loadString(sosArCCPath).then((String cc) => SubRipCaptionFile(cc)),
      de: rootBundle.loadString(sosDeCCPath).then((String cc) => SubRipCaptionFile(cc)),
      en: rootBundle.loadString(sosEnCCPath).then((String cc) => SubRipCaptionFile(cc)),
      es: rootBundle.loadString(sosEsCCPath).then((String cc) => SubRipCaptionFile(cc)),
      fil: rootBundle.loadString(sosFilCCPath).then((String cc) => SubRipCaptionFile(cc)),
      fr: rootBundle.loadString(sosFrCCPath).then((String cc) => SubRipCaptionFile(cc)),
      hi: rootBundle.loadString(sosHiCCPath).then((String cc) => SubRipCaptionFile(cc)),
      ht: rootBundle.loadString(sosHtCCPath).then((String cc) => SubRipCaptionFile(cc)),
      ja: rootBundle.loadString(sosJaCCPath).then((String cc) => SubRipCaptionFile(cc)),
      ko: rootBundle.loadString(sosKoCCPath).then((String cc) => SubRipCaptionFile(cc)),
      ru: rootBundle.loadString(sosRuCCPath).then((String cc) => SubRipCaptionFile(cc)),
      sw: rootBundle.loadString(sosSwCCPath).then((String cc) => SubRipCaptionFile(cc)),
      uk: rootBundle.loadString(sosUkCCPath).then((String cc) => SubRipCaptionFile(cc)),
      zh: rootBundle.loadString(sosZhCCPath).then((String cc) => SubRipCaptionFile(cc)),
    );
  }

  // Set //

  @override
  void init(_) {}

  @override
  Future<void> rebuild(EzCP config) async {
    if (_locale != config.locale) {
      _locale = config.locale;
      _l10n = await Lang.delegate.load(config.locale);
    }
  }
}

DotnetCache _cache(EzCP config) => config.appCache! as DotnetCache;

Lang l10n(EzCP config) => _cache(config)._l10n;

Future<ClosedCaptionFile> sosCaptions(EzCP config) => switch (config.locale.languageCode) {
      'ar' => _cache(config)._captionsLib.ar,
      'de' => _cache(config)._captionsLib.de,
      'es' => _cache(config)._captionsLib.es,
      'fil' => _cache(config)._captionsLib.fil,
      'fr' => _cache(config)._captionsLib.fr,
      'hi' => _cache(config)._captionsLib.hi,
      'ht' => _cache(config)._captionsLib.ht,
      'ja' => _cache(config)._captionsLib.ja,
      'ko' => _cache(config)._captionsLib.ko,
      'ru' => _cache(config)._captionsLib.ru,
      'sw' => _cache(config)._captionsLib.sw,
      'uk' => _cache(config)._captionsLib.uk,
      'zh' => _cache(config)._captionsLib.zh,
      _ => _cache(config)._captionsLib.en,
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
