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
  late final _SOSCaptionsCache _sosCaptions;

  DotnetCache(Locale locale, Lang l10n)
      : _locale = locale,
        _l10n = l10n {
    _sosCaptions = _SOSCaptionsCache(
      en: rootBundle
          .loadString(sosEnCaptionsPath)
          .then((String data) => SubRipCaptionFile(data)),
      es: rootBundle
          .loadString(sosEsCaptionsPath)
          .then((String data) => SubRipCaptionFile(data)),
      fr: rootBundle
          .loadString(sosFrCaptionsPath)
          .then((String data) => SubRipCaptionFile(data)),
    );
  }

  // Get //

  Lang get l10n => _l10n;
  Future<ClosedCaptionFile> get sosEnCap => _sosCaptions.en;
  Future<ClosedCaptionFile> get sosEsCap => _sosCaptions.es;
  Future<ClosedCaptionFile> get sosFrCap => _sosCaptions.fr;

  // Set //

  @override
  Future<void> rebuild() async {
    if (_locale != EzConfig.locale) {
      _locale = EzConfig.locale;
      _l10n = await Lang.delegate.load(EzConfig.locale);
    }
  }
}

DotnetCache get _cache => EzConfig.appCache! as DotnetCache;

Lang get l10n => _cache.l10n;
Future<ClosedCaptionFile> get sosCaptions {
  switch (EzConfig.locale.languageCode) {
    case 'es':
      return _cache.sosEsCap;
    case 'fr':
      return _cache.sosFrCap;
    default:
      return _cache.sosEnCap;
  }
}

class _SOSCaptionsCache {
  final Future<ClosedCaptionFile> en;
  final Future<ClosedCaptionFile> es;
  final Future<ClosedCaptionFile> fr;

  const _SOSCaptionsCache({
    required this.en,
    required this.es,
    required this.fr,
  });
}
