import 'package:flutter/material.dart';
import 'package:chat_ui_package/chat_ui_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat UI Example'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const ChatUI(
          username: "Hasan Iqbal",
          role: "Community Admin",
          message: "This is how you use the package in your app!",
          imagepath: "assets/images/profile.jpg",
        ),
      ),
    );
  }
}
