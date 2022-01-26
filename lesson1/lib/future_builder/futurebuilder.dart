import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class FutureBuilderEx extends StatefulWidget {
  const FutureBuilderEx({ Key? key }) : super(key: key);

  @override
  _FutureBuilderExState createState() => _FutureBuilderExState();
}

class _FutureBuilderExState extends State<FutureBuilderEx> {

  DogOb? dogOb;

  Future<DogOb?> getData()async{
    var response = await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
    dogOb = DogOb.fromMap(jsonDecode(response.body));
    return dogOb;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),

      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<DogOb?> snapshot){
          if(snapshot.hasData){
            print(snapshot.data);
            // DogOb? dOb = snapshot.data;
            return SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Image.network(dogOb!.message!),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(dogOb!.status!),
                    )
                  ],
                )
              ),
            );
          }
          else{
            return Center(child: CircularProgressIndicator(color: Colors.blueAccent),);
          }
        }
      ),
    );
  }
}


class DogOb {
  String? message;
  String? status;

  DogOb({this.message, this.status});

  DogOb.fromMap(Map<String, dynamic> map){
    message = map['message'];
    status = map['status'];
  }
  
}