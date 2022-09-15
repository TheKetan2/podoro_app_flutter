import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PomoTimer",
          style: textStyle(
            25,
            Colors.white,
            FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(),
    );
  }
}
