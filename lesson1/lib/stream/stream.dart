import 'dart:async';

import 'package:flutter/material.dart';

class StreamEx extends StatefulWidget {
  const StreamEx({ Key? key }) : super(key: key);

  @override
  _StreamExState createState() => _StreamExState();
}

class _StreamExState extends State<StreamEx> {

StreamSubscription? subscription;
Stream<int> getData()async*{
  for(int i=1; i<=5; i++){
    await Future.delayed(Duration(seconds: 1));
    if(i==3){
      // throw "Exception("Error")";
      throw "Error";
    }
    yield i;
  }
}

@override
  void initState() {
    subscription = getData()
    // .distinct()
    // .takeWhile((element) => element < 5)
    // .take(2)
    // .skipWhile((element) {
    //   return element < 3;
    // })
    // .map((event) {
    //   return 'This is integer $event';
    // })
    .listen((event) {
      print(event);
    },onDone: (){
      print('Done');
    },onError: (e){
      print(e);
    },cancelOnError: true
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Exercise'),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: (){
              subscription!.pause();
            }, 
            child: Text("Pause Stream")
          ),
          TextButton(
            onPressed: (){
              subscription!.resume();
            }, 
            child: Text("Resume Stream")
          ),
          TextButton(
            onPressed: (){
              subscription!.cancel();
            }, 
            child: Text("Cancel Stream")
          ),
          StreamBuilder(
            stream: getData(),
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot){
              if(snapshot.hasError){
                return Center(child: Text(snapshot.error.toString()),);
              }
              else{
                return Center(child: Text(snapshot.data.toString()));
              }
              
            }
          ),
      
        ],
      ),
    );
  }
}