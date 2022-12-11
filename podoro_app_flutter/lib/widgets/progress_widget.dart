import 'package:flutter/material.dart';
import 'package:podoro_app_flutter/utils.dart';

class ProgresWidgets extends StatelessWidget {
  const ProgresWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        15,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("0/4", style: textStyle(30, Colors.white, FontWeight.w700)),
              Text("ROUND",
                  style: textStyle(30, Colors.white, FontWeight.w700)),
            ],
          ),
          Column(
            children: [
              Text("0/12", style: textStyle(30, Colors.white, FontWeight.w700)),
              Text("GOAL", style: textStyle(30, Colors.white, FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}
