import 'package:flutter/material.dart';
import 'package:flutterapp/Reservation/confirmation.dart';

class Appointment extends StatefulWidget {
  @override
  _Appointment createState() => _Appointment();
}

class _Appointment extends State<Appointment> {
  bool buttonpressed = false;

  @override
  Widget build(BuildContext context) {
    final title = 'book appointment';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(title),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 6,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(
          42,
          (index) {
            return Center(
              child: MyButton(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditPage()),
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

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: buttonPressed ? Colors.grey : Colors.green,
      onPressed: () {
        setState(
          () {
            buttonPressed = !buttonPressed;
          },
        );
      },
      shape: CircleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
    );
  }
}
