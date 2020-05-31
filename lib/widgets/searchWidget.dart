import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Theme.of(context).hintColor.withOpacity(0.10), offset: Offset(0, 4), blurRadius: 10)
        ],
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          TextField(
            onTap: (){
              
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              hintText: 'Search',
              hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: 'Poppins'),
              prefixIcon: Icon(Icons.search, size: 20, color: Theme.of(context).hintColor),
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}
