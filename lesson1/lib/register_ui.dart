
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterUI extends StatefulWidget{
  RegisterUIState createState(){
    return RegisterUIState();
  }
}

class RegisterUIState extends State<RegisterUI>{

  int radioGroupValue = 1;
  int radioGroupValue2 = 3; 
  var _globalKey1=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterUI with Check'),
      ),
      
      body: Form(
        key: _globalKey1,
        // autovalidateMode: AutovalidateMode.always,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back)
            ),
            
            SizedBox(height: 10),
            Text(
              'Create An Account',
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 9),

            TextFormField(
              onSaved: (String? name){
                print(name);
              },
              validator: (String? name){
                if(name!.isEmpty){
                  return 'Please Check Name';
                }
                return null;

              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Name',
              ),
            ),

            TextFormField(
              controller: emailController,
              validator: (String? email){
                if(email!.isEmpty){
                  return 'Please Check Email';
                }
                return null;

              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'Email',
              ),
            ),

            TextFormField(
              controller: passController,
              validator: (String? pass){
                if(pass!.isEmpty){
                  return 'Please Check Password';
                }
                return null;

              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Gender',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Radio(
                  value: 1, 
                  groupValue: radioGroupValue, 
                  onChanged: (int? val){
                    setState(() {
                      radioGroupValue=val!;
                    });
                  }
                ),
                
                Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Radio(
                  value: 2, 
                  groupValue: radioGroupValue, 
                  onChanged: (int? val){
                    setState(() {
                      radioGroupValue=val!;
                    });
                  }
                ),

                Text('Female',
                style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            
            Text(
              'Single or Married',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 3),

            Row(
              children: [
                Radio(
                  value: 3, 
                  groupValue: radioGroupValue2, 
                  onChanged: (int? val){
                    setState(() {
                      radioGroupValue2=val!;
                    });
                  }
                ),
                
                Text(
                  'Married',
                  style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ],
            ),

            Row(
              children: [
                Radio(
                  value: 4, 
                  groupValue: radioGroupValue2, 
                  onChanged: (int? val){
                    setState(() {
                      radioGroupValue2=val!;
                    });
                  }
                ),

                Text(
                  'Single',
                  style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ],
            ),
            SizedBox(height: 10),
            
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: (){
                  // _globalKey1.currentState!.validate();
                  bool vaild=_globalKey1.currentState!.validate();
                  // var emailContext=emailController.text;
                  if(vaild){
                    print('Success');
                    print('Email Address is ${emailController.text}');
                    print(passController.text);
                    _globalKey1.currentState!.save();
                    // print('');
                    // print('');
                    // print('');
                    // print("Password is $passController.text");
                  }
                  else
                  print('Fail');

                  // _globalKey1.currentState!.save();
                }, 
                icon: Icon(Icons.chevron_right), 
                label: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text('Sign Up'),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                  
                ),
              ),
            ),
            SizedBox(height: 9),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold
                    )
                ),

                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();

                  }, 
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold
                    )
                    )
                )

              ]
            )


          ]
        ),
      ),
    );
  }
}
