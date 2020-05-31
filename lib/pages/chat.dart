import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medico/models/chat.dart';
import 'package:medico/models/conversation.dart';
import 'package:medico/models/doctor.dart';
import 'package:medico/models/user.dart';
import 'package:medico/widgets/chatWidget.dart';


class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  ConversationList _conversationList = new ConversationList();
  User _currentUser = new User.init().getCurrentUser();
  Doctor _currentDoctor =new Doctor.init().getCurrentDoctor();
  final _myListKey = GlobalKey<AnimatedListState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(16.0),bottomRight: Radius.circular(16.0)),
        ),
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          _currentDoctor.name,
          style: TextStyle(
            fontSize:22.0,
            fontFamily: 'Poppins',
            color: Theme.of(context).primaryColor,
          ),
        ),

      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: AnimatedList(
              key: _myListKey,
              reverse: true,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              initialItemCount: _conversationList.conversation[0].chats.length,
              itemBuilder: (context, index, Animation<double> animation) {
                Chat chat = _conversationList.conversation[0].chats[index];
                return ChatMessageListItem(
                  chat: chat,
                  animation: animation,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12.0,right: 6.0,left: 6.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0,color: Colors.grey.withOpacity(0.6)),
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                //BoxShadow(color: Theme.of(context).hintColor.withOpacity(0.10), offset: Offset(0,-4), blurRadius: 10)
              ],
            ),
            child: TextField(
              controller: myController,
              
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10,bottom: 10),
                hintText: 'Message ...',
                hintStyle: TextStyle(color: Colors.grey,fontFamily: 'Poppins'),
                suffixIcon: IconButton(
                  padding: EdgeInsets.only(right: 30),
                  onPressed: () {
                    setState(() {
                      _conversationList.conversation[0].chats
                          .insert(0, new Chat(myController.text,'21min ago', _currentUser));
                      _myListKey.currentState.insertItem(0);
                    });
                    Timer(Duration(milliseconds: 100), () {
                      myController.clear();
                    });
                  },
                  icon: Icon(
                    Icons.send,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),
                ),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}
