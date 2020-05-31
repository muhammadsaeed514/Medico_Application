import'package:flutter/material.dart';
import 'package:medico/models/conversation.dart' as model;
class ConversationItemWidget extends StatefulWidget {
  final model.Conversation conversation;
  const ConversationItemWidget({Key key, this.conversation}) : super(key: key);
  @override
  _ConversationItemWidgetState createState() => _ConversationItemWidgetState();
}

class _ConversationItemWidgetState extends State<ConversationItemWidget> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: FlatButton(
        onPressed: (){
          Navigator.of(context).pushNamed('/chat');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                margin: const EdgeInsets.only(right: 25.0),
                child:ball(this.widget.conversation.image),
              ),
                Container(
                child: Text(
                  '${widget.conversation.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 12.0,
                  ),
                ),
              ),
              ],
            ),
            Container(
            height: 10,width: 10.0,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
          ],
        ),
      ),
    );
  }
  Widget ball(String image){
    return Container(
      height: 60,width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,),
      ),
    );
  }
}