import 'package:flutter/material.dart';



class Page4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page4'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     builder: (context){
                //       return Page1();
                //     }), 
                //   (route) => false);
              }, 
              child: Text('Push<go> to Page1')
            )
          ]
        ),
      ),
    );
  }
}
