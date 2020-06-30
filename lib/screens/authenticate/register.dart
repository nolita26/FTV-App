import 'package:connectingwithfirebase/screens/authenticate/login.dart';
import 'package:connectingwithfirebase/services/auth.dart';
import 'package:connectingwithfirebase/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formkey = GlobalKey<FormState>();
  String _email, _password;
  bool isLoading = false;
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Container(
                height: 900,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/model6.jpg'),
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
                  child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 40),
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
                                return item.contains("@")
                                    ? null
                                    : "Enter valid Email";
                              },
                              onChanged: (item) {
                                setState(() {
                                  _email = item;
                                });
                              },
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white10,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white10,
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
                                return item.length > 6
                                    ? null
                                    : "Password must be 6 characters";
                              },
                              onChanged: (item) {
                                setState(() {
                                  _password = item;
                                });
                              },
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white10,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white10,
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
                                color: Colors.white10),
                            child: Center(
                              child: FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  signup();
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Login()));
                              },
                              child: Center(
                                child: Text(
                                  "Login Here",
                                  style: TextStyle(
                                    color: Colors.white,
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

  void signup() {
    if (_formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      _authService.registerWithEmailAndPassword(_email, _password).then((user) {
        // sign up
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "Register Success");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => HomePage()),
            (Route<dynamic> route) => false);
      }).catchError((onError) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "error " + onError.toString());
      });
    }
  }
}
