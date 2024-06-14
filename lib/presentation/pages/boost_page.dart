import 'package:crypto_coin/presentation/widgets/boosters_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/boost_bottom_sheet.dart';

class BoostPage extends StatefulWidget {
  const BoostPage({super.key});

  @override
  State<BoostPage> createState() => _BoostPageState();
}

final List<String> images = [
  'multi-tap',
  'battery',
  "thunder",
];
final List<String> boostTitles = [
  "Multi Tap",
  "Energy Limit",
  "Recharging Speed",
];

class _BoostPageState extends State<BoostPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/main2.png")),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(100),
            const Text("Your Shared Balances", style: TextStyle(color: Colors.white70)),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/coin.png",
                    width: 60,
                    height: 50,
                    filterQuality: FilterQuality.high,
                  ),
                  const Text("3", style: TextStyle(color: Colors.white, fontSize: 35))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.35,
                    height: 65,
                    color: Color(0xff2A2D36),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "assets/image/thunder.png",
                              width: 40,
                              height: 40,
                            )),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(10),
                              Text("Miner",
                                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700)),
                              Text("per second", style: TextStyle(color: Colors.white70)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.35,
                    height: 65,
                    color: Color(0xff2A2D36),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "assets/image/thunder.png",
                              width: 40,
                              height: 40,
                            )),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(10),
                              Text("Refill energy",
                                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700)),
                              Text("5/5", style: TextStyle(color: Colors.white70)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                width: width / 1.3, child: const Text("Boosters", style: TextStyle(color: Colors.white, fontSize: 17))),
            const Gap(10),
            BoostersContainer(
                title: boostTitles[0],
                coinCount: 300,
                isDone: false,
                imageString: images[0],
                onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => BoostBottomSheet(
                          imageName: images[0],
                          boostTitles: boostTitles[0], isDone: false,
                        ))),
            const Gap(10),
            BoostersContainer(
                title: boostTitles[1],
                coinCount: 300,
                isDone: true,
                imageString: images[1],
                onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => BoostBottomSheet(
                          imageName: images[1],
                          boostTitles: boostTitles[1], isDone: true,
                        ))),
            const Gap(10),
            BoostersContainer(
              title: boostTitles[2],
              coinCount: 300,
              isDone: false,
              imageString: images[2],
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => BoostBottomSheet(
                  imageName: images[2],
                  boostTitles: boostTitles[2], isDone: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
