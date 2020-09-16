import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Gallery/settings_screen.dart';
import 'package:flutterapp/Hospital/hospital_list.dart';
import 'Reports.dart';
import 'Books.dart';
import 'Movies.dart';
import 'Articles.dart';
import 'AllGallery.dart';
import 'Videos.dart';
import 'user_account.dart';
import '../Hospital/Medical_Profile.dart';
import 'Notify.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPage createState() => _GalleryPage();

}

class _GalleryPage extends State<GalleryPage> {


  // final String title;
  final List<Tab> tabs = <Tab>[
    Tab(child: Text('ALL'), icon: Icon(Icons.all_out)),
    Tab(child: Text('PHOTO'), icon: Icon(Icons.photo)),
    Tab(child: Text('VIDEOS'), icon: Icon(Icons.video_call)),
    Tab(child: Text('BOOKS'), icon: Icon(Icons.library_books)),
    Tab(child: Text('ARTICLES'), icon: Icon(Icons.pages)),
    Tab(child: Text('MOVIES'), icon: Icon(Icons.movie))
  ];

  final List<Widget> myWidget = <Widget>[
    All() ,
    Container(),
    Videos() ,
    Books() ,
    Articles() ,
    Movies() ,
  ];

  int _pageIndex = 0;

  final List<Widget> _children = [
    TabBarView(
      children: [
        All(),
        Container(),
        Videos(),
        Books(),
        Articles(),
        Movies(),
      ].map((Widget data) {
        return data;
      }).toList(),
    ),
    HospitalList()
  ];












  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          // flexibleSpace: SafeArea(child:TabBar( ),minimum: EdgeInsets.all(20),top: true,),
          bottom: TabBar(
            isScrollable: true,
            tabs: tabs,
          ),
          title: Text("Gallery"),
          backgroundColor: Colors.pink[400],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                onDetailsPressed: () {
                  Navigator.of(context).push(UserAccount('Setting'));
                },
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
              ListTile(
                leading: Icon(Icons.content_paste),
                title: Text('Test results &Reports'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                 //Navigator.of(context).push("/Reports");
                  Navigator.pushNamed(context, "/Reports");

                },
              ),
              ListTile(
                leading: Icon(Icons.explore),
                title: Text('Treatment Plan'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, "/RtrivePassword");
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Medical Proflie'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context).push(MedicalProfile('Medical profile'));
                },
              ),
              ListTile(
                leading: Icon(Icons.add_alert),
                title: Text('Notification'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context).push(Notify('Notification'));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context).push(SettingsScreen('Setting'));
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
               // Navigator.of(context).push(DrawerDetails('Help'));
                },
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('LogOut'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                 // Navigator.of(context).push(DrawerDetails('LogOut'));
                },
              ),
            ],
          ),
        ),
        body: _children[_pageIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              this._pageIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pink[400],
          fixedColor: Colors.white,
          currentIndex: 1,

          // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.photo),
              title: new Text('Gallery'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_alert),
              title: new Text(
                'Hospital',
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), title: Text('Testing')),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_location),
              title: Text('Awareness'),
            )
          ],
        ),
      ),
    );
  }














}
