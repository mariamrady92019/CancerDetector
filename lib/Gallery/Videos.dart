import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
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
                Container(
                       height: 150,            
                   color: Colors.blueAccent,
                 
                  child: ListTile(
                    onTap: (){
                      

                    },

                    leading: Icon(Icons.videocam),
                    title: Text('Sample Card 4'),
               
                  ),
                ),
                Container(
                                    height: 150,     
                   color: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Sample Card 4'),
                      
                    )),
                Container(
                                      height: 150,    
                   color: Colors.pink,
                    child: ListTile(
                      
                    leading: Icon(Icons.videocam),
                      title: Text('Sample Card 4'),
                      
                    )),

                Container(
                                     height: 150,     
                   color: Colors.green,
                    child: ListTile(
                       leading: Icon(Icons.videocam),
                      title: Text('Sample Card 4'),
                     
                    )),
                Container(
                                     height: 150,    
                   color: Colors.blue,
                    child: ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Sample Card 4'),
                      
                    )),
                Container(
                                    height: 150,   
                   color: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Sample Card 4'),
                      
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
