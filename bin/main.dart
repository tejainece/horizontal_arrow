import 'package:flutter/material.dart';
import 'package:horizontal_arrow/horizontal_arrow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.grey,
            child: CustomPaint(
                painter: ConnectionsPainter(connections: [
              Connection(start: Offset(0, 0), end: Offset(200, 100)),
              Connection(start: Offset(0, 100), end: Offset(200, 100)),
              Connection(start: Offset(100, 100), end: Offset(100, 100)),
            ])),
          ),
        ),
      ),
    );
  }
}