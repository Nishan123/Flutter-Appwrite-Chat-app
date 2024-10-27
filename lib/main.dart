import 'package:appwrite_chat_app/views/screens/chat_screen.dart';
import 'package:appwrite_chat_app/views/screens/home_screen.dart';
import 'package:appwrite_chat_app/views/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      routes: {
        "/": (context) => const HomeScreen(),
        "/chat": (context) => const ChatScreen(),



      },
    );
  }
}
