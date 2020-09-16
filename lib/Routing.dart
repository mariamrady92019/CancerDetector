import 'package:flutter/material.dart';
import 'package:flutterapp/Containers/RetrivePassword.dart';
import 'package:flutterapp/Containers/home.dart';
import 'package:flutterapp/Containers/signUp/signup.dart';
import 'package:flutterapp/Containers/signin.dart';
import 'package:flutterapp/Gallery/Reports.dart';

import 'package:flutterapp/Reservation/date_and_time.dart';
import 'package:flutterapp/Reservation/ScreeningResult.dart';

Map<String, Widget Function(BuildContext)> createRoutes(BuildContext context) {
  return {
    "/": (context) => SignIn(),
    //"/signin": (context) => SignIn(),
    "/signup": (context) => SignUp(),
    "/sigin": (context) => SignIn(),
    "/home": (context) => Home(),
    "/reservation": (context) => DateTimeReservation(),
    "/RtrivePassword": (context) => RetrivePassword(),
"/Reports": (context) => Reports(),
    "/ScreeningResult": (context) => ScreeningResult(),


    //"/signUp/validation": (context) => Temp(),
  };
}
