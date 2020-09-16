import 'package:flutter/material.dart';

AppBar CustomHeader(String title, bool showIcon, IconData iconName, Color clr) {
  if (showIcon) {
    return (AppBar(
      title: Text(title),
      backgroundColor: clr,
      leading: IconButton(
        icon: Icon(iconName),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          tooltip: 'Next choice',
          //onPressed: () {};
        ),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ))
      ],
    ));
  } else {
    return (AppBar(
      backgroundColor: clr,
      title: Text(title),
    ));
  }
}
