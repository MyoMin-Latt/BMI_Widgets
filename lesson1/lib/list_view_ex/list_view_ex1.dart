import 'package:flutter/material.dart';

class ListViewEx1 extends StatefulWidget {
  @override
  _ListViewEx1State createState() => _ListViewEx1State();
}

class _ListViewEx1State extends State<ListViewEx1> {
  @override
  var _addController=TextEditingController();
  List<String> list=[];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewEx1')
      ),

      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _addController,

                )
              ),
              OutlinedButton(
                onPressed: (){
                  setState(() {
                    return list.add(_addController.text);
                  });
                  _addController.clear();

                }, 
                child: Text('Add'))
              
            ],
          ),

          Expanded(
            child: ListView(
              children: list.map((val) {
                return ListTile(
                  title: Text(val),
                  leading: Icon(Icons.person),
                );
              })
              .toList()



              // [
              //   Text(list[0]),
              //   Text(list[1]),
              //   Text(list[2]),
              //   Text(list[3]),
              //   Text(list[4]),
              // ]
            ),
          ),
        ],
      ),
    );
  }
}