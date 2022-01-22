import 'package:flutter/material.dart';
import 'const.dart';

class AltMenu extends StatefulWidget {
  const AltMenu({Key? key}) : super(key: key);

  @override
  _AltMenuState createState() => _AltMenuState();
}

class _AltMenuState extends State<AltMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                home = beyaz;
                search = seffaf;
                ring = seffaf;
                mailbox = seffaf;
              });
            },
            child: Icon(
              Icons.home,
              size: 27,
              color: home,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                home = seffaf;
                search = beyaz;
                ring = seffaf;
                mailbox = seffaf;
              });
            },
            child: Icon(
              Icons.search,
              size: 27,
              color: search,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                home = seffaf;
                search = seffaf;
                ring = beyaz;
                mailbox = seffaf;
              });
            },
            child: Icon(
              Icons.notifications,
              size: 27,
              color: ring,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                home = seffaf;
                search = seffaf;
                ring = seffaf;
                mailbox = beyaz;
              });
            },
            child: Icon(
              Icons.mail_outline_outlined,
              size: 27,
              color: mailbox,
            ),
          )
        ],
      ),
    );
  }
}
