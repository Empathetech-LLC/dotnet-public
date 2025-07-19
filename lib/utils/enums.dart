/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum Products { openUI, sos, smokeSignal }

extension Config on Products {
  String get name {
    switch (this) {
      case Products.openUI:
        return 'Open UI';
      case Products.sos:
        return 'InstaSOS';
      case Products.smokeSignal:
        return 'Smoke Signal';
    }
  }

  String get path {
    switch (this) {
      case Products.openUI:
        return 'products/open-ui';
      case Products.sos:
        return 'products/sos';
      case Products.smokeSignal:
        return 'products/smoke-signal';
    }
  }

  String get url {
    switch (this) {
      case Products.openUI:
        return 'https://www.empathetech.net/#/products/open-ui';
      case Products.sos:
        return 'https://www.empathetech.net/#/products/sos';
      case Products.smokeSignal:
        return 'https://www.empathetech.net/#/products/smoke-signal';
    }
  }
}
