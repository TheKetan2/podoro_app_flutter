import 'dart:async';

import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/widgets/progress_widget.dart';
import 'package:podoro_app_flutter/widgets/time_controller.dart';
import 'package:podoro_app_flutter/widgets/time_options.dart';
import 'package:podoro_app_flutter/widgets/timer_card.dart';
import 'package:podoro_app_flutter/widgets/timerservice.dart';
//import 'package:podoro_app_flutter/widgets/time_options.dart';
import 'package:provider/provider.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          "POMOTIMER",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 40,
              ),
              TimeController(),
              SizedBox(
                height: 40,
              ),
              ProgresWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
