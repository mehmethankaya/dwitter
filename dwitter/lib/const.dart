import 'dart:ui';

import 'package:flutter/material.dart';

List<String> names = [
  "Mehmethan Kaya",
  "Cristiano Ronaldo",
  "Lionel Messi",
  "Gerard Pique",
  "Recep Tayyip Erdoğan",
  "Mehmethan Kaya",
  "Cristiano Ronaldo",
  "Lionel Messi",
  "Gerard Pique",
  "Recep Tayyip Erdoğan"
];
List<String> nicknames = [
  "Mehmethankaya29",
  "Cristiano",
  "messi",
  "3gerardpique",
  "RTErdoğan",
  "Mehmethankaya29",
  "Cristiano",
  "messi",
  "3gerardpique",
  "RTErdoğan"
];
Color seffaf = Colors.white.withOpacity(0.6);
Color beyaz = Colors.white;
Color home = Colors.white;
Color search = Colors.white.withOpacity(0.6);
Color ring = Colors.white.withOpacity(0.6);
Color mailbox = Colors.white.withOpacity(0.6);
List<int> times = [1, 4, 8, 11, 5, 1, 4, 8, 11, 5];
List<String> messages = [
  "Bu uygulama Twitter klonu olup benim tarafımdan 1 günden kısa sürede geliştirilmiştir.",
  "One more step in the right direction. We know what we want and what we have to do in order to get it. It’s up to us! Well done, lads! Let’s go, Devils!",
  "Reaching this historic milestone of 644 goals with the same club gives me a lot of joy, but what is really more important is being able to give something back to the kids struggling with their health.",
  "I am so excited to finally share my website with you and challenge views around disabilities. Please help support this cause so I can support others like me. Let’s do this together",
  "Bunun da geçmesiyle stokçuluğa da ağır cezalar vermek suretiyle bu alanda da tedbirlerimizi artırmış olacağız.",
  "Bu uygulama Twitter klonu olup benim tarafımdan 1 günden kısa sürede geliştirilmiştir.",
  "One more step in the right direction. We know what we want and what we have to do in order to get it. It’s up to us! Well done, lads! Let’s go, Devils!",
  "Reaching this historic milestone of 644 goals with the same club gives me a lot of joy, but what is really more important is being able to give something back to the kids struggling with their health.",
  "I am so excited to finally share my website with you and challenge views around disabilities. Please help support this cause so I can support others like me. Let’s do this together",
  "Bunun da geçmesiyle stokçuluğa da ağır cezalar vermek suretiyle bu alanda da tedbirlerimizi artırmış olacağız."
];
List<String> photos = [
  "https://instagram.fsaw2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/167699689_285455602991160_1499003817181380641_n.jpg?_nc_ht=instagram.fsaw2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=lMfqrVTEoAgAX_i7lnK&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8_zUwZrNuLQLqRDLdfKk0SQ4odbWg1g4r8l1Xh3BkNhg&oe=61D71BD5&_nc_sid=7bff83",
  "https://pbs.twimg.com/profile_images/1157313327867092993/a09TxL_1_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1220285531164233729/A98RISKc_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1303854832894312450/YbdVhwef_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1151410974240444416/yVvaD7hU_400x400.jpg",
  "https://instagram.fsaw2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/167699689_285455602991160_1499003817181380641_n.jpg?_nc_ht=instagram.fsaw2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=lMfqrVTEoAgAX_i7lnK&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8_zUwZrNuLQLqRDLdfKk0SQ4odbWg1g4r8l1Xh3BkNhg&oe=61D71BD5&_nc_sid=7bff83",
  "https://pbs.twimg.com/profile_images/1157313327867092993/a09TxL_1_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1220285531164233729/A98RISKc_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1303854832894312450/YbdVhwef_400x400.jpg",
  "https://pbs.twimg.com/profile_images/1151410974240444416/yVvaD7hU_400x400.jpg",
];
Color griRenk = const Color(0xff657786);
