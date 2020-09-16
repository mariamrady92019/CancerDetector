
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:flutterapp/Hospital/Medical_Profile.dart';
import 'package:pdf/pdf.dart';
//import 'package:pdf/widgets.dart';




class ScreeningResult extends StatefulWidget {
  @override
  _ScreeningResult createState() => _ScreeningResult();
}

class _ScreeningResult extends State<ScreeningResult> {
  @override
  Widget build(BuildContext context)  {
    // TODO: implement build
    return (new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'Screening results',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              child: ListView(
                children: <Widget>[
                  buildScreen(),

                  SizedBox(
                    height: 200,
                  ) ,

                ],
              ),
            ))));
  }

  Widget buildScreen()
  {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      height: 750,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.pinkAccent,
            width: 1,),
          boxShadow: [
            BoxShadow(
                color: titleColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 10),
          ]),
      child:Column(children: <Widget>[

        /**Container(
          alignment: Alignment.topCenter,
          height: 100,
          //width: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),

            borderRadius: BorderRadius.circular(0),
          ),

          child:buildRowOfLogos() ,


        ),**/
        buildRowOfLogos() ,
        SizedBox(
          width: 100,
          height:5,

        ),
        Container(


          child: bulidScreenDetails(),

        ) ,


        Container(


          child: bulidSavePdfButton(),

        )

      ],)


    );
  }

  Widget buildRowOfLogos() {

    return
      Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(10),
        height: 100,
        //width: 40,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),

          borderRadius: BorderRadius.circular(12),
        ),

        child:
        Column(children: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset('assets/images/title.jpg'),
              ),
              Container(

                /** decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                    color: Colors.pinkAccent,
                    width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    ),**/
                  child:Text(
                    "Citizin Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // fontFamily: Utils.ubuntuRegularFont
                    ),

                  )
              ),


              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset('assets/images/logotwo.png'),
              )

            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
            child:Divider(
              color: Colors.black38,
            ),
          )

        ]),
      );


  }


  Widget bulidScreenDetails(){
    return Column(

      children: <Widget>[
        Container(
    alignment: Alignment.topCenter,
      padding: EdgeInsets.all(10),
      height: 70,
      //width: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),

        borderRadius: BorderRadius.circular(2),
      ),

      child:
      Column(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(

              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
                child:Text(
                  "Citizin Name :",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    // fontFamily: Utils.ubuntuRegularFont
                  ),

                ),
            ),
            Container(

              /** decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                  color: Colors.pinkAccent,
                  width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  ),**/
                child:Text(
                  " salah alah",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                    // fontFamily: Utils.ubuntuRegularFont
                  ),

                )
            ),




          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child:Divider(
            color: Colors.black38,
          ),
        )

      ]),
    ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(10) ,
          height: 90,
          //width: 40,


          child:
          Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                        alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: Colors.black26,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child:Text(
                    "Citizin Adress :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // fontFamily: Utils.ubuntuRegularFont
                    ),

                  ),
                ),
                Container(

                  /** decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                      color: Colors.pinkAccent,
                      width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      ),**/
                    child:Text(
                      " cairo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        // fontFamily: Utils.ubuntuRegularFont
                      ),

                    )
                ),




              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:Divider(
                color: Colors.black38,
              ),
            )

          ]),
        ) ,
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(10),
          height: 90,
          //width: 40,


          child:
          Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: Colors.black26,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child:Text(
                    "Screening date :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // fontFamily: Utils.ubuntuRegularFont
                    ),

                  ),
                ),
                Container(

                  /** decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                      color: Colors.pinkAccent,
                      width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      ),**/
                    child:Text(
                      "12/12/2012",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        // fontFamily: Utils.ubuntuRegularFont
                      ),

                    )
                ),




              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:Divider(
                color: Colors.black38,
              ),
            )

          ]),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding:EdgeInsets.all(10),
          height: 90,
          //width: 40,


          child:
          Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: Colors.black26,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child:Text(
                    "Screening Result:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // fontFamily: Utils.ubuntuRegularFont
                    ),

                  ),
                ),
                Container(

                  /** decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                      color: Colors.pinkAccent,
                      width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      ),**/
                    child:Text(

                      "negative",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        // fontFamily: Utils.ubuntuRegularFont
                      ),

                    )
                ),




              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:Divider(
                color: Colors.black38,
              ),
            )

          ]),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(10),
          height: 90,
          //width: 40,


          child:
          Column(children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: Colors.black26,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child:Text(
                    "Description",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // fontFamily: Utils.ubuntuRegularFont
                    ),

                  ),
                ),
                Container(

                  /** decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                      color: Colors.pinkAccent,
                      width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      ),**/
                    child:Text(
                  " this patient cancerd",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  // fontFamily: Utils.ubuntuRegularFont
                  ),

                  )
                ),




              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:Divider(
                color: Colors.black38,
              ),
            )

          ]),
        ),

      ],
    );
  }

 Widget bulidSavePdfButton() {
    return Container
      (
      width: MediaQuery
          .of(context)
          .size
          .width * (2 / 5),
      height: 45,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: RaisedButton(


        child: Text(
          "Save as Pdf",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        color: Colors.black26,
        // color: Theme.of(context).primaryColor,
        onPressed: () {
          //saveASPdf();
        },
      ),
    );

 }







}
