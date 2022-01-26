import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogEx extends StatefulWidget {
  @override
  _DialogExState createState() => _DialogExState();
}

class _DialogExState extends State<DialogEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog')
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: Text('AlertDialog'),
              onPressed: ()async{
                String a = await showDialog(
                  // barrierLabel: 'BarrierLabel>showDialog',
                  // useSafeArea: false,
                  barrierDismissible: false,
                  barrierColor: Colors.green.withOpacity(0.5),
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      scrollable: true,
                      title: Text('AlertDialog'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                          Text('This is AlertDialog'),
                        ],
                      ),
                      actions: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).pop('Yes');
                            // exit(0);
                          }, 
                          child: Text('Yes')
                        ),

                        OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).pop('No');
                          }, 
                          child: Text('No')
                        ),

                      ],

                    );
                  }
                );
                print(a);

              },
            ),

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
          ),

          ElevatedButton(
            child: Text('CupertinoAlertDialog'),
            onPressed: ()async{
              String c = await showCupertinoDialog(
                context: context, 
                builder: (context){
                  return CupertinoAlertDialog(
                    title: Text('Exit from Application'),
                    content: Text('Are you sure to exit.'),
                    actions: [
                      CupertinoButton(
                        child: Text('Cancel'), 
                        onPressed: (){
                          Navigator.of(context).pop('Cancel at Cupertino');
                        }
                      ),
                      CupertinoButton(
                        child: Text('Done'), 
                        onPressed: (){
                          Navigator.of(context).pop('Done at Cupertino');

                        }
                      )
                    ],
                  );

                }
              );
              print(c);

            },
          ),


          ]
        ),
      ),
    );
  }
}


