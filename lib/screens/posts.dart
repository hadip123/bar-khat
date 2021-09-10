import 'package:bar_khat/Classes/NavBarItemClass.dart';
import 'package:bar_khat/Components/bar_khat_drawer.dart';
import 'package:bar_khat/main.dart';
import 'package:bar_khat/screens/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constans.dart';
import '../navigator.dart';

class Posts extends StatelessWidget {
  // const Posts({Key? key}) : super(key: key);
  static const route = '/post';
  @override
  Widget build(BuildContext context) {
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
        endDrawer: BarKhatDrawer(items: items),
        drawerScrimColor: Colors.black.withOpacity(0.3),
        appBar: AppBar(
          backgroundColor: color800,
          foregroundColor: primaryColor[50],
          title: Text(
            'پست ها',
            style: GoogleFonts.markaziText(
                fontWeight: FontWeight.w900, fontSize: 23),
          ),
          centerTitle: true,
        ));
  }
}
