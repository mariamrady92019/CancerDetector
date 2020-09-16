import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatefulWidget {
  @override
  _Articles createState() => _Articles();
}

class _Articles extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  elevation: 24,
                  child: ListTile(
                    onTap: () {
                      launch(
                          'https://breast-cancer-research.biomedcentral.com/articles');
                    },
                    leading: Icon(Icons.book),
                    title: Text('Breast Cancer Research'),
                    subtitle: Text('William B. Grant,Article number: 24 '),
                  ),
                ),
                Card(
                    elevation: 24,
                    child: ListTile(
                      onTap: () {
                        launch(
                            'https://breast-cancer-research.biomedcentral.com/articles/10.1186/s13058-020-1253-6');
                      },
                      leading: Icon(Icons.book),
                      title: Text('Breast Cancer Research'),
                      subtitle: Text(' Disorn Sookthai, Theron S. Johnson'),
                    )),
                Card(
                    elevation: 24,
                    child: ListTile(
                      onTap: () {
                        launch(
                            'https://breast-cancer-research.biomedcentral.com/articles/10.1186/s13058-020-01258-x');
                      },
                      leading: Icon(Icons.book),
                      title: Text('Breast Cancer Research'),
                      subtitle: Text(' Albert F. LoBuglio, Richard M. Myers'),
                    )),
                Card(
                    elevation: 24,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
                Card(
                    elevation: 24,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
                Card(
                    elevation: 24,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ArticlesDetails extends MaterialPageRoute<Null> {
  final String id;
  ArticlesDetails(this.id)
      : super(builder: (BuildContext) {
          return Scaffold(
            appBar: AppBar(
              title: Text(id),
              elevation: 1.0,
              backgroundColor: Colors.pinkAccent,
            ),
            body: Container(
              child: Text('$id  '),
            ),
          );
        });
}
