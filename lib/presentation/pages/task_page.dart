import 'package:crypto_coin/presentation/widgets/bottom_sheet.dart';
import 'package:crypto_coin/presentation/widgets/list_tile_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

bool isDone = false;


class _TaskPageState extends State<TaskPage> {
  int taskIndex=0;
  List<String> taskNames = [
    "Discover Tomcat",
    "Join Our Socials",
    "Subscribe To Crypto News",
    "Sign up for Finance News Chats",
    "Actual Crypto Drops",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 49.0),
          child: Image.asset("assets/image/main2.png"),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                  const Text("23232323", style: TextStyle(color: Colors.white, fontSize: 30))
                ],
              ),
            ),
            const Gap(10),
            ListTileContainer(title: taskNames[0], coinCount: 300, isDone: false, onClick: () {
              showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet(textData: taskNames[0], isDone: false));
            }),
            const Gap(10),
            ListTileContainer(title: taskNames[1], coinCount: 300, isDone: true, onClick: () {
              showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet(textData: taskNames[1], isDone: true));
            }),
            const Gap(10),
            ListTileContainer(title: taskNames[2], coinCount: 300, isDone: true, onClick: () {
              showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet(textData: taskNames[2], isDone: true));
            }),
            const Gap(10),
            ListTileContainer(title: taskNames[3], coinCount: 300, isDone: true, onClick: () {
              showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet(textData: taskNames[3], isDone: true));
            }),
            const Gap(10),
            ListTileContainer(title: taskNames[4], coinCount: 300, isDone: true, onClick: () {
              showModalBottomSheet(context: context, builder: (context) => TaskBottomSheet(textData: taskNames[4], isDone: true));
            }),
          ],
        ),
      ]),
    );
  }
}
