import 'package:flutter/material.dart';

class ListTileEx extends StatelessWidget {
  const ListTileEx({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile')
      ),
      
      body: Column(
        children: [
          ListTile(
          leading: Container(
            height: 50,
            width: 50,
            color: Colors.red,
            child: Icon(
              Icons.home, color: Colors.white,
            ),
          ),
          trailing: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.arrow_right)
          ),
          title: Text('Title1'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Subtitle1'),
              Text('Subtitle2'),              
            ],
          ),

          isThreeLine: true,
          // dense: true,

          onTap: (){
            print('onTap');
          },

          onLongPress: (){
            print('OnLongPress');
          },

        enabled: true, 
        selected: true,

        ),


        ListTile(
          // enabled: false,
          selected: true,
          contentPadding: EdgeInsets.all(25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
          leading:
           Container(
            height: 50,
            width: 50,
            color: Colors.red,
            child: Icon(
              Icons.home, color: Colors.white,
            ),
          ),
          trailing: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.arrow_right)
          ),
          title: Text('Title2'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Subtitle1'),
              Text('Subtitle2'),              
            ],
          ),

          isThreeLine: true,
          // dense: true,

          onTap: (){
            print('onTap');
          },

          onLongPress: (){
            print('OnLongPress');
          },

          

        )
        ],
      ),
    );
  }
}





