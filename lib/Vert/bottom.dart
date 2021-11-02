import 'package:flutter/material.dart';
//import 'package:dernier/Vert/lib/images';
//import 'package:chomeurs/Vert/main.dart/';

class AnimatedBottomBar extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim4.dart";
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int? _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }
   Color primaryColor = Color(0xFF9EA2A6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor ,
          elevation: 0,
          title: Image.asset(
            "assets/images/Group 44.png",
            fit: BoxFit.contain,
            height: 90,
            width: 90,
          ),
        centerTitle: true,
          toolbarHeight: 120,
      ),
      //body: getPage(_currentPage),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
    );
  }

  getPage(int? page) {
    switch (page) {
      case 0:
        return Center(
            child: Container(
          child: Image.asset('assets/images/Group 44.png',width: 90,),
        ));
      case 1:
        return Center(
            child: Container(
          child: Text("Enregistrements"),
        ));
      case 2:
        return Center(
            child: Container(
          child: Text("Profil"),
        ));
    }
  }
}

class AnimatedBottomNav extends StatelessWidget {
  double? size;
  final int? currentIndex;
  final Function(int)? onChange;
  AnimatedBottomNav({Key? key, this.currentIndex, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF9EA2A6);
    return Container(

      height: kToolbarHeight,
      decoration: BoxDecoration(color: const Color(0xFF9EA2A6), ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              //onTap: () => onChange!(0),
              child: BottomNavItem(
                icon: IconData(61077, fontFamily: 'MaterialIcons',),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              //onTap: () => onChange!(1),
              child: BottomNavItem(
                icon: IconData(58704, fontFamily: 'MaterialIcons'),

                //title: "User",
                //isActive: currentIndex == 1,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              //onTap: () => onChange!(2),
              child: BottomNavItem(
                icon: IconData(58751, fontFamily: 'MaterialIcons'),
                //title: "Menu",
                //isActive: currentIndex == 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  Color primaryColor = Color(0xFFC2C4B9);
  final bool isActive;
  final IconData? icon;
  final Color? activeColor;
  final Color? inactiveColor;
  final String? title;
   BottomNavItem(
      {Key? key,
      this.isActive = false,
      this.icon,
      this.activeColor,
      this.inactiveColor,
      this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: Duration(milliseconds: 500),
      reverseDuration: Duration(milliseconds: 200),
      child: isActive
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 9.0,
                    height: .0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: inactiveColor ?? primaryColor,
            ),
    );
  }
}
