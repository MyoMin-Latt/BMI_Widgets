import 'dart:async';

import 'package:flutter/material.dart';

class StreamControllerEx extends StatefulWidget {
  const StreamControllerEx({ Key? key }) : super(key: key);

  @override
  _StreamControllerExState createState() => _StreamControllerExState();
}

class _StreamControllerExState extends State<StreamControllerEx> {

  StreamController<int> sController = StreamController<int>();



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: 
          Scaffold(
            appBar: AppBar(title: Text('StreamController'),),
            body: ListView(
              children: [
                OutlinedButton(
                  onPressed: (){
                    sController.sink.add(1);
                  }, 
                  child: Text('Send One')
                ),

                OutlinedButton(
                  onPressed: (){
                    sController.sink.add(2);
                  }, 
                  child: Text('Send Two')
                ),

                OutlinedButton(
                  onPressed: (){
                    sController.sink.add(3);
                  }, 
                  child: Text('Send Three')
                ),

                OutlinedButton(
                  onPressed: (){
                    sController.sink.addError('Error');
                  }, 
                  child: Text('Send Error')
                ),

                StreamBuilder(
                  stream: sController.stream,
                  initialData: 0,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot){
                    if(snapshot.hasError){
                      return Center(child: Text(snapshot.error.toString()));
                    }
                    else{
                      return Center(child: Text(snapshot.data.toString()));
                    }
                  }
                )
              ],
            ),
          ),
        ),




  



        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    sController.close();
    super.dispose();
  }
}