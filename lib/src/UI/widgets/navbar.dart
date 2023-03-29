import 'package:chat_gpt/src/UI/pages/perfil.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../pages/chat.dart';

/* import 'package:lanarsnavbarflutter/theme/app_theme.dart';
import 'package:lanarsnavbarflutter/theme/custom_colors_theme.dart'; */

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  //State class
  int _page = 0;
  /* GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey(); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        bottomNavigationBar: CurvedNavigationBar(
          /* animationCurve: Curves.easeOutCirc, */
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
          color: const Color.fromRGBO(0, 200, 224, 1),
          /* key: _bottomNavigationKey, */
          height: 55,
          items: const <Widget>[
            Icon(Icons.chat, size: 30, color: Color.fromRGBO(18, 18, 18, 1)),
            Icon(Icons.home, size: 30, color: Color.fromRGBO(18, 18, 18, 1)),
            Icon(Icons.person, size: 30, color: Color.fromRGBO(18, 18, 18, 1)),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        /* Navigator to Chat */
        body: <Widget>[
          /* /chat */
          const Chat(),
          /* Container(
            color: Color(0xFF343540),
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ), */
          Container(
            color: Color(0xFF343540),
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
          const Perfil(),
        ][_page]
        /* body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        ) */
        );
  }
}
