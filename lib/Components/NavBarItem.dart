import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constans.dart';

class NavBarItem extends StatelessWidget {
  var title;
  var onClick;

  var border = BorderSide(color: primaryColor, width: 1.0);

  NavBarItem({this.title, this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: primaryPadding,
          left: primaryPadding,
          top: primaryPadding / 2,
          bottom: primaryPadding / 2),
      child: Container(
        // color: primaryColor,
        height: 50,
        width: drawerWidth - primaryPadding * 2,
        child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white70,
              backgroundColor: color600,
            ),
            onPressed: onClick,
            child: Text(title,
                style: GoogleFonts.markaziText(
                    fontSize: 19, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
