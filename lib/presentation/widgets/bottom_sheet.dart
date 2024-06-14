import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaskBottomSheet extends StatefulWidget {
  TaskBottomSheet({super.key, required this.textData, required this.isDone});

  final bool isDone;
  final String textData;

  @override
  State<TaskBottomSheet> createState() => _TaskBottomSheetState();
}

class _TaskBottomSheetState extends State<TaskBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Color(0xff2A2D36)),
      height: 300,
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ))),
          Text(widget.textData, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/image/coin.png", width: 40, height: 40),
              Text("300", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400)),
            ],
          ),
          Text("Diamonds", style: TextStyle(color: Colors.white60, fontSize: 15, fontWeight: FontWeight.w300)),
          Gap(40),
          Container(
            child: Center(
                child: Text(
              widget.isDone ? "Completed" : "UnCompleted",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),
            )),
            width: MediaQuery.of(context).size.width / 1.2,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: SweepGradient(
                colors: [
                  Color(0xffFAB996),
                  Colors.deepPurpleAccent,
                  Color(0xffFAB996),
                  Colors.deepPurpleAccent,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
