import 'package:flutter/material.dart';

class PageViewEx extends StatefulWidget {
  @override
  _PageViewExState createState() => _PageViewExState();
}

class _PageViewExState extends State<PageViewEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageViewEx")
      ),

      body: PageView(
        scrollDirection: Axis.vertical, 
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.indigo,
          ),


        ],
      ),
      
    );
  }
}