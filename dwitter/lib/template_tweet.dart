import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Tweets extends StatefulWidget {
  final String username;
  final String nickname;
  final int time;
  final String message;
  final String photo;

  // ignore: use_key_in_widget_constructors
  const Tweets(
      this.username, this.nickname, this.time, this.message, this.photo);

  @override
  State<Tweets> createState() => _TweetsState();
}

class _TweetsState extends State<Tweets> {
  Color griRenk = const Color(0xff657786);
  dynamic ikon = FontAwesomeIcons.heart;
  int begenisayisi = 230;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey, width: 0.1),
          ),
          color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(widget.photo),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  // ignore: prefer_adjacent_string_concatenation
                                  widget.username + " ",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: "chirp_heavy",
                                      color: Colors.white,
                                      letterSpacing: -0.3),
                                ),
                                Flexible(
                                  child: Text(
                                    // ignore: prefer_adjacent_string_concatenation
                                    "@" + widget.nickname,

                                    overflow: TextOverflow.ellipsis,

                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: "chirp_regular",
                                      color: Color(0xff657786),
                                    ),
                                  ),
                                ),
                                Text(
                                  " · " + widget.time.toString() + " sa",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: "chirp_regular",
                                    color: Color(0xff657786),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 17,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff0657786),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        widget.message,
                        style: const TextStyle(
                          height: 1.3,
                          fontSize: 14,
                          fontFamily: "chirp_regular",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: const FaIcon(
                                    FontAwesomeIcons.comment,
                                    color: Color(0xff657786),
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  17.toString(),
                                  style: const TextStyle(
                                    color: Color(0xff657786),
                                    fontFamily: "chirp_regular",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.retweet,
                                  color: Color(0xff657786),
                                  size: 15,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  112.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff657786),
                                      fontFamily: "chirp_regular",
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (ikon != FontAwesomeIcons.heart) {
                                    ikon = FontAwesomeIcons.heart;
                                    griRenk = const Color(0xff657786);
                                    begenisayisi--;
                                  } else {
                                    ikon = FontAwesomeIcons.solidHeart;
                                    griRenk = Colors.pink;
                                    begenisayisi++;
                                  }
                                });
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    ikon,
                                    color: griRenk,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    begenisayisi.toString(),
                                    style: TextStyle(
                                        color: griRenk,
                                        fontFamily: "chirp_regular",
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.share_outlined,
                            color: Color(0xff657786),
                            size: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
