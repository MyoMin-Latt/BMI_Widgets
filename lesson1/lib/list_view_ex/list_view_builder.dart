import 'package:flutter/material.dart';

class ListViewBuilderEx extends StatefulWidget {
  @override
  _ListViewBuilderExState createState() => _ListViewBuilderExState();
}

class _ListViewBuilderExState extends State<ListViewBuilderEx> {
  @override

  var _addController = TextEditingController();

  List<String> list=[    
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewBuilder')
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

              TextButton(
                onPressed: (){
                  setState(() {
                    return list.add(_addController.text);
                  });
                  _addController.clear();
                }, 
                child: Text('Add')
              )
            ],
          ),

          //Condition ?
          list.length==0? 
          Expanded(
                      child: Center(
              child: Text('Empty'),
            ),
          ):

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index){
                return ListTile(title: Text('${index+1}. ${list[index]}'));
              },

              itemCount: list.length,
            ),
          ),
        ],
      ),
      
    );
  }
}