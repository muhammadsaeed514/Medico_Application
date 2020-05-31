import 'package:medico/models/chat.dart';


class Conversation{
 String image;
 String name;
 List<Chat> chats;
 Conversation.advanced(this.image,this.name,this.chats);
 Conversation.basic(this.image,this.name);

}
class ConversationList{
  List<Conversation> _conversationList;

  ConversationList(){
    this._conversationList =[
      new Conversation.advanced("images/asset-1.png",'Dr.Alina james',new Chat.init().getChat(),),
      new Conversation.advanced("images/asset-6.png",'Dr.Nemeli Aaraf',new Chat.init().getChat(),),

    ];
  }
  List<Conversation> get conversation => _conversationList;

}