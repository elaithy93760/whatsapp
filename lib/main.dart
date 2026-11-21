import 'package:whats_app/core/theme/app_theme_manager.dart';

import 'chat.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
      theme: getAppTheme(),
    );
  }
}
