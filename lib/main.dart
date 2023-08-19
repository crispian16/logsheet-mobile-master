import 'package:flutter/material.dart';
import 'package:logsheet_mobile/common/app_theme.dart';
import 'ui/boarding/boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PLN Tarakan Logsheet App',
      theme: AppTheme().getThemeData(false),
      home: const BoardingScreen(),
    );
  }
}
