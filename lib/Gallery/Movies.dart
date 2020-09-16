import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Movies extends StatelessWidget {
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
                                    "The family stone ",
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
                                        "7.5",
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
                                  "Bezucha ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=3lgcViU45Fs');
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
                                    "Pieces of April ",
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
                                        "6.3",
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
                                  "Peter Hedges",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=p4_nmB7PsOo');
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
                                    "Living proof",
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
                                        "8.7",
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
                                  "Michael Shaun Corby ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=vmgiG7Hp0N8');
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
                                    "Decoding Annie Parker",
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
                                        "7.3",
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
                                  "peter meme",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=vmgiG7Hp0N8');
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
                                    "Five",
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
                                        "6.3",
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
                                  "Bablo",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=vmgiG7Hp0N8');
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
                                    "Mondays at Racine",
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
                                        "7.3",
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
                                  "El-sobky",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                RaisedButton(
                                  child: Text('watch'),
                                  onPressed: () {
                                    launch(
                                        'https://www.youtube.com/watch?v=vmgiG7Hp0N8');
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
