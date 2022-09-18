import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/widgets/time_options.dart';
import 'package:podoro_app_flutter/widgets/timer_Card.dart';
import 'package:provider/provider.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              TimeOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
