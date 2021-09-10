import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

navigate(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  // Navigator.of(context).pushNamed(pageName);
}
