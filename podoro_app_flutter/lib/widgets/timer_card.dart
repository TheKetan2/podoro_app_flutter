import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "FOCUS",
          style: textStyle(
            25,
            Colors.white,
            FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            timerContainer(context, "10"),
            Text(
              ":",
              style: textStyle(
                70,
                Colors.white.withOpacity(0.5),
                FontWeight.bold,
              ),
            ),
            timerContainer(context, "00"),
          ],
        )
      ],
    );
  }

  Container timerContainer(BuildContext context, String text) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 3.2,
      margin: const EdgeInsets.all(5),
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Text(
        text,
        style: textStyle(70, Colors.redAccent, FontWeight.bold),
      ),
    );
  }
}
