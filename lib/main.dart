import 'dart:js';

import 'package:bar_khat/Classes/NavBarItemClass.dart';
import 'package:bar_khat/Components/bar_khat_drawer.dart';
import 'package:bar_khat/constans.dart';
import 'package:bar_khat/navigator.dart';
import 'package:bar_khat/screens/info.dart';
import 'package:bar_khat/screens/posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const route = '/about';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var items = [
      Item(
          title: 'خانه',
          onClick: () {
            navigate(context, Home());
          }),
      Item(
          title: 'پست ها',
          onClick: () {
            navigate(context, Posts());
          }),
      Item(
          title: 'درباره ما',
          onClick: () {
            navigate(context, Info());
          }),
    ];
    return Scaffold(
      drawerScrimColor: Colors.black.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: color800,
        foregroundColor: primaryColor[50],
        title: Hero(
          tag: 'title',
          child: Text(
            'بر خط',
            style: GoogleFonts.markaziText(
                fontWeight: FontWeight.w900, fontSize: 23),
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: BarKhatDrawer(items: items),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 240,
                width: size.width - 30,
                child: Column(
                  children: [
                    Text('Header'),
                    Divider(
                      color: color300,
                      height: 1.0,
                    ),
                    Container(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (cnt, indx) {
                            return Container();
                          }),
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
