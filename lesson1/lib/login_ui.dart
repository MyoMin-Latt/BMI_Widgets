

import 'package:flutter/material.dart';
import 'package:lesson1/register_ui.dart';
import 'package:lesson1/success_ui.dart';

class LoginUI extends StatefulWidget{
  LoginUIState createState(){
    return LoginUIState();
  }

}
  
class LoginUIState extends State<LoginUI>{
  var _loginKey=GlobalKey<FormState>();
  bool check = false;

  var _emailController = TextEditingController();
  var _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FormField')),
      body: Form(
        key: _loginKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              
              Text(
                'Login', 
                style: TextStyle(
                  fontSize: 40, 
                  fontWeight: FontWeight.bold
                  ),),
              SizedBox(height:20),

              Text(
                'Please sign in to continue.', 
                style: TextStyle(
                  fontSize: 25, 
                  fontWeight: FontWeight.w700, 
                  color: Colors.grey
                  ),),
              SizedBox(height:30),

              //Email
              TextFormField(
                controller: _emailController,
                validator: (String? eMail){
                  if(eMail!.isEmpty){
                    return 'Please fill email address';
                  }
                  else if(!eMail.contains('@gmail.com')){
                    return 'Please check email address';
                  }
                  else
                  return null;
                },
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'EMail',
                  hintText: 'example@gmail.com',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.black, width: 20, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 10),



              //password
              TextFormField(
                controller: _passController,
                validator: (String? eMail){
                  if(eMail!.isEmpty){
                    return 'Please fill password';
                  }
                  return null;
                },
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  // prefix: Text('Hello@123'),
                  hintText: 'Hello@123',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: TextButton(
                    child: Text(
                      'Forget',
                      style: TextStyle(
                        color: Colors.amber
                      ),),
                    onPressed: (){},
                    
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
                ),
                obscureText: !check,
              ),
              
              

              Row(
                children: [
                  Checkbox(
                    value: check, 
                    onChanged: (bool? change){
                      setState(() {
                        check = change!;                      
                    });                    
                  }),

                  Text('Show Password')
                ],
              ),

            SizedBox(height: 20),


              // ElevatedButton(onPressed: (){}, child: Text('Sign Up')),

              
              Align(
                alignment: Alignment.bottomRight,
                            child: ElevatedButton.icon(
                  onPressed: (){
                    bool valid=_loginKey.currentState!.validate();
                    if(valid){
                      print('Start Login Proces');

                      Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context){
                          return SuccessUI(_emailController.text, _passController.text);
                        }
                      )
                    );

                    }
                    
                    
                  }, 
                  icon: Icon(Icons.chevron_right), 
                  label: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('LOGIN'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),),
              ),
            
            Spacer(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return RegisterUI();
                        }
                      )
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                )
              ]
            )
            ],),
        ),
      )
    );
  }

}






