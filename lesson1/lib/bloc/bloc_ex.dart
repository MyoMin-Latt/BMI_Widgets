import 'package:flutter/material.dart';
import 'package:lesson1/bloc/calculater_bloc.dart';


class BlocEx extends StatefulWidget {
  BlocEx({ Key? key }) : super(key: key);

  @override
  State<BlocEx> createState() => _BlocExState();
}

class _BlocExState extends State<BlocEx> {
  var _num1Tec = TextEditingController();
  var _num2Tec = TextEditingController();

  final _blocOb = CalculaterBloc();

  GlobalKey<FormState> _formStateGkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('Bloc Exercise'),),
            body: Form(
              key: _formStateGkey,
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  TextFormField(
                    validator: (str){
                      if(str!.isEmpty){
                        return "Please fill number";
                      }
                      else{
                        return null;
                      }
                    },
                    controller: _num1Tec,
                    decoration: InputDecoration(
                      label: Text('First Number')
                    ),
                  ),
                  TextFormField(
                    validator: (str){
                      if(str!.isEmpty){
                        return "Please fill number";
                      }
                      else{
                        return null;
                      }
                    },
                    controller: _num2Tec,
                    decoration: InputDecoration(
                      label: Text('Second Number')
                    ),
                  ),
            
                  SizedBox(height: 10,),
                  OutlinedButton(
                    onPressed: (){
                      var isValid = _formStateGkey.currentState!.validate();
                      if(!isValid){
                        return;
                      }
                      else{
                        int num1 = int.parse(_num1Tec.text);
                        int num2 = int.parse(_num2Tec.text);
                        return _blocOb.add(num1, num2);
                      }
                    }, 
                    child: Text("ADD")
                  ),
            
                  SizedBox(height: 10,),
                  OutlinedButton(
                    onPressed: (){
                      bool isValid = _formStateGkey.currentState!.validate();
                      if(!isValid){
                        return;
                      }
                      else{
                        int num1 = int.parse(_num1Tec.text);
                        int num2 = int.parse(_num2Tec.text);
                        return _blocOb.sub(num1, num2);
                        
                      }
                    }, 
                    child: Text("SUB")
                  ),
            
                  SizedBox(height: 10,),
                  StreamBuilder(
                    stream: _blocOb.getStream(),
                    initialData: 0,
                    builder: (BuildContext context, AsyncSnapshot<int> snapshot){
                      if(snapshot.hasData){
                        return Text('Result : ${snapshot.data}');
                      }
                      else{
                        return Text("Result : 0");
                      }
                    }
                  )
                ],
              ),
            ),
          );
  }
  @override
  void dispose() {
    _blocOb.sController.close();
    super.dispose();
  }
}









