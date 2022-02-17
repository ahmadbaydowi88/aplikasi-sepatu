import 'package:flutter/material.dart';
import 'package:shamo/page/home/chat_page.dart';
import 'package:shamo/page/home/home_page.dart';
import 'package:shamo/page/home/profile_page.dart';
import 'package:shamo/page/home/wishlist_page.dart';
import 'package:shamo/theme/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  static const List<Widget> _widgetOption = <Widget>[
    HomePage(),
    ChatPage(),
    WishlistPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget cartBottom() {
      return FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/cart-page');
          },
          child: Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ));
    }

    Widget bottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Icon(
                      Icons.home,
                      color: currentIndex == 0 ? primaryColor : iconBottomNav,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Icon(
                      Icons.messenger,
                      color: currentIndex == 1 ? primaryColor : iconBottomNav,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Icon(
                      Icons.favorite,
                      color: currentIndex == 2 ? primaryColor : iconBottomNav,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: currentIndex == 3 ? primaryColor : iconBottomNav,
                  ),
                  label: '',
                ),
              ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: _widgetOption.elementAt(currentIndex),
    );
  }
}
