import 'package:flutter/material.dart';
import 'package:ftvapp/pages/bookmark.dart';
import 'package:ftvapp/pages/home_page.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/pages/recomended_page.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  int pageIndex = 0;
  final HomePage _homePage = HomePage();
  final RecomendedPage _recomendedPage = RecomendedPage();
  final Bookmark _bookmark = Bookmark();
  final Login _login = Login();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch(page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _recomendedPage;
        break;
      case 2:
        return _bookmark;
        break;
      case 3:
        return _login;
        break;
      default:
        return new Container(
          child: Center(
            child: Text('No page found'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Home'),
            )
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ),
      ),
    );
  }
}
