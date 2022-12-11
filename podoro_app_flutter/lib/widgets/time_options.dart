import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';
import 'package:podoro_app_flutter/widgets/timerservice.dart';
import 'package:provider/provider.dart';

class TimeOptions extends StatelessWidget {
  // const TimeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);

    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTime
            .map(
              (time) => InkWell(
                onTap: () => provider.selectTime(double.parse(time)),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  width: 70,
                  height: 50,
                  decoration: int.parse(time) == provider.selectedTime.toInt()
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
                      int.parse(time) == provider.selectedTime.toInt()
                          ? Colors.redAccent
                          : Colors.white,
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
