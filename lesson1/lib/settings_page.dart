import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setttins Page'),
      ),
      body: Column(
        children: [
          OutlinedButton(
            child: Text('Yellow'),
            onPressed: (){
              Navigator.of(context).pop(Colors.yellow);

            },
          ),

          OutlinedButton(
            child: Text('Green'),
            onPressed: (){
              Navigator.of(context).pop(Colors.green);              
            },
          ),

          OutlinedButton(
            child: Text('Red'),
            onPressed: (){
              Navigator.of(context).pop(Colors.red);
            },
          )
        ]
      ),
      
    );
  }
}