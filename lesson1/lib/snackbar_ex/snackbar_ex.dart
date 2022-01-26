import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/grid_ex/grid_view_builder_ex.dart';
import 'package:lesson1/page_view_ex/page_view_ex1.dart';

class SnackbarEx extends StatefulWidget {
  @override
  _SnackbarExState createState() => _SnackbarExState();
}

class _SnackbarExState extends State<SnackbarEx> {

  var _scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            ElevatedButton(
              onPressed: (){
                print('Touch');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.indigo[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    behavior: SnackBarBehavior.floating,
                    onVisible: (){
                      print('Function onVisible');
                    },
                    action: SnackBarAction(
                      label: 'SnackBarAction', 
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context){
                              return GridViewBuilderEx();

                            } 
                          )
                        );
                      }
                    ),
                    width: 300,
                    duration: Duration(seconds: 10),
                    padding: EdgeInsets.all(10),
                    elevation: 9,
                    content: Text('Snackbar')
                  )
                );               

              }, 
              child: Text('Show Snackbar')
            ),

            ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  isDismissible: false,
                  context: context, 
                  builder: (context){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Music'),
                          leading: Icon(Icons.music_note),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text('Movie'),
                          leading: Icon(Icons.movie),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text('Film'),
                          leading: Icon(Icons.movie_filter_sharp),
                          onLongPress: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context){
                                  return PageViewEx1();
                                }
                              )
                            );
                          },
                        ),
                        
                      ]
                    );
                  }
                );
              }, 
              child: Text('Show Bottom Sheet')
            ),

            OutlinedButton(
              onPressed: (){
                showCupertinoModalPopup(
                  context: context, 
                  builder: (context){
                    return CupertinoActionSheet(
                      title: Text('Exit'),
                      message: Text('Are you suer to exit'),
                      actions: [
                        OutlinedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Text('Cancel') 
                        ),

                        OutlinedButton(
                          onPressed: (){
                            Navigator.pop(context);
                            // exit(0);
                          }, 
                          child: Text('Ok') 
                        ),
                      ],

                    );
                  }
                );
              }, 
              child: Text('ShowCupartinoPopup,Sheet')
            ),

            OutlinedButton(
              onPressed: ()
              // {
              //   showDatePicker(
              //     context: context, 
              //     initialDate: DateTime.now(), 
              //     firstDate: DateTime(2000), 
              //     lastDate: DateTime(2022,1,30)
              //   ).then((value) {
              //     print(value);
              //   });
              // },
              async{
                var _showDPValue= await showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2022,1,30)
                );
                if(_showDPValue!=null){
                  print(_showDPValue);
                  print(_showDPValue.year.toString() + " year");
                  print(_showDPValue.month.toString() + "month");
                  print(_showDPValue.day);
                  // print(_showDPValue.hour);
                  // print(_showDPValue.minute);

                }
              }, 
              child: Text('Show DatePicker')
            ),

            OutlinedButton(
              onPressed: (){
                showTimePicker(
                  context: context, 
                  initialTime: TimeOfDay.now()
                ).then((showTPValue) {
                  if(showTPValue!=null){
                    print(showTPValue);
                    print(showTPValue.hour.toString() + 'hour');
                    print(showTPValue.minute);
                  }
                });
              }, 
              child: Text('Show Time Picker')
            ),

            OutlinedButton(onPressed: (){
              showDateRangePicker(
                context: context, 
                firstDate: DateTime(2000), 
                lastDate: DateTime(2022,12)
              ).then((value) {
                if(value!=null){
                  print(value);
                  print(value.start);
                  print(value.end);
                  print(value.duration.inHours);
                }
              });

            }, child: Text('Show DateRange Picker'))

          ],
        ),
      ),
    );
  }
}




