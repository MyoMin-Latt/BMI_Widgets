import 'package:flutter/material.dart';

class SingleChildScrollViewEx extends StatelessWidget {
  const SingleChildScrollViewEx({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SingleChildScrollView'),),



        body: SingleChildScrollView(
          
          primary: false,
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.all(8),

                  child: Column(
    children: [
      Container(
          height: 300,
          width: double.infinity,
          color: Colors.red,
      ),

      Container(
          height: 300,
          width: double.infinity,
          color: Colors.orange,
      ),

      Container(
          height: 300,
          width: double.infinity,
          color: Colors.yellow,
      ),

      Container(
          height: 300,
          width: double.infinity,
          color: Colors.green,
      ),

      Container(
          height: 300,
          width: double.infinity,
          color: Colors.blue,
      ),

      Container(
          height: 300,
          width: double.infinity,
          color: Colors.indigo,
      ),
      
    ]
          ),
        ),
        
      );
  }
}