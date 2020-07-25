import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/black_back.jpg"),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 35,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(), fullscreenDialog: true));
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 130),
                                Center(
                                  child: Text("Reset password",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Center(
                                    child: Text("Enter your registered email address. We will send you a link to reset your password",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                    height: 120,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Email",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20)),
                                            TextFormField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  hintText: "Email",
                                                  hintStyle:
                                                  TextStyle(color: LightColor.darkgrey, fontSize: 15.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                SizedBox(height: 20),
                                Center(
                                  child: Container(
                                    width: 150,
                                    height: 40,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Reset password',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      color: Colors.white,
                                      splashColor: Colors.blue,
                                      textColor: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
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
}
