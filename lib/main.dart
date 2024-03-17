import 'package:flutter/material.dart';
import 'package:mobile_mrogramming/utils/app_theme.dart';
import 'package:mobile_mrogramming/views/main_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fikry Aiman M',
      theme: AppTheme.DarkTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.system,
      home:  MainView(),
    );
  }
}
