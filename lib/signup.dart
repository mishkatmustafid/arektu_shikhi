import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  _onSignUp() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81d8d0),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 230,
            top: -120,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.5 - 275,
            bottom: -350,
            child: Container(
              width: 550,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create New Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Fill the forms below to register',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Class', hintStyle: TextStyle()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => _onSignUp(),
                    child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFff8f8f),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
