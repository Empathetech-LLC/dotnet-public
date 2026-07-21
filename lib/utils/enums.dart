/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum Products {
  openUI,
  sos,
  liminal,
  verified,
}

extension Config on Products {
  String get name => switch (this) {
        Products.openUI => 'Open UI',
        Products.sos => 'InstaSOS',
        Products.liminal => 'Liminal Launcher',
        Products.verified => 'Verified',
      };

  String get path => switch (this) {
        Products.openUI => 'products/open-ui',
        Products.sos => 'products/sos',
        Products.liminal => 'products/liminal',
        Products.verified => 'products/verified',
      };

  String get url => switch (this) {
        Products.openUI => 'https://www.ywt.llc/#/products/open-ui',
        Products.sos => 'https://www.ywt.llc/#/products/sos',
        Products.liminal => 'https://www.ywt.llc/#/products/liminal',
        Products.verified => 'https://www.ywt.llc/#/products/verified',
      };
}
