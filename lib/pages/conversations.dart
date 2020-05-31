import 'package:flutter/material.dart';
import 'package:medico/models/conversation.dart' as model;
import 'package:medico/widgets/conversationWidget.dart';
import 'package:medico/widgets/searchWidget.dart';

class Conversation extends StatefulWidget {
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  model.ConversationList conversationList;
  @override
  void initState() {
    this.conversationList = new model.ConversationList();
    super.initState();
  }
  var editingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Stack(
              children: <Widget>[
                Container(
                    height: 120,
                    padding: const EdgeInsets.only(left:20.0,right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25.0),bottomRight: Radius.circular(25.0)),
                      color: Theme.of(context).accentColor,
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Messages',
                              style: TextStyle(
                                fontSize:22.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),                 
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100,left: 12.0,right: 12.0),
                    child:SearchBarWidget(),
                  ),
              ],
            ),
            Container(
              padding:EdgeInsets.only(right: 12.0,left: 12.0,bottom: 12.0),
              decoration: BoxDecoration(            
               color: Colors.transparent,
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 15),
                shrinkWrap: true,
                primary: false,
                itemCount: conversationList.conversation.length,
                separatorBuilder: (context,index){
                  return SizedBox(height: 7,);
                },
                itemBuilder: (context,index){
                  return ConversationItemWidget(
                    conversation: conversationList.conversation.elementAt(index),
                  );
                },
              ),                
            ),
          ],
        ),
      ),
    );
  }
}
