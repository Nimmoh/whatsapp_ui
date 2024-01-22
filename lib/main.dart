import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/chat_page.dart';
import 'package:whatsapp_ui/pages/home_page.dart';
import 'package:whatsapp_ui/pages/settings_page.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => WhatsappUi(),
        "settingsPage": (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}


