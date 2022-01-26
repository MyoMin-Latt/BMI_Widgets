import 'package:flutter/material.dart';

class CardEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset('images/cartoon.jpg'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('images/cartoon.jpg')
            ),
          ),


          // Card(
          //   color: Colors.green[300],
          //   child: ListTile(
          //     leading: Image.asset('images/cartoon.jpg'),
          //     title: Text('Dog'),
          //     subtitle: Text('Animal'),
          //     trailing: Icon(Icons.arrow_right),

          //   ),
          // ),

          // Card(
          //   elevation: 10,
          //   shadowColor: Colors.red,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          //   clipBehavior: Clip.antiAlias,
          //   margin: EdgeInsets.all(11),
          //   color: Colors.green[300],
          //   child: Column(
          //     children: [
          //       Image.asset('images/cartoon.jpg'),
          //       ListTile(
          //         title: Text('Cartoon'),
          //         subtitle: Text('Picture'),
          //       )
          //     ]
          //   ),
          // ),
        ],
      ),
      
    );
  }
}