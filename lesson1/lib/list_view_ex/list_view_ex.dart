import 'package:flutter/material.dart';
import 'package:lesson1/list_view_ex/list_view_ex1.dart';

class ListViewEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return ListViewEx1();
                  } 
                )
              );

            }, 
            icon: Icon(Icons.skip_next)
          )
        ],
      ),


      body: ListView(
        itemExtent: 300,
        children: [
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),

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
        ],
      ),
      
    );
  }
}