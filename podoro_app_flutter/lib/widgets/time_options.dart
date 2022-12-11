import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';

class TimeOptions extends StatelessWidget {
  // const TimeOptions({Key? key}) : super(key: key);
  double selectedTime = 1500;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTime
            .map(
              (time) => Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, left: 10),
                width: 70,
                height: 50,
                decoration: int.parse(time) == selectedTime
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(width: 3, color: Colors.white),
                        color: Colors.white,
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(width: 3, color: Colors.white54),
                        color: Colors.redAccent,
                      ),
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(
                    20,
                    int.parse(time) == selectedTime
                        ? Colors.redAccent
                        : Colors.white,
                    FontWeight.bold,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
