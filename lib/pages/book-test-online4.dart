import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medico/models/doctor.dart';
import 'package:medico/models/user.dart';
class BookTestsOnlineFourthStep extends StatefulWidget {
  @override
  _BookTestsOnlineFourthStepState createState() => _BookTestsOnlineFourthStepState();
}

class _BookTestsOnlineFourthStepState extends State<BookTestsOnlineFourthStep> {
  User currentUser=new User.init().getCurrentUser();
  Doctor currentDoctor = new Doctor.init().getCurrentDoctor();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(16.0),bottomRight: Radius.circular(16.0)),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:Theme.of(context).primaryColor )
              
             
         ,
          onPressed: (){
            Navigator.of(context).pushNamed('/thirdBookTest');
          },
        ),
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          'Book test & package online ...',
          style: TextStyle(
            fontSize:18.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(          
                child:Center(
                    child:Container(
                      padding: const EdgeInsets.only(top: 12,left: 12.0,right: 12.0,bottom:20) ,
                      child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),

                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                            child: Text(
                              "1",
                               style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 50,
                            height: 3,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Container(
                          height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                            child: Text(
                              "2",
                               style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 50,
                            height: 3,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Container(
                          height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(width: 1,color: Colors.grey.withOpacity(0.8)),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                            child: Text(
                              "3",
                               style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 50,
                            height: 3,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Container(
                          height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(width: 1,color: Colors.grey.withOpacity(0.8)),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              "4",
                               style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor,
                            ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),     
            ),
            Container(
              padding:EdgeInsets.only(top:12.0,right: 12.0,left: 12.0,bottom: 12.0),
              margin:EdgeInsets.only(right: 12.0,left: 12.0,bottom: 12.0),
              width: double.maxFinite,
              decoration: BoxDecoration(            
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ball(currentDoctor.avatar, Colors.transparent),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            currentDoctor.name,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 200,
                            child:Text(
                              currentDoctor.description,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.0,
                                color:Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 50.0,
                            margin:  const EdgeInsets.only(top: 12.0),
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5,color: Color(0xdddddddd)),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey[200].withOpacity(0.6),                          
                            ),
                            child:FormBuilderTextField(
                              attribute: "Full Name",
                              initialValue: '',//for testing
                              decoration: InputDecoration(
                                hintText: "Name",
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
                              border: Border.all(width: 1.5,color: Color(0xdddddddd)),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey[200].withOpacity(0.6),                          
                            ),
                            child:FormBuilderTextField(
                              attribute: "Email",
                              initialValue: '',//for testing
                              decoration: InputDecoration(
                                hintText: "E-mail",
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
                              border: Border.all(width: 1.5,color: Color(0xdddddddd)),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey[200].withOpacity(0.6),                          
                            ),
                            child: FormBuilderTextField(
                              attribute: "phone Number",
                              initialValue: '',//for testing
                              decoration: InputDecoration(border: InputBorder.none,hintText: "Phone Number",hintStyle: TextStyle(fontFamily: 'Poppins'),prefixText: "+",),
                              keyboardType: TextInputType.number,
                              validators: [
                                //FormBuilderValidators.numeric(),
                                FormBuilderValidators.required(),
                              ],
                            ),
                          ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 100,
                              margin:  const EdgeInsets.only(top: 12.0),
                              padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,color: Color(0xdddddddd)),
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200].withOpacity(0.6),                          
                              ),
                              child: FormBuilderTextField(
                                attribute: "Age",
                                initialValue: '',//for testing
                                decoration: InputDecoration(border: InputBorder.none,hintText: "Age",hintStyle: TextStyle(fontFamily: 'Poppins'),),
                                keyboardType: TextInputType.number,
                                validators: [
                                  //FormBuilderValidators.numeric(),
                                  FormBuilderValidators.required(),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0,),
                            Container(
                              height: 50.0,
                              width: 100,
                              margin:  const EdgeInsets.only(top: 12.0),
                              padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,color: Color(0xdddddddd)),
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200].withOpacity(0.6),                          
                              ),
                              child: FormBuilderTextField(
                                attribute: "Years",
                                initialValue: '',//for testing
                                decoration: InputDecoration(border: InputBorder.none,hintText: "Years",hintStyle: TextStyle(fontFamily: 'Poppins'),),
                                keyboardType: TextInputType.number,
                                validators: [
                                  FormBuilderValidators.numeric(),
                                  FormBuilderValidators.required(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
              padding:EdgeInsets.only(right: 0.0,left: 50.0,bottom: 0.0,top: 0),
              margin:EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 1,color: Colors.grey.withOpacity(0.6)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        '1 test Added',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: Colors.grey
                        ),
                      ),
                      Text(
                        '\$ 300',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: Theme.of(context).focusColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    elevation: 0,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: (){
                      Navigator.of(context).pushNamed("/home",arguments: [currentUser.name,currentUser.phoneNumber]);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    color: Theme.of(context).accentColor,
                    child:Container(
                      margin: EdgeInsets.only(left: 45.0,right: 45.0,top: 12,bottom: 12),
                      child:Text(
                        'Checkout',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
      ),
    );
  }
  Widget ball(String image,Color color){
    return Container(
      height: 60,width: 60.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,)

      ),
      
    );
  }
}