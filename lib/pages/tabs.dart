import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:medico/pages/acount.dart';
import 'package:medico/pages/conversations.dart' as prefix0;
import 'home.dart';

class TabsWidget extends StatefulWidget {

  final List<String> acountInfos;
  
  const TabsWidget({Key key, this.acountInfos}) : super(key: key);

  
  @override
  State<StatefulWidget> createState() {
    return _BubblesState();
  }
}

class _BubblesState extends State<TabsWidget> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int _page = 0;
  String currentTitle = 'Home';
  Widget _currentPage (int page){
    switch (page){
      case 0 :
        currentTitle = 'Home';
        return Home(value: "${widget.acountInfos[0]}");
      case 1 :
        currentTitle = 'chat';  
        return prefix0.Conversation();
      case 2 :
        currentTitle = 'profile';
        return AcountWidget(acountInfos: ["${widget.acountInfos[0]}","${widget.acountInfos[1]}"],);
      default:
        currentTitle = 'Home';
        return Home(value: "${widget.acountInfos[0]}");

    }
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage(_page),
      bottomNavigationBar: CurvedNavigationBar(
        initialIndex: 0,
        items: <Widget>[
          Icon(Icons.home, size: 25,color: Theme.of(context).primaryColor,),
          Icon(Icons.chat, size: 25,color: Theme.of(context).primaryColor,),
          Icon(Icons.perm_identity, size: 25,color: Theme.of(context).primaryColor,),
        ],
        color: Theme.of(context).accentColor,
        buttonBackgroundColor: Theme.of(context).accentColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
            _currentPage(_page);
          });
        },
      ),
    );
  }
}
