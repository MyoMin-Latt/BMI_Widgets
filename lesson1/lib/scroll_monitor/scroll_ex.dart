import 'package:flutter/material.dart';

class ScrollEx extends StatefulWidget {
  @override
  _ScrollExState createState() => _ScrollExState();
}

class _ScrollExState extends State<ScrollEx> {

  ScrollController _listViewController=ScrollController();
  var isShow=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _listViewController.addListener(() {
      print(_listViewController.offset);
      if(_listViewController.offset>300){
      setState(() {
        isShow=true;
      });
    }
    else{
      setState(() {
        isShow=false;
      });
    }
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar')
      ),
      
      body: Scrollbar(
        thickness: 7,
              child: ListView(
                controller: _listViewController,
          children: [
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Mg Myo Min'),
              leading: Icon(Icons.person),
            ),

          ]
        ),
      ),

      floatingActionButton: isShow? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _listViewController.animateTo(
            0, 
            duration: Duration(seconds: 1), 
            curve: Curves.bounceIn
          );
        },
      ):
      Container(),
      
    );
  }
  @override
  void dispose() {
    _listViewController.dispose();
    super.dispose();
  }
}