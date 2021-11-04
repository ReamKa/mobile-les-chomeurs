import 'package:chomeurs/Statistique/page_statistique.dart';
import 'package:flutter/material.dart';
import 'package:chomeurs/Parametres/body_parametres.dart';
import 'package:chomeurs/enregistrements.dart';

class PageParametres extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim4.dart";
  @override
  _PageParametresState createState() => _PageParametresState();
}

class _PageParametresState extends State<PageParametres> {
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
        backgroundColor: primaryColor,
        //toolbarHeight: 120,
        toolbarHeight: 150,
        centerTitle: true,
        elevation: 0,
        bottomOpacity: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BodyParametres()),
                );
              },
              iconSize: 90,
              icon: Image.asset(
                "assets/images/main_top.png",
              ),
            ),
          ],
        ),
      ),
      body: BodyParametres(),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
      //),
    );
  }

  getPage(int? page) {
    switch (page) {
      case 0:
        return Center(
            child: Container(
          child: Text("Blabla"),
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
      decoration: const BoxDecoration(
        color: Color(0xFF9EA2A6),
        /*image: DecorationImage(
          image : AssetImage(
          'assets/images/barre.png',),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),*/
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: IconButton(
                iconSize: 48,
                icon: Image.asset("assets/Icones/coolicon3.png"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageStatistique()),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              child: IconButton(
                iconSize: 48,
                icon: Image.asset("assets/Icones/Save_fill.png"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Enregistrements()),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              child: IconButton(
                iconSize: 48,
                icon: Image.asset("assets/Icones/parametre.png"),
                onPressed: () {
                },
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
