import 'package:flutter/material.dart';


class UserAccount extends MaterialPageRoute<Null> {
  final String id;
  UserAccount(this.id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('My Account'),
              backgroundColor: Colors.pink[400],
            ),
            body: Container(
                child: Column(
              children: <Widget>[
                Container(
                  child: UserAccountsDrawerHeader(
                    
                    accountName: new Text("Salena Gomez"),
                    accountEmail: new Text("SalenaGomez@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        
                        Icons.person,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      
                      color: Colors.pink[400],
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    ListTile(
                      onTap: (){},
                      leading: Icon(Icons.book),
                      title: Text('My Wishlist'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.person_outline),
                      title: Text('Yours'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.bookmark),
                      title: Text('My address book'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.feedback),
                      title: Text('Leave feedback'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.star),
                      title: Text('Rate us on play store'),
                    ),
                    ListTile(
                       onTap: (){},
                      leading: Icon(Icons.av_timer),
                      title: Text('Communication prefrence'),
                    ),
                  ],
                ))
              ],
            )),
          );
        });
}
