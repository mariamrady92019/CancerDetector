
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

//import 'package:flutterapp/Reservation/EditProfile.dart';
import 'package:settings_ui/settings_ui.dart';



class SettingsScreen extends MaterialPageRoute<Null> {
  final String id;
  static TextEditingController textEditingController = new TextEditingController();
  static int index;
  static final _formKey = GlobalKey<FormState>();

  static String phoneNum;
    static String _email ;
  static String password ;

  static final myController = TextEditingController();

  SettingsScreen(this.id)
      : super(builder: (BuildContext context) {
    bool lockInBackground = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings '),
        backgroundColor: Colors.pink[400],
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: 'Common',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onTap: () {


                },
              ),
              SettingsTile(
                  title: 'Environment',
                  subtitle: 'Production',
                  leading: Icon(Icons.cloud_queue)),
            ],
          ),
          SettingsSection(
            title: ' Edit Account',
            tiles: [
              SettingsTile(
                title: ' Edit Phone number', leading: Icon(Icons.phone),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return
                          Container(
                          width: 400,
                          height: 600,
                          child:new Wrap(
                            children: <Widget>[
                              new ListTile(
                                  leading: new Icon(Icons.notifications_active),
                                  title: new Text(' you will change your phone number'),
                                  subtitle:new Text('are you sure ?',
                                      style:  TextStyle(color: Colors.lightBlue , fontSize: 18),
                                       textAlign: TextAlign.center,

                                  ) ,
                                  onTap: () => {}
                              ),
                              EditPhoneNumber(context),
                            ],
                          ),
                       );
                      });
                  //Navigator.pushNamed(context, "/EditPhoneNumber");

                },),
              SettingsTile(
                title: ' Edit Email', leading: Icon(Icons.email),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return
                          Container(
                            width: 400,
                            height: 600,
                            child:new Wrap(
                              children: <Widget>[
                                new ListTile(
                                    leading: new Icon(Icons.notifications_active),
                                    title: new Text(' you will change your Email'),
                                    subtitle:new Text('are you sure ?',
                                      style:  TextStyle(color: Colors.lightBlue , fontSize: 18),
                                      textAlign: TextAlign.center,

                                    ) ,
                                    onTap: () => {}
                                ),
                                EditEmail(context),
                              ],
                            ),
                          );
                      });
                  //Navigator.pushNamed(context, "/EditPhoneNumber");

                },),
              SettingsTile(
                title: ' Edit Password', leading: Icon(Icons.lock_open),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return
                          Container(
                            width: 400,
                            height: 600,
                            child:new Wrap(
                              children: <Widget>[
                                new ListTile(
                                    leading: new Icon(Icons.notifications_active),
                                    title: new Text(' you will change your Password'),
                                    subtitle:new Text('are you sure ?',
                                      style:  TextStyle(color: Colors.lightBlue , fontSize: 18),
                                      textAlign: TextAlign.center,

                                    ) ,
                                    onTap: () => {}
                                ),
                                EditPassword(context),
                              ],
                            ),
                          );
                      });
                  //Navigator.pushNamed(context, "/EditPhoneNumber");

                },),
              SettingsTile(
                  title: 'Sign out', leading: Icon(Icons.exit_to_app)),
              
            ],
          ),
          SettingsSection(
            title: 'Secutiry',
            tiles: [
              SettingsTile.switchTile(
                title: 'Lock app in background',
                leading: Icon(Icons.phonelink_lock),
                switchValue: lockInBackground,
                onToggle: (bool value) {
                  // setState(() {
                  //   lockInBackground = value;
                  // });
                },
              ),
              SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  onToggle: (bool value) {},
                  switchValue: false),
              SettingsTile.switchTile(
                title: 'Change password',
                leading: Icon(Icons.lock_open),
                switchValue: true,
                onToggle: (bool value) {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Misc',
            tiles: [
              SettingsTile(
                  title: 'Terms of Service',
                  leading: Icon(Icons.description)),
              SettingsTile(
                  title: 'Open source licenses',
                  leading: Icon(Icons.collections_bookmark)),
            ],
          )
        ],
      ),
    );
  });






  static Widget EditEmail(BuildContext bc) {
    FocusNode _emailFocusNode = FocusNode();
    return
       new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Form(
            key: _formKey ,
            child:Column(
            children: <Widget>[
              TextFormField(
                focusNode: _emailFocusNode,
                controller: textEditingController ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 1)),
                  fillColor: Colors.pinkAccent,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.pinkAccent,
                  ),
                  labelText: "Email",
                  hintText: "e.g abc@gmail.com",
                  // labelStyle: TextStyle(
                  //   color:labelgrey
                  // ),
                  contentPadding: EdgeInsets.all(12.0), // Inside box padding
                ),

                textInputAction: TextInputAction.next ,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if(EmailValidator.validate(value)!=true){
                    return 'not valid email';
                  }
                  return null;
                },

                /**onFieldSubmitted: (_) {
                    fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
                    }**/
              ),
             new RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(18.0),
    //side: BorderSide(color: Colors.red),
    ),
    child: Text(
    " update Email",
    style: TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
    ),
    color: Colors.pinkAccent,
    // color: Theme.of(context).primaryColor,
    onPressed: () {
     _email = textEditingController.text;
    print(_email);
    if (_formKey.currentState.validate()) {
      print('valid')  ;
    }},

             )])
        )])
    );}
  static Widget EditPassword(BuildContext bc) {
    FocusNode _emailFocusNode = FocusNode();
    return
      new Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Form(
                    key: _formKey ,
                    child:Column(
                        children: <Widget>[
                          TextFormField(
                            focusNode: _emailFocusNode,
                            controller: textEditingController ,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pinkAccent,
                                      width: 1)),
                              fillColor: Colors.pinkAccent,
                              prefixIcon: Icon(
                                Icons.lock_open,
                                color: Colors.pinkAccent,
                              ),
                              labelText: "password",
                              hintText: "atleast 6 char",
                              // labelStyle: TextStyle(
                              //   color:labelgrey
                              // ),
                              contentPadding: EdgeInsets.all(12.0), // Inside box padding
                            ),

                            textInputAction: TextInputAction.next ,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter password';
                              }
                              if(validatePassword(value)!=null){
                                return validatePassword(value);
                              }
                              return null;
                            },

                            /**onFieldSubmitted: (_) {
                                fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
                                }**/
                          ),
                          new RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red),
                            ),
                            child: Text(
                              " update password",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            color: Colors.pinkAccent,
                            // color: Theme.of(context).primaryColor,
                            onPressed: () {
                              _email = textEditingController.text;
                              print(_email);
                              if (_formKey.currentState.validate()) {
                                print('valid')  ;
                              }},

                          )])
                )])
      );}
  static Widget EditPhoneNumber(BuildContext bc) {
    return
      new Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Form(
                    key: _formKey ,
                    child:Column(
                        children: <Widget>[
                          TextFormField(
                            controller: textEditingController ,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pinkAccent,
                                      width: 1)),
                              fillColor: Colors.pinkAccent,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.pinkAccent,
                              ),
                              labelText: "Phone number",
                              hintText: "e.g 012344567897",
                              // labelStyle: TextStyle(
                              //   color:labelgrey
                              // ),
                              contentPadding: EdgeInsets.all(12.0), // Inside box padding
                            ),

                            textInputAction: TextInputAction.next ,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter phone number';
                              }
                              if(value.length<11){
                                return 'Please enter valid phone at least 11 char';
                              }
                              if(validatePhoneNumber(value)!=null){
                                return validatePassword(value);
                              }
                              return null;
                            },

                            /**onFieldSubmitted: (_) {
                                fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
                                }**/
                          ),
                          new RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red),
                            ),
                            child: Text(
                              " update phoneNumber",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            color: Colors.pinkAccent,
                            // color: Theme.of(context).primaryColor,
                            onPressed: () {
                              password = textEditingController.text;
                              print(password);
                              if (_formKey.currentState.validate()) {
                                print('valid')  ;
                              }},

                          )])
                )])
      );}




    static String validatEmail(String value){
    if (EmailValidator.validate(value)==true) {
      return "valid" ;
    }
     return " not valid Email";
   }


   static String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else
        return null;
    }
  }

  static String validatePhoneNumber(String value) {

      String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
      RegExp regExp = new RegExp(patttern);
      if (value.length == 0) {
        return 'Please enter mobile number';
      }
      else if (!regExp.hasMatch(value)) {
        return 'Please enter valid mobile number';
      }
      return null;

  }
}


