import 'package:arektu_shikhi/views/dashboard.dart';
import 'package:arektu_shikhi/services/auth.dart';
import 'package:flutter/material.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);
  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  final _formkey = GlobalKey<FormState>();
  String username = "", phone = "";
  UserAuth userAuth = UserAuth();
  bool _isLoading = false;
  _onLogIn() async {
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
    if (_formkey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      Map<String, String> user = {"username": username, "phone": phone};
      await userAuth.getUser(user).then((value) {
        setState(() {
          _isLoading = false;
        });
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
      });
    }
  }

  // backgroundColor: Color(0xFF81d8d0),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfeff9e),
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 230,
              top: -120,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
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
                  color: Colors.grey[200],
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
                            'Welcome Back',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Log in to your account',
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
                                    ? "Enter correct Username"
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
                          SizedBox(
                            height: 20,
                          ),
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
                          SizedBox(height: 20),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
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
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
