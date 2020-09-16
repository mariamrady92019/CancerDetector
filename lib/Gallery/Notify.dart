import 'package:flutter/material.dart';

class Notify extends MaterialPageRoute<Null> {
  final String id;
  Notify(this.id)
      : super(builder: (BuildContext context) {
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
                title: Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.pink[400],
              ),
              body: Container(
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  Card (
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "W e are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Colors.blue,
                      ),

                      title: Text(
                        "New Message",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.pink[400]),
                      ),
                      subtitle: Text(
                        "We are glad to inform you that your new result is here, Consider checking it as soon as possible",
                        textAlign: TextAlign.center,
                      ),
                      // dense: true,
                      // isThreeLine: false,
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
}
