import 'package:flutter/material.dart';
import 'dart:convert';

class JsonToDartEx extends StatefulWidget {
  @override
  _JsonToDartExState createState() => _JsonToDartExState();
}

class _JsonToDartExState extends State<JsonToDartEx> {

  String person="""{    
    "name": "Mg Mg",
    "age": 12,
    "address": "Mandalay"
  }""";

  String name = '';
  String age = '';
  String address = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json To Dart')
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              child: Text('JsonToDart'),
              onPressed: (){
                Map<String, dynamic> data=json.decode(person);
                Person pData=Person.fromMap(data);
                print(data);
                print(data['name']);
                print(data['age']);
                print(data['address']);
                setState(() {
                  name = pData.obName;
                  age = pData.obAge;
                  address = pData.obAddress;
                });             
                
              },
            ),
            Expanded(
                          child: ListView(
                children: [
                  Card(child: Text('Name is $name.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                  Card(child: Text('Age is $age.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                  Card(child: Text('Address is $address.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                ]
              ),
            )
          ]
        ),
      ),
      
    );
  }
}

class Person{
  late String obName;
  late String obAge;
  late String obAddress;

  Person.fromMap(Map<String, dynamic> data){
    obName=data['name'];
    obAge=data['age'].toString();
    obAddress=data['address'];
  }
  
}


