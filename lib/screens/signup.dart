// import 'dart:math';
import 'package:arektu_shikhi/screens/dashboard.dart';
import 'package:arektu_shikhi/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  String username = "", name = "", phone = "", grade = "", userId = "";
  UserAuth userAuth = UserAuth();
  bool _isLoading = false;

  _onSignUp() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      userId = randomAlphaNumeric(16);
      Map<String, String> userMap = {
        "username": username,
        "name": name,
        "phone": phone,
        "grade": grade,
        "isAdmin": "No",
      };
      await userAuth.addUser(userMap, userId).then((value) {
        setState(() {
          _isLoading = false;
        });
        Navigator.pushReplacement(
          context, MaterialPageRoute(
            builder: (context) => Dashboard()
          )
        );
      });
    }
  }

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
            child: _isLoading
                ? Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Form(
                    key: _formkey,
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
                          child: TextFormField(
                            validator: (val) {
                              return val!.isEmpty
                                  ? "Enter correct Userame"
                                  : null;
                            },
                            onChanged: (val) {
                              this.username = val;
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Username',
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Full Name" : null;
                            },
                            onChanged: (val) {
                              this.name = val;
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            validator: (val) {
                              return val!.isEmpty
                                  ? "Enter correct phone number"
                                  : null;
                            },
                            onChanged: (val) {
                              this.phone = val;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            validator: (val) {
                              return val!.isEmpty
                                  ? "Enter correct grade"
                                  : null;
                            },
                            onChanged: (val) {
                              this.grade = val;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Grade', hintStyle: TextStyle()),
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
                        SizedBox(
                          height: 20,
                        ),
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
          ),
        ],
      ),
    );
  }
}
