import 'package:flutter/material.dart';

class CheckboxEx extends StatefulWidget{
  CheckboxExState createState(){
    return CheckboxExState();
  }
}

class CheckboxExState extends State<CheckboxEx>{
  @override

  bool check=false;
  bool sw=false;
  int radio = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox'),),
      body: Column(
        children: [
          Checkbox(
            value: check, 
            onChanged: (bool? change){
              print(change);
              setState(() {
                check=change!;
              });
            }
            ),
          
          Switch(
            value: sw, 
            onChanged: (bool? change){
              print(change);
              setState(() {
                sw=change!;
              });

            }
            ),


          Radio(
            value: 2,
            groupValue: radio, 
            onChanged: (int? val){
              print(val);
              setState(() {
                radio=val!;
              });
            }),

          Radio(
            value: 1,
            groupValue: radio, 
            onChanged: (int? val){
              print(val);
              setState(() {
                radio=val!;
              });
            })          
        ],
      )
    );
    
  }
}