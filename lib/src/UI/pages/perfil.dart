import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/bg-profile.png"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: <Widget>[
                          SafeArea(
                            bottom: false,
                            right: false,
                            left: false,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/imgs/profile-img.jpg"),
                                      radius: 55.0),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 24.0),
                                    child: Text("Marco Toledo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text("Programador",
                                        style: TextStyle(
                                            /* color: NowUIColors.white
                                                .withOpacity(0.85), */
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 24.0, left: 42, right: 32),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.max,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 42.0),
                    child: Column(children: [
                      const Text("Acerca de mi",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0)),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 24.0, right: 24, top: 30, bottom: 24),
                        child: Text("Programador Junior",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      /* PhotoAlbum(imgArray: imgArray) */
                    ]),
                  )),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      /* child: RaisedButton(
                        textColor: NowUIColors.white,
                        color: NowUIColors.info,
                        onPressed: () {
                          // Respond to button press
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 10, bottom: 10),
                            child: Text("Follow",
                                style: TextStyle(fontSize: 13.0))),
                      ), */
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          /* primary: NowUIColors.info, */
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        onPressed: () {
                          // Respond to button press
                          Navigator.pushReplacementNamed(context, '/chat');
                        },
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 10, bottom: 10),
                            child: Text("Seguir",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: RawMaterialButton(
                        constraints: BoxConstraints.tight(const Size(38, 38)),
                        onPressed: () {},
                        elevation: 4.0,
                        fillColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        shape: const CircleBorder(),
                        child: const Icon(Icons.ac_unit_outlined,
                            size: 14.0, color: Colors.black),
                      ),
                    ),
                    RawMaterialButton(
                      constraints: BoxConstraints.tight(const Size(38, 38)),
                      onPressed: () {},
                      elevation: 4.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: const CircleBorder(),
                      child: const Icon(Icons.read_more,
                          size: 14.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
