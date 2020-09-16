import 'package:flutter/material.dart';
import 'package:flutterapp/common/apis.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  Color pink = Colors.pinkAccent;
  Color grey = Colors.black87;

  String _email;
  String _password;

  final _formKey = GlobalKey<FormState>();
  bool secured1 = true;

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _loginFocusnode = FocusNode();

  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        fontSize: 16.0);
  }

  Future<void> tokenCheck() async {
    WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // var token = prefs.getString('token');
    // var nid = prefs.getString('nid');

    //   print(token);

    //   if (token != "" && token != null && nid != "" && nid != null)
    //     Navigator.pushNamed(context, "/home");
    //   //runApp(MaterialApp(home: email == null ? Login() : Home()));
    // }
  }

  handleSignIn(BuildContext context) async {
    //map for sign data
    var data = {
      "email": this._email,
      "password": this._password,
    };
    var response = await Apis.userSignIn(data);
    if (response['message'] == 'success') {
      Apis.mytoken = response['token'];
      // saveToken(
      //     response['token'].toString(), response['national_id'].toString());
      Navigator.pushNamed(context, "/home");
    } else {
      toastMessage("Error or email doesn't exists");
      print("error");
    }
  }

  saveToken(String token, String nid) async {
    //after the login REST api call && response code ==200
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('token', token);
    // prefs.setString('nid', nid);
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: (BuildContext ctx) => Home()));
  }

  void fieldFocusChange(BuildContext context, FocusNode currentFocus,
      FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  Widget EmailInput() {
    return TextFormField(
      focusNode: _emailFocusNode,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: this.pink, width: 1)),
        fillColor: this.pink,
        prefixIcon: Icon(
          Icons.email,
          color: this.pink,
        ),
        labelText: "Email",
        hintText: "e.g abc@gmail.com",
        // labelStyle: TextStyle(
        //   color:labelgrey
        // ),
        contentPadding: EdgeInsets.all(12.0), // Inside box padding
      ),
      textInputAction: TextInputAction.next,
      validator:(email) =>
      EmailValidator.validate(email) ? null : "Invalid email address",
      onSaved: (email) => _email = email,
      onFieldSubmitted: (_) {
        fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
      },
    );
  }

  Widget PasswordInput() {
    return TextFormField(
      focusNode: _passwordFocusNode,
      keyboardType: TextInputType.text,
      obscureText: secured1,
      decoration: InputDecoration(
          labelText: "Password",
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: this.pink, width: 1)),
          fillColor: this.pink,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                secured1 = !secured1;
              });
            },
            child: Icon(secured1 ? Icons.visibility_off : Icons.visibility),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: this.pink,
          )),
      textInputAction: TextInputAction.done,
      onSaved: (password) => _password = password,
    );
  }

  Container SubmitButton() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * (4 / 5),
      height: 45,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: RaisedButton(
        focusNode: _loginFocusnode,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          //side: BorderSide(color: Colors.red),
        ),
        child: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        color: pink,
        // color: Theme.of(context).primaryColor,
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            // toastMessage(
            //     "Welcome $_first_name $_middle_name\nYou have been signed up");
          }
          handleSignIn(context);
        },
      ),
    );
  }

  Container CreateSigninForm(BuildContext context) {
    return (Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  EmailInput(),
                  PasswordInput(),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Align(
                      alignment: Alignment.centerRight,
                      //widthFactor: 10,
                      child: Text(
                        'Forget Password?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    onTap: () =>

                   Navigator.pushNamed(context, "/RtrivePassword")

                    /**Fluttertoast.showToast(
                        msg: "معلش",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        fontSize: 80.0,
                        backgroundColor: Colors.black38,
                        textColor: Colors.white)**/,
                    splashColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SubmitButton(),
                  SizedBox(
                    height: 7,
                  ),
                  InkWell(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        //widthFactor: 1,
                        child: Text(
                          'Don\'t have an account? Signup',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      onTap: () => Navigator.pushNamed(context, "/signup")),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    tokenCheck();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: this.pink,
          title: Text("Sign In"),
          actions: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(0),
              textColor: Colors.white70,
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Row(
                children: <Widget>[
                  Text("Skip"),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    tooltip: 'Skip',
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                ],
              ),
            )
          ]),
      //CustomHeader("sign In", false, null, Colors.pink[200]),
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image(
                      image: AssetImage('bc.png'),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                CreateSigninForm(context)
              ],
            ),
          )),
    );
  }


}
 /** class RetrivePassword extends StatelessWidget {
    FocusNode _emailFocusNode = FocusNode();
    FocusNode _passwordFocusNode = FocusNode();
    String _email;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Retrive new PassWord')
   ,
    backgroundColor: Colors.pinkAccent
    ,
  ),
  body: Center(
  child: TextFormField(
    focusNode: _emailFocusNode,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pink, width: 1)),
      fillColor: Colors.pink,
      prefixIcon: Icon(
        Icons.email,
        color: Colors.pink,
      ),
      labelText: "Email",
      hintText: "e.g abc@gmail.com",
      // labelStyle: TextStyle(
      //   color:labelgrey
      // ),
      contentPadding: EdgeInsets.all(12.0), // Inside box padding
    ),
    textInputAction: TextInputAction.next,
    validator: (email) =>
    EmailValidator.validate(email) ? null : "Invalid email address",
    onSaved: (email) => _email = email,
    onFieldSubmitted: (_) {
      fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
    },
  )
    /**RaisedButton(
  child: Text('Open route'),
  onPressed: () {
  // Navigate to second route when tapped.
  },
  )**/,
  ),
  );
  }
    void fieldFocusChange(BuildContext context, FocusNode currentFocus,
        FocusNode nextFocus) {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }**/


