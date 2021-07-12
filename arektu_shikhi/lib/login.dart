import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({ Key? key }) : super(key: key);
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  _onLogIn(){

  }
  // backgroundColor: Color(0xFF81d8d0),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfeff9e),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children:<Widget>[ 
          Positioned(
            left: 230,
            top: -120,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width*0.5 - 275,
            bottom: -350,
            child: Container(
              width: 550,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Log in to your account',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),  
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                ), 
                Container(
                  width: 200,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => _onLogIn(),
                    child: Text('Log In'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFff8f8f),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: GestureDetector(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        decoration: TextDecoration.underline, 
                      ),  
                    ),
                  ),
                ),
              ],
            ),
        ),],
      ),
    );
  }
}