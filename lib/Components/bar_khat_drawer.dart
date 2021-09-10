import 'package:bar_khat/Classes/NavBarItemClass.dart';
import 'package:bar_khat/constans.dart';
import 'package:flutter/material.dart';

import 'NavBarItem.dart';

class BarKhatDrawer extends StatelessWidget {
  const BarKhatDrawer({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: drawerWidth,
          height: 500,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
            child: Drawer(
              // semanticLabel: 'hadi',
              child: Container(
                decoration: BoxDecoration(color: color900),
                width: 900,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Container(
                          height: 200,
                          width: drawerWidth - 10,
                          // decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Image.network(
                              'https://i.ibb.co/sCx1HkH/5073414-Copy.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                    Expanded(
                      child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext con, int index) {
                            return NavBarItem(
                              title: items[index].title,
                              onClick: items[index].onClick,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}
