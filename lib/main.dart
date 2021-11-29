import 'dart:math';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDefaultSize = true;
  Color randomColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Centered container example'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInCirc,
                  height: isDefaultSize ? 400 : 600,
                  width: isDefaultSize ? 400 : 600,
                  color: randomColor,
                  child: const Center(
                    child: Text(
                      'Hey there CESINF',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                onTap: () => {
                  setState(() {
                    isDefaultSize = !isDefaultSize;
                    randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                  })
                },
              ),
            ),
          ],
        ));
  }
}
