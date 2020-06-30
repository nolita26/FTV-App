import 'package:connectingwithfirebase/screens/authenticate/register.dart';
import 'package:connectingwithfirebase/services/auth.dart';
import 'package:connectingwithfirebase/screens/homepage/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var _formkey = GlobalKey<FormState>();
  String _email, _password;
  bool isLoading = false;

    AuthService _authService = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading ? Center(
            child: CircularProgressIndicator())
            : Container(
                height: 900,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/model7.jpg'),
                        fit: BoxFit.cover,
                    ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.4)
                      ],
                      ),
                  ),
                  alignment: Alignment.center,
                  child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Container(
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                              ),
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (item) {
                                    return item.contains("@") ? null : "Enter valid Email";
                                  },
                                  onChanged: (item) {
                                    setState(() {
                                      _email = item;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                          ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                          ),
                                      ),
                                      hintText: "Username",
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                      ),
                                  ),
                              ),
                            ),
                            Container(
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                              ),
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                  obscureText: true,
                                  keyboardType: TextInputType.text,
                                  validator: (item) {
                                    return item.length > 6 ? null : "Password must be 6 characters";
                                  },
                                  onChanged: (item) {
                                    setState(() {
                                      _password = item;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                          ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                          ),
                                      ),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                      ),
                                  ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              height: 70,
                              margin: EdgeInsets.symmetric(horizontal: 100),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white10
                              ),
                              child: Center(
                                child: FlatButton(
                                  onPressed: () {
                                    login();
                                  },
                                  child: Center(
                                    child: Text("Login"),
                                  ),
                                  textColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) => Register()));
                                  },
                                child: Center(
                                    child: Text(
                                      "Register Here",
                                      style: TextStyle(
                                          color:Colors.white,
                                      ),
                                    ),
                                ),
                            ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ),
              ));
  }

  void login() {
    if (_formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      _authService.signInWithEmailAndPassword(_email, _password).then((user) {
        // sign up
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "Login Success");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomePage()), (Route<dynamic> route) => false);
      }).catchError((onError) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "error " + onError.toString());
      });
    }
  }
}