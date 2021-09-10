import 'package:bar_khat/Classes/NavBarItemClass.dart';
import 'package:bar_khat/Components/bar_khat_drawer.dart';
import 'package:bar_khat/main.dart';
import 'package:bar_khat/navigator.dart';
import 'package:bar_khat/screens/posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constans.dart';

class Info extends StatelessWidget {
  // const Info({Key? key}) : super(key: key);
  static const route = '/about';

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
        title: Hero(
          tag: 'title',
          child: Text(
            'درباره بر خط',
            style: GoogleFonts.markaziText(
                fontWeight: FontWeight.w900, fontSize: 23),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
