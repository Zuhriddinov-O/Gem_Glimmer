import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class TapPage extends StatefulWidget {
  const TapPage({super.key});

  @override
  State<TapPage> createState() => _TapPageState();
}

double count = 0;
double maxCount = 5500;
double count2 = maxCount;

class _TapPageState extends State<TapPage> with TickerProviderStateMixin {
  late AnimationController controller;
  Timer? timer;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {});
    controller.repeat(reverse: true);
    _addCount();
    super.initState();
  }

  void _addCount() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        count2 != maxCount ? count2 += 100 : count2;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final countIntType = count.toString().substring(0, count.toString().indexOf('.'));
    final count2IntType = count2.toString().substring(0, count2.toString().indexOf('.'));
    final maxCountIntType = maxCount.toString().substring(0, maxCount.toString().indexOf('.'));
    return Stack(children: [
      Positioned(right: -60,bottom:0,child: Image.asset("assets/image/main.png", width: MediaQuery.of(context).size.height)),
      Positioned(right: -60,bottom:-1250,child: Image.asset("assets/image/main.png", width: MediaQuery.of(context).size.height)),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/image/coin.png",
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                  width: width < 600 ? 50 : 60,
                  height: width < 600 ? 50 : 55),
              Text(
                countIntType.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          InkWell(
            radius: 30,
            highlightColor: Colors.transparent,
            mouseCursor: MouseCursor.uncontrolled,
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              setState(() {
                count2 != 0 ? count += 100 : count;
                count2 != 0 ? count2 -= 100 : count2;
              });
            },
            child: Ink.image(
              width: 290,
              height: 300,
              fit: BoxFit.fill,
              image: AssetImage("assets/image/tap.png"),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              "assets/images/lightning.png",
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              width: 40,
              height: 60,
            ),
            Text("$count2IntType / $maxCountIntType", style: const TextStyle(color: Colors.white))
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: FAProgressBar(
              borderRadius: BorderRadius.circular(15),
              changeProgressColor: Colors.orangeAccent,
              progressColor: Colors.red,
              backgroundColor: Colors.pinkAccent.shade100,
              progressGradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.orangeAccent]),
              changeColorValue: 10,
              currentValue: count2,
              formatValue: (value, fixed) => controller.value.toString(),
              maxValue: maxCount,
            ),
          )
        ],
      ),
    ]);
  }
}
