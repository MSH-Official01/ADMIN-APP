import 'package:admin_app/Fetures/totalgamepage.dart';
import 'package:admin_app/MenuBarItem/enumMenubar.dart';
import 'package:admin_app/log_in_page.dart';
import 'package:admin_app/screen/admin_panel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Admin App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: AdminPanel());
  }
}
