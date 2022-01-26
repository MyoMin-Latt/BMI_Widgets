import 'package:flutter/material.dart';


class WinnerBoard extends StatelessWidget{

  String team;

  WinnerBoard(this.team);
  Widget build(BuildContext context){
    return Column(
    children: [
      Text(
              'The Winner is $team',
              textAlign: TextAlign.center,              
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 10),
            Image.asset('images/cartoon.jpg')
    ]
  );
  }
}