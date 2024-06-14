import 'package:crypto_coin/presentation/pages/boost_page.dart';
import 'package:crypto_coin/presentation/pages/ref_page.dart';
import 'package:crypto_coin/presentation/pages/stats_page.dart';
import 'package:crypto_coin/presentation/pages/task_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/blur_container.dart';
import '../tap_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;
  List pages = const [
    RefPage(),
    TaskPage(),
    TapPage(),
    BoostPage(),
    StatsPage(),
  ];
  List images = [
    Image.asset("assets/images/cat.png", filterQuality: FilterQuality.high),
    Image.asset("assets/images/task.png", filterQuality: FilterQuality.high),
    Image.asset("assets/image/tap.png", filterQuality: FilterQuality.high),
    Image.asset("assets/images/fire.png", filterQuality: FilterQuality.high),
    Image.asset("assets/images/bar.png", filterQuality: FilterQuality.high),
  ];
  String text0 = "Ref";
  String text1 = "Task";
  String text2 = "Tap";
  String text3 = "Boost";
  String text4 = "Stats";

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double size = 0.0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          pages[currentIndex],
          Positioned(
            bottom: 0,
            child: Container(
              width: x,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlurContainer(
                    currentIndex: currentIndex,
                    width: size,
                    height: size,
                    images: images,
                    text0: text0,
                    text1: text1,
                    text2: text2,
                    text3: text3,
                    text4: text4,
                    integer: 0,
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  BlurContainer(
                    currentIndex: currentIndex,
                    width: size,
                    height: size,
                    images: images,
                    text0: text0,
                    text1: text1,
                    text2: text2,
                    text3: text3,
                    text4: text4,
                    integer: 1,
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  BlurContainer(
                    currentIndex: currentIndex,
                    width: size,
                    height: size,
                    images: images,
                    text0: text0,
                    text1: text1,
                    text2: text2,
                    text3: text3,
                    text4: text4,
                    integer: 2,
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  BlurContainer(
                    currentIndex: currentIndex,
                    width: size,
                    height: size,
                    images: images,
                    text0: text0,
                    text1: text1,
                    text2: text2,
                    text3: text3,
                    text4: text4,
                    integer: 3,
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                  BlurContainer(
                    currentIndex: currentIndex,
                    width: size,
                    height: size,
                    images: images,
                    text0: text0,
                    text1: text1,
                    text2: text2,
                    text3: text3,
                    text4: text4,
                    integer: 4,
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
