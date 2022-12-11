import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/widgets/timerservice.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          iconSize: 55,
          icon: Icon(provider.timerOn ? Icons.pause : Icons.play_arrow),
          color: Colors.white,
          onPressed: () {
            provider.startTimer();
          },
        ),
      ),
    );
  }
}
