import 'package:flutter/material.dart';


class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/Page4', (route) => false);
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     builder: (context){
                //       return Page4();
                //     }), 
                //   (route) => false);
              }, 
              child: Text('Push<Go> to Page4')
            )
          ]
        ),
      ),
    );
  }
}
