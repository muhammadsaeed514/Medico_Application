import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PhoneLogin extends StatefulWidget {
  @override
  _PhoneLoginState createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String countryCode = "";
  String phoneNumber = "";
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
              Navigator.of(context).pushNamed('/signup');
            },
          ),
        ),
        body: Column(
          children:[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0),
              child: Image(
                image:AssetImage("images/verification.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text(
                "Enter your mobile number we will send \n you the OTP verify later",
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
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width:kMinFlingVelocity,
                          margin: EdgeInsets.only(top: 20.0 ,left: 12.0,right: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Color(0xdddddddd)),
                            borderRadius: BorderRadius.circular(12.0),                          
                          ),
                            child:Center(
                              child: FormBuilderTextField(
                                initialValue: '',
                                attribute: 'CountryID',
                              validators: [
                                FormBuilderValidators.required()
                              ],
                              keyboardType: TextInputType.number,                            
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 3,left: 3),
                                border: InputBorder.none, 
                                prefixText: "+",
                                prefixStyle: TextStyle(
                                  color: Colors.black
                                ),
                              ),
                          ),
                            ),
                        ),
                        Expanded(
                          child: Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 20.0 ,left: 12.0,right: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Color(0xdddddddd)),
                            borderRadius: BorderRadius.circular(12.0),                          
                          ),
                            child:Center(
                              child: FormBuilderTextField(
                                initialValue: "",
                                attribute: 'phoneNumber',
                                validators: [
                                  FormBuilderValidators.required()
                                ],
                                keyboardType: TextInputType.number,                            
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 6,left:12,right: 12),
                                  border: InputBorder.none, 
                                  suffixIcon:Icon(Icons.verified_user),
                                  prefixText: "",
                                  prefixStyle: TextStyle(
                                    color: Colors.black
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
                    margin: EdgeInsets.only(top:50.0,bottom: 20.0,right:30.0,left: 30.0 ),
                    height: 40,
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      onPressed: (){
                        Navigator.of(context).pushNamed('/verification');
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
          ],
        ),
    );
  }
    
}