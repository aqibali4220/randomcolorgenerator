import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Color Generator',
      home: RandomColorGeneratorScreen(),
    );
  }
}


class RandomColorGeneratorScreen extends StatefulWidget {
  const RandomColorGeneratorScreen({super.key});

  @override
  State<RandomColorGeneratorScreen> createState() => _RandomColorGeneratorScreenState();
}

class _RandomColorGeneratorScreenState extends State<RandomColorGeneratorScreen> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      random.nextInt(256),
      255,
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: const Center(
            child: Text(
              'Hello There',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}


