import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectingwithfirebase/nm_box.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   // NMButton(icon: Icons.arrow_back),
                   // NMButton(icon: Icons.menu),
                  ],
                ),
                AvatarImage(),
                SizedBox(height: 15),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: Colors.black,fontFamily: "Varela"),
                ),
                Text(
                  '',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                Text(
                  'Student',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,fontFamily: "Varela"),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NMButton(icon: Icons.settings),
                    SizedBox(width: 25),
                    NMButton(icon: Icons.edit),
                    SizedBox(width: 25),
                    NMButton(icon: Icons.message),
                  ],
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.edit,
                        count: '',
                        category: 'Edit Profile'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.lock,
                        count: '',
                        category: 'Security'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.heart,
                        count: '3',
                        category: 'Wishlist'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.shoppingCart,
                        count: '4',
                        category: 'Cart'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.glassWhiskey,
                        count: '97',
                        category: 'Progress'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.folderOpen,
                        count: '7',
                        category: 'projects'),
                  ],
                ),
                SizedBox(height: 35),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.07,
            minChildSize: 0.07,
            maxChildSize: 0.4,
            builder: (BuildContext context, scroll) {
              return Container(
                decoration: nMbox,
                child: ListView(
                  controller: scroll,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(Icons.share, color: fCL),
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700,fontFamily: "Varela"),
                          ),
                          SizedBox(height: 15),
                          Text(
                            '',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 35),
                          Container(
                            width: 225,
                            padding: EdgeInsets.all(10),
                            decoration: nMboxInvert,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.facebookF, color: fCL),
                                Icon(FontAwesomeIcons.twitter, color: fCL),
                                Icon(FontAwesomeIcons.instagram, color: fCL),
                                Icon(FontAwesomeIcons.whatsapp, color: fCL),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          FaIcon(
                            FontAwesomeIcons.copy,
                            color: Colors.blue.shade900,
                          ),
                          Text(
                            'Copy link',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.blue.shade900, size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: 150,
        height: 150,
        padding: EdgeInsets.all(1),
        decoration: nMbox,
        child: Container(
          decoration: nMbox,
          padding: EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/ayurveda.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}