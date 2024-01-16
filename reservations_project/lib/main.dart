import 'package:flutter/material.dart';
import 'package:reservations_project/widgets/Drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(0xFF8857F1),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
