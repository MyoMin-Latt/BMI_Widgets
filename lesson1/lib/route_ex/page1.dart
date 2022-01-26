
import 'package:flutter/material.dart';
import 'package:lesson1/route_ex/page2.dart';



class Page1 extends StatelessWidget{
  @override

  var _page1controller = TextEditingController();

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1, Passing Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[

            TextFormField(
              controller: _page1controller,
              decoration: InputDecoration(
                hintText: 'Type something for Page2',
              ),
              
            ),


            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return Page2(_page1controller.text);
                      // return Page2('Passing Data from Page1');
                    }
                  )
                ).then((value) {
                  print(value);
                });
                // Navigator.pushNamed(context, '/Page2');
                            
              }, 
              child: Text('push<go> to Page2')
            ),

            
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushReplacementNamed(context, '/Page2');
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context){
                //       return Page2();
                //     },
                //     fullscreenDialog: true,
                //   )
                // );
            //   }, 
            //   child: Text('pushReplacement to Page2')
            // )


          ]
        ),
      ),
    );
  }
}
