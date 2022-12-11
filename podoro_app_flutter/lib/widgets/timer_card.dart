import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';
import 'package:podoro_app_flutter/widgets/timerservice.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
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
            timerBoxWidget(
                context,
                (provider.currentDuration ~/ 60).toInt() == 10
                    ? "0${(provider.currentDuration ~/ 60).toInt()}"
                    : (provider.currentDuration ~/ 60).toInt().toString()),
            const SizedBox(
              width: 10,
            ),
            Text(
              ":",
              style: textStyle(60, Colors.white54, FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            timerBoxWidget(
                context,
                (provider.currentDuration % 60).toInt() < 10
                    ? "0${(provider.currentDuration % 60).toInt()}"
                    : (provider.currentDuration % 60).toInt().toString()),
          ],
        )
      ],
    );
  }

  Container timerBoxWidget(
    BuildContext context,
    String text,
  ) {
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
        style: textStyle(
          80,
          Colors.redAccent,
          FontWeight.bold,
        ),
      ),
    );
  }
}
