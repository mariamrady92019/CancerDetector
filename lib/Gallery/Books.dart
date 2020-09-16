import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Books extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "Detective Agency series",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  "Alexander McCall",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('read'),
                                  onPressed: () {
                                    launch(
                                        'https://www.penguinrandomhouse.com/series/1LA/no-1-ladies-detective-agency-series');
                                  },
                                  color: Colors.pink[400],
                                  textColor: Colors.black,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "Mummy’s Lump",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  "lili peter",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('read'),
                                  onPressed: () {
                                    launch(
                                        'https://breastcancernow.org/information-support/publication/mummys-lump-bcc164');
                                  },
                                  color: Colors.pink[400],
                                  textColor: Colors.black,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1545396872-a6682fc218ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "The C Word",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  " Lisa Lynch",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('read'),
                                  onPressed: () {
                                    launch(
                                        'https://www.goodreads.com/book/show/8096374-the-c-word');
                                  },
                                  color: Colors.pink[400],
                                  textColor: Colors.black,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1525640932057-b18561aca9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "it's all just rock and roll",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  "Alex Jagger",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1526399232581-2ab5608b6336?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "B is for Breast Cancer",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  "Alex Jagger",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1526399232581-2ab5608b6336?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Text(
                                    "Emotional Support ",
                                    style: TextStyle(
                                        color: Color(0xffe6020a),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          child: Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStar,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.solidStarHalf,
                                          color: Colors.amber,
                                          size: 15.0,
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "(321) \u00B7 0.9 mi",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      )),
                                    ],
                                  )),
                                ),
                                Container(
                                    child: Text(
                                  "Cordelia Galgutr",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1526399232581-2ab5608b6336?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
