//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medico/models/user.dart';
//import 'package:flutter/services.dart';

class VerificationNumber extends StatefulWidget {
  final String data ;
  VerificationNumber({
    Key key, 
    @required this.data
    }) : super(key: key);
  @override
  _VerificationNumberState createState() => _VerificationNumberState();
}

class _VerificationNumberState extends State<VerificationNumber> {
  User currentUser=new User.init().getCurrentUser();
  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xeeffffff),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close,color: Colors.black),
            onPressed: (){    
              Navigator.of(context).pushNamed('/phone');
            },
          ),
        ),
        body: Column(

          children:[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                "Enter Code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text(
                'we have sent you an SMS on your ${widget.data} \n with 6 digit verification cede.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12.0),
              child: Center(
                child: Text(
                  '* * * * * *',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0
                  ),
                ) 
              ,),
            ),
            Container(
              height: 180.0,
              margin: EdgeInsets.only(top:12.0,right:12.0,left:12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children:[
                  Form(
                    key: _formKey,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        _otpTextField(),
                        _otpTextField(),
                        _otpTextField(),
                        _otpTextField(),
                        _otpTextField(),
                        _otpTextField(),
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:40.0,bottom: 20.0,right:30.0,left: 30.0 ),
                    height: 40,
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      onPressed: (){
                        if(_formKey.currentState.validate()){
                          Navigator.of(context).pushNamed('/home',arguments: [currentUser.name,currentUser.phoneNumber]);
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        child:  Center(
                          child:Text(
                            'Submit', 
                            style:  TextStyle(
                              fontSize: 18.0, 
                              color: Theme.of(context).primaryColor,  
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),  
                        ),
                      ),   
                    ),
                  ),      

                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                "Did not receive the code?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child:Text(
                      "Re-send",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child:Text(
                      "Get a call now",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
  Widget _otpTextField() {
    return new Container(
      margin: const EdgeInsets.only(top: 30.0),
      width: 25.0,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: Colors.black,
      ))),
      child: Center(
        child: new FormBuilderTextField(
          initialValue: "",
          attribute: 'Country code',
          validators: [
          ],
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ],
          keyboardType: TextInputType.number,
          style: new TextStyle(
            fontSize: 28.0,
            color: Colors.black,
          ),
        ),
      ),
      
    );
  }

}