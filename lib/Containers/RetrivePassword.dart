


import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common/apis.dart';
import 'package:http/http.dart';
import 'package:progress_dialog/progress_dialog.dart';



class RetrivePassword extends StatefulWidget {
  @override
 _RtrivePassword createState() => _RtrivePassword();


  }

  class _RtrivePassword extends State<RetrivePassword> {
    static ProgressDialog pr ;
    Color pink = Colors.pinkAccent;
    Color grey = Colors.black87;

    static String _email;

    static final _formKey = GlobalKey<FormState>();
    bool secured1 = true;
    static TextEditingController textEditingController = new TextEditingController();

    FocusNode _emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
   // tokenCheck();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: this.pink,
          title: Text("Retrive password"),
          actions: <Widget>[

          ]),
      //CustomHeader("sign In", false, null, Colors.pink[200]),
      body: SingleChildScrollView(
          child: Container(
            child: Column(

              children: <Widget>[
            Container(
            padding: EdgeInsets.fromLTRB(50, 100, 50, 12),
            child:
               Text(
                 "we will help you to recive a new password , "
                     "password mail will arrive you , please sign in again :))" ,
                 style: TextStyle(color: Colors.lightBlue,fontSize:18,fontWeight:FontWeight.bold),
               )
            ),
            Container(

              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child:
                EmailInput(context),
            )],
            ),
          )),
    );
  }



    Widget EmailInput(BuildContext bc) {
      return
            EditEmail(bc);



    }

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
                            SizedBox(
                              height: 20,
                            ),
                      Container(

                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          width: MediaQuery
                              .of(bc)
                              .size
                              .width * (4 / 5),
                          height: 45,
                           child : new RaisedButton(

                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red),
                              ),
                              child: Text(

                                " send Password",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              color: Colors.pinkAccent,
                              // color: Theme.of(context).primaryColor,
                              onPressed: () {

                                _email = textEditingController.text;
                                print(_email);
                                if (_formKey.currentState.validate()) {
                                  showProgressDialog(bc, "please wait");
                                  handleSendPassword(_email,bc);
                                }},

                            ))])
                  )])
        );}










 static void handleSendPassword(String mail , BuildContext bc) async {
    var response = await Apis.retrivePassword(mail );


    print(response);
    if(response.toString().contains("200")){
        pr.dismiss();
        showAlertDialogSent(bc , "password sent successfully");


    }else{
     
      pr.dismiss();
      showAlertDialog(bc , "you need to enter valid mail");
      
    }

  }



  static void showProgressDialog(BuildContext context,String message) async{
    pr = new ProgressDialog(context);
    pr = new ProgressDialog(context,type: ProgressDialogType.Normal, isDismissible: true, showLogs: false);
    pr.style(
        message: message,
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600)
    );

    await pr.show();
  }

   static showAlertDialog(BuildContext bc , String message ){
     showDialog<void>(
       context: bc,
       barrierDismissible: false, // user must tap button!
       builder: (BuildContext context) {
         return AlertDialog(
           elevation: 10,
           contentPadding: const EdgeInsets.all(10),
           title: Text(message),
           
           actions: <Widget>[
             FlatButton(
               child: Text('ok',
               style: TextStyle(
                fontSize: 20 ,
                 fontWeight: FontWeight.bold,
               ),),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
           ],
         );
       },
     );
   }

    static showAlertDialogSent(BuildContext bc , String message )async{
      await showDialog<void>(
        context: bc,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 10,
            contentPadding: const EdgeInsets.all(10),
            title: Text(message),

            actions: <Widget>[
              FlatButton(
                child: Text('ok',
                  style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                  ),),
                onPressed: (){
                  Navigator.pop(context);

                   }
               ,
              ),
            ],
          );
        },
      );
      Navigator.pop(bc);
      ;
    }


    static gotoSignUp(BuildContext bc){
      Navigator.pushNamed(bc, "/signup") ;
    }






















  /** Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }**/


}