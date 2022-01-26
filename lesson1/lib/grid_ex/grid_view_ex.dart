import 'package:flutter/material.dart';

class GridViewEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewEx')
      ),
      body: GridView(
        padding: EdgeInsets.all(7),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          // mainAxisExtent: 150,
          childAspectRatio: .5
        ),
        children: [
          Container(
            color: Colors.red
          ),

          Container(
            color: Colors.orange
          ),

          Container(
            color: Colors.yellow
          ),

          Container(
            color: Colors.green
          ),

          Container(
            color: Colors.blue
          ),

          Container(
            color: Colors.indigo
          ),

          Container(
            color: Colors.black
          ),
        ],
      ),
    );
  }
}