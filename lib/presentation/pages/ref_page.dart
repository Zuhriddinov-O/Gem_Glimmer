import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class RefPage extends StatefulWidget {
  const RefPage({super.key});

  @override
  State<RefPage> createState() => _RefPageState();
}

int totalInfos = 1;
int count = 12;

double maxCount = 5500;
double count2 = maxCount;

class _RefPageState extends State<RefPage> with TickerProviderStateMixin {
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
        count2 != maxCount ? count2 += 100 : count;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String copyLink = "http://";
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/main2.png"))),
        child: Padding(
          padding: EdgeInsets.only(top: 52.0, bottom: MediaQuery.of(context).size.height / 10.5),
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(20),
                  Text("My", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("$totalInfos Referrals", style: const TextStyle(color: Colors.white, fontSize: 30)),
                  const Text("+0", style: TextStyle(color: Colors.white, fontSize: 20)),
                  const Gap(10),
                  BlurryContainer(
                    borderRadius: BorderRadius.circular(10),
                    blur: 5,
                    elevation: 2,
                    color: Colors.white10,
                    width: width / 1.15,
                    height: 100,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("My Invite Link:", style: TextStyle(color: Colors.white)),
                          GestureDetector(
                            onTap: () {
                              _clipboard(copyLink);
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Link copied"),
                                ),
                              );
                            },
                            child: Container(
                              width: 50,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(colors: [
                                    Colors.deepPurple,
                                    Colors.deepPurple,
                                    Colors.white70,
                                  ])),
                              child: const Text(
                                "Copy",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.white10),
                      Expanded(child: Container()),
                      Text(copyLink, style: const TextStyle(color: Colors.white, fontSize: 14)),
                      Expanded(child: Container()),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      minWidth: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      color: Color(0xffF6D9A5),
                      splashColor: Color(0xffefc782),
                      highlightColor: Color(0xffefc165),
                      onPressed: () {},
                      child: Text("Invite Friends"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _clipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }
}
