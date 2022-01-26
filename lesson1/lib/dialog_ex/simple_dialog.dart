import 'package:flutter/material.dart';

class SimpleDialogEx extends StatefulWidget {
  @override
  _SimpleDialogExState createState() => _SimpleDialogExState();
}

class _SimpleDialogExState extends State<SimpleDialogEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog')
      ),

      body: Column(
        children:[
          ElevatedButton(
            child: Text('SimpleDialog'),
            onPressed: ()async{
              String dogDialog=await showDialog(
                context: context, 
                builder: (context){
                  return SimpleDialog(
                   title: Text('SimpleDialog'),
                   children: [
                    //  Image.asset('images/cartoon.jpg'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     Text('Dialog with cartoon'),
                     OutlinedButton(
                       onPressed: (){
                         Navigator.of(context).pop('Dog');

                       },
                       child: Text('Ok')
                     )
                   ],
                  );
                }
              );
              print(dogDialog);
            },
          )
        ]
      ),
      
    );
  }
}







