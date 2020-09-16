import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';

String BASE_URL = 'https://millionscma.herokuapp.com';
//String BASE_URL = "https://mscmaproject.herokuapp.com";
String retrivePath = "https://pinkboat.herokuapp.com/login/forget-password" ;


class Apis {
  static String mytoken = "";

  static saveUserApi(data) async {
    var response = await http.post(BASE_URL + "/savecitizen",
        body: json.encode(data), headers: {"Content-Type": "application/json"});
    var beResponse = json.decode(response.body);
    return beResponse;
  }

  static userSignIn(data) async {
    var response = await http.post(BASE_URL + "/signin",
        body: json.encode(data), headers: {"Content-Type": "application/json"});
    var beResponse = json.decode(response.body);
    return beResponse;
  }

  static dynamic getPosts() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/posts");
    List decodedResponse = json.decode(response.body) as List;
    return decodedResponse;
  }


  static dynamic retrivePassword(String email) async {
    var data = {
    "email" : email
    };
    var response = await http.post(retrivePath , body: json.encode(data) ,
        headers: {"Content-Type": "application/json"});
    var decodedResponse = json.decode(response.body) ;
    return decodedResponse;
  }
  
  
  
  // static dynamic getHospitals() async {
  //   var response = await http.get("https://millionscma.herokuapp.com/gethospitals");
  //   List decodedResponse = json.decode(response.body) as List;
  //   return decodedResponse;
  // }

  static dynamic getHospitals() async {
    var response =
        await http.get("https://millionscma.herokuapp.com/getallhospitals");
    List decodedResponse = json.decode(response.body) as List;
    return decodedResponse;
  }
}
