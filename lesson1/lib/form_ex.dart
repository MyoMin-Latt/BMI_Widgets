import 'package:flutter/material.dart';

class FormEX extends StatelessWidget{
  var _formKey = GlobalKey<FormState>();
  var _controller=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormWidget'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: (){
              // _formKey.currentState!.validate();
              var valid=_formKey.currentState!.validate();
              if(valid){
                print('Success');
                // print(_controller.text);
                // _controller.clear();
                _formKey.currentState!.save();
                _formKey.currentState!.reset();
                
              }
              else{
                print('Wrong');
              }
            },)],
        ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              onSaved: (str){
                print("Username is => $str");
              },
              // autovalidateMode: AutovalidateMode.always,

              // validator: (String? str){
              //   if(str!=null&&str.isEmpty){
              //     return 'Need to fill';
              //   }
              //   return null ;

              // },
              
              validator: (String? str){
                if(str!.isEmpty){
                  return 'Please check Username';
                }
                else if(!str.startsWith('U')){
                  return 'Please check first letter';
                }
                
                // if(!str.startsWith('D')){
                //   return 'Please check first letter';
                // }
                else
                return null;
              },
              autofocus: true,
              decoration: InputDecoration(
                // prefix: Text('09'),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: (){
                    _controller.clear();
                  }, 
                  icon: Icon(Icons.clear
                  )),
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.indigo),
                hintText: "U Ba",
                hintStyle: TextStyle(color: Colors.grey)                
              ),
            ),







            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                suffixIcon: Icon(Icons.check_circle),


              ),
            )


          ],
        ))
    );
  }
}



