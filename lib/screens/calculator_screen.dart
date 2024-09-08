import 'package:calculadora_flutter/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/display.dart';
import '../widgets/keyboard.dart';
import '../models/memory.dart';

class CalculatorScreen extends StatefulWidget {
  
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final Memory memory = Memory();
  
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}