/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';

// Artists/Assets creators //

/// Kevin Crosby, photographer
/// The Hood
const String crosby = 'Kevin Crosby';

/// Elina Volkova, photographer
/// Duck Duck Fetch
const String elinaV = 'Elina Volkova';

/// Nikkolas Smith, artist
/// La Grenouille
const String nikkolas = 'Nikkolas Smith';

// Translators //

/// Alexis Nguyen
/// Freelance French (fr) translator
const Freelancer alexisN = Freelancer(
  name: 'Alexis Nguyen',
  link: 'https://www.fiverr.com/alexisnguyen2',
  image: alexisNProfile,
);

const ImageProvider alexisNProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/fa4ca8fc941f2c5e25aaa1814867e90c-1672317477265/e9da2515-5e39-4384-b6bc-2d6eec587f33.png');

/// Anastasia
/// Freelance Ukrainian (uk) && Russian (ru) translator
const Freelancer anastasia = Freelancer(
  name: 'Anastasia',
  link: 'https://www.fiverr.com/nastyuaya',
  image: anastasiaProfile,
);

const ImageProvider anastasiaProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/d3c56829b3f159ab82a3d19aba8a218c-1610614975876/d0977cfb-808b-42a0-a287-46f8586d3710.jpg');

/// Carly
/// Freelance Creole (ht) translator
const Freelancer carly = Freelancer(
  name: 'Carly',
  link: 'https://www.fiverr.com/louiscarly',
  image: carlyProfile,
);

const ImageProvider carlyProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/e753d4d365edb4f2a8a8e4aa0eb1f8de-1526514773546/6b5a9b8d-07b4-46d6-a33b-3c352a6b1204.png');

/// Hikaru
/// Freelance Japanese (ja) translator
const Freelancer hikaru = Freelancer(
  name: 'Hikaru',
  link: 'https://www.fiverr.com/hikaru03',
  image: hikaruProfile,
);

const ImageProvider hikaruProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/26453ad1d505b50459b1091982c7640d-1758531967962/e7b996d1-6c27-4e45-bc4e-67a8380af610.png');

/// Leah
/// Freelance Simplified Chinese (zh) translator
const Freelancer leah = Freelancer(
  name: 'Leah',
  link: 'https://www.fiverr.com/leahli244',
  image: leahProfile,
);

const ImageProvider leahProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/219bf43d14dd11d4a38a1820b39b5f44-1579491837074/a6d9cf14-d70e-40bf-b263-b6de546b09bf.png');

/// Marie P
/// Freelance Swahili (sw) translator
const Freelancer marieP = Freelancer(
  name: 'Marie P',
  link: 'https://www.fiverr.com/mariepetiti',
  image: mariePProfile,
);

const ImageProvider mariePProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/bc2f6b44c37fc9d039463543e352353c-1614945995810/80f01e8d-6459-4766-81cc-86862dd58b1c.jpg');

/// Patrick Karban
/// Freelance German (de) translator
const Freelancer patrickKarban = Freelancer(
  name: 'Patrick Karban',
  link: 'https://www.fiverr.com/patrickkarban',
  image: patrickKarbanProfile,
);

const ImageProvider patrickKarbanProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/c71e9b91fb04dd042fbd96b5920c36b8-1656526562463/48c38cd8-7461-4626-9882-b7d5e25d4aa9.png');

/// Priyanka S
/// Freelance Hindi (hi) translator
const Freelancer priyankaS = Freelancer(
  name: 'Priyanka S',
  link: 'https://www.fiverr.com/priyanka03',
  image: priyankaSProfile,
);

const ImageProvider priyankaSProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/045ac88494dda8b1534cad24a9977506-23343401768640660.167742/0F9704F5-D49A-45C6-A773-2A3421716DA8');

/// Remalyn
/// Freelance Filipino (fil) translator
const Freelancer remalyn = Freelancer(
  name: 'Remalyn',
  link: 'https://www.fiverr.com/remalynsayat',
  image: remalynProfile,
);

const ImageProvider remalynProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/ee71fe7797d38e2952c2b878acb71d5c-1706369353865/a2720aad-2b18-4907-8a7c-f1f6b4b18054.jpg');

/// Sara Herrera
/// Freelance Spanish (es) translator
const Freelancer saraH = Freelancer(
  name: 'Sara Herrera',
  link: 'https://www.fiverr.com/saraqua',
  image: saraHProfile,
);

const ImageProvider saraHProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/caeeca93d8d9dba80063f3bd7a58d4cb-1644185296216/02ace6d1-a57f-47c6-8a4e-68e491d55f60.jpg');

/// Super T
/// Freelance Korean (ko) translator
const Freelancer superT = Freelancer(
  name: 'Super T',
  link: 'https://www.fiverr.com/supert287',
  image: superTProfile,
);

const ImageProvider superTProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/bd169d92aa246ac823db3362a02cec39-1592531022319/13265c58-222c-413d-bfc3-76d469468069.jpg');

/// Yasmin Sid
/// Freelance Arabic (ar) translator
const Freelancer yasminS = Freelancer(
  name: 'Yasmin Sid',
  link: 'https://www.fiverr.com/yasminsid',
  image: yasminSProfile,
);

const ImageProvider yasminSProfile = NetworkImage(
    'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/9272e7a04390711a68fdde232f04e1b4-1560632522775/1a69d9e8-2c06-42e6-b79d-03e5d790032f.jpg');

// Video production //

/// Montana Monardes
/// Freelance video producer
const String montana = 'Montana Monardes';

// YWT //

/// Founder, Engineer, etc.
/// Everything else, everywhere, all the time
const String founder = 'Founder';

//* Local classes/helpers *//

class Freelancer {
  final String name;
  final String link;
  final ImageProvider image;

  const Freelancer({
    required this.name,
    required this.link,
    required this.image,
  });
}

class FreelancerCoin extends StatelessWidget {
  final EzCP config;
  final Freelancer who;

  const FreelancerCoin(
    this.config,
    this.who, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => EzCol(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: EzBox.sym(ezImageSize(config, context: context)),
            child: EzLinkWidget(
              config,
              isImage: true,
              url: Uri.parse(who.link),
              tooltip: who.link,
              label: l10n(config).gProfile(who.name),
              hint: l10n(config).gFiverrPage(who.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(config, context: context)),
                child: Image(image: who.image, fit: BoxFit.contain),
              ),
            ),
          ),
          EzText(
            config,
            text: who.name,
            style: config.bodyStyle,
            textAlign: TextAlign.center,
          ),
        ],
      );
}

class Group extends StatelessWidget {
  final EzCP config;
  final List<Widget> members;
  final String title;
  final TextStyle? titleStyle;

  const Group(
    this.config, {
    super.key,
    required this.members,
    required this.title,
    required this.titleStyle,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(config.spacing),
        child: EzCol(
          mainAxisAlignment: MainAxisAlignment.center,
          children: switch (members.length) {
            0 => <Widget>[const SizedBox.shrink()],
            1 => <Widget>[
                EzText(
                  config,
                  text: title,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                members[0],
              ],
            _ => <Widget>[
                EzText(
                  config,
                  text: title,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                EzWrap(
                  children: members
                      .map((Widget freelancer) => Padding(
                            padding: EdgeInsets.only(
                              left: config.spacing / 2,
                              right: config.spacing / 2,
                              bottom: config.spacing,
                            ),
                            child: freelancer,
                          ))
                      .toList(),
                ),
              ],
          },
        ),
      );
}
