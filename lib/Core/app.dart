import 'package:flutter/material.dart';
import 'package:walkthroughv1/main.dart';

import '../modules/project/pages/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walk Through',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 236, 238, 255),
        primarySwatch: Colors.indigo
      ),
      home: const MyHomePage(
        title: 'Home'
      ),
    );
  }
}