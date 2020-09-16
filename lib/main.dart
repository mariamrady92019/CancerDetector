import 'package:flutter/material.dart';
import 'package:flutterapp/Routing.dart';
import 'package:flutterapp/common/config.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTitle,
      routes: createRoutes(context),
    ));
  }
}
