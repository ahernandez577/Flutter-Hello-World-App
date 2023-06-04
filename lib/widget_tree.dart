import 'package:hello_world/auth.dart';
//import 'package:hello_world/home_page.dart';
import 'package:hello_world/learn_flutter_page.dart';
import 'package:hello_world/pages/login_register_page.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const LearnFlutterPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}