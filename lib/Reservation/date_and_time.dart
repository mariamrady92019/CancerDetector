import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_appointment.dart';

class DateTimeReservation extends StatefulWidget {
  _DateTimeReservation createState() => _DateTimeReservation();
}

class _DateTimeReservation extends State<DateTimeReservation> {
  DateTime _dateTime = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book appointment'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 400,
              child: CupertinoDatePicker(
                initialDateTime: _dateTime,
                use24hFormat: false,
                onDateTimeChanged: (dateTime) {
                  print(dateTime);
                  setState(() {
                    _dateTime = dateTime;
                  });
                },
              ),
            ),
            RaisedButton(
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Appointment()),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.pinkAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
