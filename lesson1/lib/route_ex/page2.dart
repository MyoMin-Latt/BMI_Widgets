import 'package:flutter/material.dart';



class Page2 extends StatelessWidget{

  String num;
  Page2 (this.num);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[

            Text(
              num,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),


            ElevatedButton(
              onPressed: (){
                if(Navigator.of(context).canPop()){
                  Navigator.of(context).pop('Data from Page2');
                }
                else{
                  print('You are ony one. Cannot Go Back');
                }
              }, 
              child: Text('pop<back> to Page1')
            ),





            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, '/Page3');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context){
                //       return Page3();
                //     }
                //   )
                // );
                
            //   }, 
            //   child: Text('push<go> to Page3')
            // )
          ]
        ),
      ),
    );
  }
}
