import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ftvapp/pages/home_page.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/services/auth.dart';

import 'dashboard.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formkey = GlobalKey<FormState>();
  String _email, _password;
  bool isLoading = false;

  AuthService _authService = AuthService();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);


  @override
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/reg_back.png"),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, right: 20),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 20,
                        left: 10,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                    fullscreenDialog: true));
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RegisterForm(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Center RegisterForm() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Register",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(45),
                        fontFamily: "Poppins-Bold",
                        fontWeight: FontWeight.bold,
                        letterSpacing: .6)),
                SizedBox(
                  height: ScreenUtil().setHeight(75),
                ),
                Text("Username",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins-Medium",
                        fontSize: ScreenUtil().setSp(30))),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 15.0)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                Text("Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins-Medium",
                        fontSize: ScreenUtil().setSp(30))),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle:
                      TextStyle(color: Colors.black, fontSize: 15.0)),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      splashColor: Colors.blue,
                      textColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(35),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.black,
                    thickness: 3.0,
                  ),
                )),
            Text(
              "OR",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    thickness: 3.0,
                  ),
                )),
          ]),
          SizedBox(height: 25),
          _signInButton(),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Have an account?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 17,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login(),
                          fullscreenDialog: true));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _signInButton() {
    return FlatButton(
      color: Colors.white,
      splashColor: Colors.grey,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("images/google.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign up with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
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
