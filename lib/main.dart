import 'package:chat_gpt/src/UI/pages/chat.dart';
import 'package:chat_gpt/src/UI/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat GPT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: '/navbar',
        routes: <String, WidgetBuilder>{
          '/navbar': (BuildContext context) => const NavBar(),
          '/chat': (BuildContext context) => const Chat(),
        });
  }
}
