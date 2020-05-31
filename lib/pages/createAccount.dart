import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medico/models/user.dart';
class CreateAcount extends StatefulWidget {
  @override
  _CreateAcountState createState() => _CreateAcountState();
}

class _CreateAcountState extends State<CreateAcount> {
  var _fullNameController = new TextEditingController();
  var _phoneNumberController = new TextEditingController();
  User currentUser = new User.init().getCurrentUser();

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/home',arguments: [currentUser.name,currentUser.phoneNumber]);
          },
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor),
        ),
        title: Text(
          "Create An Acount",
          style:TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ), 
      ),
      body: SingleChildScrollView(
        child:Container(
          height: double.maxFinite,
          color: Theme.of(context).primaryColor,
          child:Column(
            children: <Widget>[
              Container(
                padding:EdgeInsets.all(12.0),
                child:Column(
                  children: <Widget>[
                    FormBuilder(
                      key: _fbKey,
                      initialValue: {
                       
                      },
                      autovalidate: true,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                          
                            ),
                            child:FormBuilderTextField(
                              attribute: "Full Name",
                              initialValue: 'raoufsmari',//for testing
                              controller: _fullNameController,
                              decoration: InputDecoration(
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins'

                                ),
                                border: InputBorder.none,

                              ),

                              validators: [
                                FormBuilderValidators.max(70),
                                FormBuilderValidators.required(),
                              ],
                            ), 
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child:FormBuilderDropdown(
                              initialValue: 'New York',//for testing
                              attribute: "city",
                              decoration: InputDecoration(border: InputBorder.none,hintText: "City",hintStyle: TextStyle(fontFamily: 'Poppins')),
                              hint: Text('Select your city',style:TextStyle(fontFamily: 'Poppins')),
                              
                              items: ['New York', 'California', 'Los Angelos','las Vigas','Wachinton']
                                .map((country) => DropdownMenuItem(
                                   value: country,
                                   child: Text("$country")
                              )).toList(),
                            ),
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child: FormBuilderTextField(
                              attribute: "phone Number",
                              initialValue: '213796113384',//for testing
                              controller: _phoneNumberController,
                              decoration: InputDecoration(border: InputBorder.none,hintText: "Phone Number",hintStyle: TextStyle(fontFamily: 'Poppins'),prefixText: "+",),
                              keyboardType: TextInputType.number,
                              

                              validators: [
                                //FormBuilderValidators.numeric(),
                                FormBuilderValidators.required(),
                              ],
                            ),
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child: FormBuilderDateTimePicker(
                              attribute: "Birth Day",
                              inputType: InputType.date,
                              decoration:
                                  InputDecoration(border: InputBorder.none,hintText: "Birth Day",hintStyle: TextStyle(fontFamily: 'Poppins')),
                            ),
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child:FormBuilderDropdown(
                              attribute: "gender",

                              decoration: InputDecoration(border: InputBorder.none,hintText: "Gender",hintStyle: TextStyle(fontFamily: 'Poppins')),
                              initialValue: 'Male',
                              hint: Text('Select Gender'),
                              items: ['Male', 'Female', 'Other']
                                .map((gender) => DropdownMenuItem(
                                   value: gender,
                                   child: Text("$gender")
                              )).toList(),
                            ),
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child: FormBuilderTextField(
                              attribute: "Weight",
                              initialValue: '25',//for testing
                              keyboardType: TextInputType.number,
                              decoration:InputDecoration(border: InputBorder.none,hintText: "Weight",hintStyle: TextStyle(fontFamily: 'Poppins'),suffixText: 'KG'),
                              validators: [
                                FormBuilderValidators.numeric(),
                                FormBuilderValidators.required(),
                              ],
                            ),
                          ),
                          Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey.withOpacity(0.4)                           
                            ),
                            child: FormBuilderTextField(
                              attribute: "Height",
                              initialValue: '62',//for testing
                              keyboardType: TextInputType.number,
                              decoration:InputDecoration(border: InputBorder.none,hintText: "Height",hintStyle: TextStyle(fontFamily: 'Poppins'),suffixText: 'CM'),
                              validators: [
                                FormBuilderValidators.numeric(),
                                FormBuilderValidators.required(),
                              ],                            
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ), 
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child:Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color:Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: "Poppins"
                  ),
                ),
                onPressed: () {
                  if (_fbKey.currentState.saveAndValidate()) {
                    print(_fbKey.currentState.value);
                    Navigator.of(context).pushNamed('/home', arguments:[_fullNameController.text,_phoneNumberController.text.toString()]);
                  }
                },
              ),
              MaterialButton(
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color:Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: "Poppins"
                  ),
                ),
                onPressed: () {
                  _fbKey.currentState.reset();
                },
              ),
            ],
          ),
        ),
      ),      
    );
  }
}