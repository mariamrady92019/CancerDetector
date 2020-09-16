import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'date_and_time.dart';
import 'book_appointment.dart';

class EditPage extends StatefulWidget {
  EditPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  EditPageState createState() => EditPageState();
}

class EditPageState extends State<EditPage> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Confirmation'), backgroundColor: Colors.pinkAccent),
      body: ListView(children: <Widget>[
        Card(
          margin: EdgeInsets.all(20),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text("Selected Date"),
                onTap: () => _selectDate(context),
              ),
            ),
            Text("${selectedDate.toLocal()}"),
            SizedBox(
                height: 100.0,
                width: 400.0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      child: Center(
                                    child: FlatButton(
                                      child: const Text('Edit'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DateTimeReservation(),
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                                  FlatButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {/* ... */},
                                  ),
                                ]),
                          ])
                    ]))
          ]),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Selected Time "),
                onTap: () {},
              ),
            ),
            SizedBox(
                height: 100.0,
                width: 400.0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FlatButton(
                                    child: const Text('Edit'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Appointment(),
                                        ),
                                      );
                                    },
                                  ),
                                  FlatButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {/* ... */},
                                  ),
                                ]),
                          ])
                    ]))
          ]),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(
                'Confirmation',
                style: TextStyle(),
              ),
              content: Text('are you sure to book this appointment !'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                ),
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () => Navigator.pop(context, 'Ok'),
                ),
              ],
            ),
          );
        },
        label: Text(
          'Submit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
