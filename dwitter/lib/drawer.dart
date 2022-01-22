import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        height: double.infinity,
        width: MediaQuery.of(context).size.width * .8,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  "https://pbs.twimg.com/profile_images/1125828468036521984/NIPmCnqx_400x400.jpg",
                  height: 55,
                  width: 55,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      // ignore: prefer_adjacent_string_concatenation
                      "Mehmethan Kaya",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "chirp_heavy",
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Text(
                // ignore: prefer_adjacent_string_concatenation
                "@MehmethanKaya29",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "chirp_regular",
                  color: Color(0xff657786),
                ),
              ),
              Iconandtext(Icons.person, "Profil"),
              Iconandtext(Icons.subject, "Listeler"),
              Iconandtext(Icons.chat_bubble_outline_rounded, "Konular"),
              Iconandtext(
                Icons.bookmark_outline_rounded,
                "Yer İşaretleri",
              ),
              Iconandtext(
                Icons.bolt,
                "Anlar",
              ),
              Iconandtext(
                Icons.money_rounded,
                "Gelire Dönüştürme",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Iconandtext extends StatelessWidget {
  IconData kullanilacakicon;
  String kullanilacakyazi;
  Iconandtext(this.kullanilacakicon, this.kullanilacakyazi, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            kullanilacakicon,
            color: Colors.white,
            size: 30,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                kullanilacakyazi,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "chirp_regular",
                    fontSize: 17),
              ))
        ],
      ),
    );
  }
}
