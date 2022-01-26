

import 'package:flutter/material.dart';
import 'package:lesson1/settings_page.dart';

class SuccessUI extends StatefulWidget {
  String email;
  String pass;
  SuccessUI(this.email,this.pass);

  _SuccessUIState createState() => _SuccessUIState();
}

class _SuccessUIState extends State<SuccessUI> {
  @override  
  Color color=Colors.indigo;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text('Success UI'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return SettingsPage();
                  }
                )
              ).then((value) {
                // setState(() {
                //   value=color;
                // });
                if(value!=null){
                  setState(() {
                    color=value;
                  });
                }
              });
              
            }, 
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address is ${widget.email}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Password is ${widget.pass}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ]
      ),
      
    );
  }
}