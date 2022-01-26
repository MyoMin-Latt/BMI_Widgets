import 'package:flutter/material.dart';
import 'package:lesson1/bmi_ex/bmibloc.dart';

class BmiEx extends StatefulWidget {
  @override
  _BmiExState createState() => _BmiExState();
}

class _BmiExState extends State<BmiEx> {

  var _weightTec = TextEditingController();
  var _heightFeetTec = TextEditingController();
  var _heightInchTec = TextEditingController();

  var _gKey=GlobalKey<FormState>();
  final _bloc = BmiBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI EX')
      ),
      
      body: Form(
        key: _gKey,
              child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 15),
              TextFormField(
                validator: (weight){
                  if(weight!.isEmpty){
                    return 'required';
                  }
                  else{
                    return null;
                  }
                },
                controller: _weightTec,
                decoration: InputDecoration(
                  labelText: 'Enter Weight (Lbs)',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (height){
                        if(height!.isEmpty){
                          return 'required';
                        }
                        else{
                          return null;
                        }
                      },
                      controller: _heightFeetTec,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Height(feet)'
                      ),
                    ),
                  ),
                  SizedBox(width: 15),

                  Expanded(
                    child: TextFormField(
                      validator: (height){
                        if(height!.isEmpty){
                          return 'required';
                        }
                        else{
                          return null;
                        }
                      },
                      controller: _heightInchTec,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Height(inches)'
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(height: 15),

              ElevatedButton(
                onPressed: (){
                  bool isValid = _gKey.currentState!.validate();
                  if(!isValid){
                    return;
                  }
                  
                  num weight=num.parse(_weightTec.text);
                  num heightFeet=num.parse(_heightFeetTec.text);
                  num heightInch=num.parse(_heightInchTec.text);
                  _bloc.CalculateBmi(weight, heightFeet, heightInch);
                  
                }, 
                child: Text('Calculate BMI')
              ),
              SizedBox(height: 15),

              StreamBuilder<num>(
                stream: _bloc.getCalData(),
                builder: (BuildContext context, AsyncSnapshot<num> snapshot){
                  if(snapshot.hasData){
                    return Text(
                      "Your BMI is : ${snapshot.data!.toStringAsFixed(2)}",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                ),
                    );
                  }
                  else{
                    return Text('');
                  }
                }
              ),

              StreamBuilder<String>(
                stream: _bloc.getTextData(),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot){
                  if(snapshot.hasData){
                    return Text(
                      snapshot.data!,
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                ),
                    );
                  }
                  else{
                    return Text('');
                  }
                }
              ),

             
              // Text(
              //   'Your Class is: $bmiClass',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold
              //   ),
              // )


            ]
          ),
        ),
      ),
    );
  }
}


