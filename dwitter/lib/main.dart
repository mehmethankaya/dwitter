// ignore_for_file: prefer_const_constructors
import 'package:dwitter/altmenu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'const.dart';
import 'template_tweet.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color(0xff1DA1F2),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      key: _key,
      drawerEnableOpenDragGesture: true,
      drawer: MyDrawer(),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 15,
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.white,
              height: 0.1,
            ),
            AltMenu()
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: NestedScrollView(
            physics: ClampingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    backgroundColor: Colors.black,
                    automaticallyImplyLeading:
                        false, // Don't show the leading button
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            _key.currentState!.openDrawer();
                          },
                          child: ClipOval(
                            child: Image.network(
                              "https://pbs.twimg.com/profile_images/1125828468036521984/NIPmCnqx_400x400.jpg",
                              height: 25,
                              width: 25,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xff1DA1F2),
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.auto_awesome_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
            body: GestureDetector(
              onPanUpdate: (details) {
                if (details.delta.dx > 0) {
                  _key.currentState!.openDrawer();
                  // swiping in right direction
                }
              },
              child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  itemBuilder: (context, index) => Tweets(
                      names[index],
                      nicknames[index],
                      times[index],
                      messages[index],
                      photos[index]),
                  separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(.0),
                      child: SizedBox(
                        height: 0,
                      )),
                  itemCount: 10),
            )),
      ),
    );
  }
}
