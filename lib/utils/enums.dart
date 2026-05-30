/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum Products {
  openUI,
  sos,
  liminal,
  smokeSignal,
  translations,
  verified,
}

extension Config on Products {
  String get name => switch (this) {
        Products.openUI => 'Open UI',
        Products.sos => 'InstaSOS',
        Products.liminal => 'Liminal Launcher',
        Products.smokeSignal => 'Smoke Signal',
        Products.translations => 'Translations',
        Products.verified => 'Verified',
      };

  String get path => switch (this) {
        Products.openUI => 'products/open-ui',
        Products.sos => 'products/sos',
        Products.liminal => 'products/liminal',
        Products.smokeSignal => 'products/smoke-signal',
        Products.translations => 'products/translations',
        Products.verified => 'products/verified',
      };

  String get url => switch (this) {
        Products.openUI => 'https://www.empathetech.net/#/products/open-ui',
        Products.sos => 'https://www.empathetech.net/#/products/sos',
        Products.liminal => 'https://www.empathetech.net/#/products/liminal',
        Products.smokeSignal => 'https://www.empathetech.net/#/products/smoke-signal',
        Products.translations => 'https://www.empathetech.net/#/products/translations',
        Products.verified => 'https://www.empathetech.net/#/products/verified',
      };
}
