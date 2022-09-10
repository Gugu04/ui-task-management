import 'package:flutter/material.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';
import 'package:ui_task_management/src/ui/views/home/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.ligthTheme,
        home: const HomeView());
  }
}
