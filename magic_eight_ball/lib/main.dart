import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      title: 'Magic Eight Ball',
      home: HomePage(),
    ),
  );
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        foregroundColor: Colors.white,
        title: const Text(
          'Magic Eight Ball',
        ),
      ),
      body: Center(child: TextButton(child: Image.asset('images/ball$ballNumber.png'), onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },)
      ,)
    );
  }
}