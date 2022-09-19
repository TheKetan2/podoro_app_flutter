import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTime
            .map(
              (e) => Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, left: 10),
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  (int.parse(e) / 60).toStringAsFixed(0),
                  style: textStyle(
                    20,
                    Colors.redAccent,
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
