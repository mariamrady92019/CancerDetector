import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



final endColor = Color(0xFFe46792);
final titleColor = Color(0xff444444);
final textColor = Color(0xFFa9a9a9);
final shadowColor = Color(0xffe9e9f4);

class MedicalProfile extends MaterialPageRoute<Null>{
  final String id;
  MedicalProfile(this.id): super(builder:(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading: FlatButton(
                  onPressed: () {
                     Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
          backgroundColor: Colors.pink[400],
          
          title: Text(
            'Medical Profile',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
            ),
          ),
          centerTitle: true,
          
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              new CardHolder(),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  });
}
class CardHolder extends StatelessWidget {
  const CardHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      height: 750,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: titleColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 10),
          ]),
      child: new Card(),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.freeiconspng.com/uploads/female-icon-23.png"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: Colors.pinkAccent.withOpacity(.2), width: 1)),
        ),
        Text(
          'User Name',
          style: TextStyle(
            color: titleColor,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          width: 320,
          height: 200,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'History Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        color: Colors.black38,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'description writes here..........',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.pinkAccent.withOpacity(.2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 20, right: 20, top: 8),
              width: 320,
              height: 250,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Treatment Plan',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Divider(
                            height: 40,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Cancer Pahse: 1",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Number of sessions of the plan: 1",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Number of sessions taken with dose: 1",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
