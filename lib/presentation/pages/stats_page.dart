import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/main2.png"))),
        child: Column(
          children: [
            Gap(100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image/coin.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width < 600 ? 50 : 60,
                    height: MediaQuery.of(context).size.width < 600 ? 50 : 55),
                Text("0", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w800)),
              ],
            ),
            Gap(40),
            Text("Total Touches", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("10000", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
            Gap(20),
            Text("Total Players", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("127", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
            Gap(20),
            Text("Daily Users", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("25", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
            Gap(20),
            Text("Online Players", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("2", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
    );
  }
}
