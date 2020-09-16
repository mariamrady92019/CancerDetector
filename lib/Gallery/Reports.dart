import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Hospital/Medical_Profile.dart';

class Reports extends StatefulWidget {
  @override
  _Reports createState() => _Reports();
}

class _Reports extends State<Reports> {
  String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Screening Result"),
          elevation: 1.0,
          backgroundColor: Colors.pinkAccent,
        ),
        //الكونتينر بتاع الشاشه كلها
        body: Column(children: <Widget>[
          Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(top: 30, right: 40, left: 40),
              padding: EdgeInsets.only(left: 20, right: 20, top: 8),
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pinkAccent.withOpacity(.2), width: 1),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 30,
                        spreadRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child:
              //اول عمود
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'History Description',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    Container(
                      // alignment: Alignment.bottomLeft,
                        width: MediaQuery.of(context).size.width * (1.5 / 5),
                        height: 50,
                        margin: EdgeInsets.only(
                            top: 30, bottom: 10, left: 140, right: 5),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.pinkAccent,
                            textColor: Colors.white,

                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: MediaQuery.of(context).size.width * (1.5 / 5),
                              decoration: const BoxDecoration(
                                color: Colors.pink ,

                              ),
                              padding: const EdgeInsets.all(0.0),
                              child: const Text('details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20)),

                            ),
                            shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),)),
                  ])),
          Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(top: 30, right: 40, left: 40),
              padding: EdgeInsets.only(left: 20, right: 20, top: 8),
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pinkAccent.withOpacity(.2), width: 1),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 30,
                        spreadRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child:
                  //اول عمود
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text(
                      'Screening Result',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    Container(
                     // alignment: Alignment.bottomLeft,
                        width: MediaQuery.of(context).size.width * (1.5 / 5),
                        height: 50,
                        margin: EdgeInsets.only(
                            top: 30, bottom: 10, left: 140, right: 5),
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context,  "/ScreeningResult");
                            },
                            color: Colors.pinkAccent,
                            textColor: Colors.white,

                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: MediaQuery.of(context).size.width * (1.5 / 5),
                              decoration: const BoxDecoration(
                              color: Colors.pink ,

                              ),
                              padding: const EdgeInsets.all(0.0),
                              child: const Text('details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20)),
                            ),

                        )),
                  ]))
        ]));
  }
}

/**
    Container(
    child: Column(children: <Widget>[
    Container(
    child : Row(children: <Widget>[
    Container(
    padding: EdgeInsets.fromLTRB(5.0,5.0,10.0,0.0) ,
    width: 150,
    height: 100,
    child: ClipRRect(
    borderRadius: new BorderRadius.circular(15.0),
    /**child: Container(
    width: 40.0,
    color: Colors.green,
    )**/
    child: Image(
    fit: BoxFit.fill,
    alignment: Alignment.center,
    image: AssetImage('assets/images/pic.png'),
    ),
    ),
    ),
    new Expanded(
    child:
    Padding(

    padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
    child:

    Text(

    " Reports",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    ),

    )),
    Container(
    padding: EdgeInsets.fromLTRB(5.0,5.0,10.0,0.0)  ,
    width: 150,
    height: 100,
    child: ClipRRect(
    borderRadius: new BorderRadius.circular(15.0),
    /**child: Container(
    width: 40.0,
    color: Colors.green,
    )**/
    child: Image(
    fit: BoxFit.fill,
    alignment: Alignment.center,
    image: AssetImage('assets/images/pic.png'),
    ),
    ),
    ),
    ]),

    ),
    Divider(

    height: 5 ,
    color: Colors.black38,

    ),
    Container(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
    children: <Widget>[
    Row(

    children: <Widget>[
    Container(
    margin: EdgeInsets.only(right: 20, left: 20),
    height: 50,
    width:350,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    boxShadow: [
    BoxShadow(
    //color:  titleColor.withBlue(2),
    blurRadius: 1,
    spreadRadius: 1),
    ]),
    child: Row(children: <Widget>[
    Text(

    "Name : ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    ) ,
    TextFormField()

    ],),
    ),

    ],) ,
    Row(
    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
    children: <Widget>[
    Text(

    " Adress : ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    )

    ],) ,
    Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly ,
    children: <Widget>[
    Text(

    "  Screening date : ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    )
    ],) ,
    Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text(

    " Screening Result: ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    )
    ],) ,
    Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly ,
    children: <Widget>[
    Text(

    " cancer Stage : ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    )
    ],),
    Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly ,
    children: <Widget>[
    Text(

    " Discription : ",

    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 22.0),
    )
    ],)
    ],),
    )


    ]),

    ));
 **/
