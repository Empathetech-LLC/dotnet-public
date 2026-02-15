/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum Products { openUI, sos, liminal, smokeSignal, verified }

extension Config on Products {
  String get name {
    switch (this) {
      case Products.openUI:
        return 'Open UI';
      case Products.sos:
        return 'InstaSOS';
      case Products.liminal:
        return 'Liminal Launcher';
      case Products.smokeSignal:
        return 'Smoke Signal';
      case Products.verified:
        return 'Verified';
    }
  }

  String get path {
    switch (this) {
      case Products.openUI:
        return 'products/open-ui';
      case Products.sos:
        return 'products/sos';
      case Products.liminal:
        return 'products/liminal';
      case Products.smokeSignal:
        return 'products/smoke-signal';
      case Products.verified:
        return 'products/verified';
    }
  }

  String get url {
    switch (this) {
      case Products.openUI:
        return 'https://www.empathetech.net/#/products/open-ui';
      case Products.sos:
        return 'https://www.empathetech.net/#/products/sos';
      case Products.liminal:
        return 'https://www.empathetech.net/#/products/liminal';
      case Products.smokeSignal:
        return 'https://www.empathetech.net/#/products/smoke-signal';
      case Products.verified:
        return 'https://www.empathetech.net/#/products/verified';
    }
  }
}
