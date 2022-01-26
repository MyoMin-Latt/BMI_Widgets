import 'package:flutter/material.dart';

class FutureEx extends StatefulWidget {
  @override
  _FutureExState createState() => _FutureExState();
}

class _FutureExState extends State<FutureEx> {

  @override
  void initState() {    
    super.initState();
    waitfuture();
  }
  
  // work()async{
  //   // int a = await waitfuture();
  //   print(await waitfuture());
  // }

  Future<void> waitfuture()async{
    await Future.delayed(Duration(seconds: 3),(){
      setState(() {
        isLoading=false;
      });;
    });
    print('It works');
  }

  bool isLoading =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future')
      ),

      body: Center(
        child: Text(isLoading? 'Loading Data .....': 'Get Data ......')
      ),
    );
  }
}








