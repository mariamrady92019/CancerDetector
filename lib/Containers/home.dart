import 'package:flutter/material.dart';
import 'package:flutterapp/Containers/header.dart';
import 'package:flutterapp/Gallery/Gallery_page.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GalleryPage(),
    );
  }
}
