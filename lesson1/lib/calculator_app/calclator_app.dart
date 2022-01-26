import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  var _num1Tec=TextEditingController();
  var _num2Tec=TextEditingController();
  num result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num1Tec,
                    decoration: InputDecoration(
                      labelText: 'Number1',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(width: 20),

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num2Tec,                       
                    decoration: InputDecoration(
                      labelText: 'Number1',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    num num1=num.parse(_num1Tec.text);
                    num num2=num.parse(_num2Tec.text);
                    setState(() {
                      result=num1+num2;
                    });
                  }, 
                  child: Text('+')
                ),

                ElevatedButton(
                  onPressed: (){
                    num num1=num.parse(_num1Tec.text);
                    num num2=num.parse(_num2Tec.text);
                    if(num1>num2){
                      setState(() {
                        result=num1-num2;
                      });
                    }
                    else{
                      setState(() {
                        result=num2-num1;
                      });
                    }
                  }, 
                  child: Text('-')
                ),

                ElevatedButton(
                  onPressed: (){
                    num num1=num.parse(_num1Tec.text);
                    num num2=num.parse(_num2Tec.text);
                    setState(() {
                      result=num1*num2;
                    });
                  }, 
                  child: Text('x')
                ),

                ElevatedButton(
                  onPressed: (){
                    num num1=num.parse(_num1Tec.text);
                    num num2=num.parse(_num2Tec.text);
                    setState(() {
                      result=num1/num2;
                    });
                  }, 
                  child: Text('/')
                ),
              ]
            ),
            SizedBox(height: 20),

            Text(
              'Result: $result',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              )
            ),
          ]
        ),
      ),
      
    );
  }
}




