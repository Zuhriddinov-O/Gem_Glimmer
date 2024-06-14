import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BoostBottomSheet extends StatefulWidget {
  const BoostBottomSheet({super.key, required this.imageName, required this.boostTitles, required this.isDone});

  final String imageName;
  final String boostTitles;
final bool isDone;
  @override
  State<BoostBottomSheet> createState() => _BoostBottomSheetState();
}

class _BoostBottomSheetState extends State<BoostBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff2A2D36),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.clear, color: Colors.white))),
            Image.asset("assets/image/${widget.imageName}.png", width: MediaQuery.of(context).size.width / 2.2,height: 150,),
            Gap(20),
            Text(widget.boostTitles, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
            Gap(10),
            Text(
              textAlign: TextAlign.center,
              "Increase amount for coins you can earn per one tap +1 per tab for each level",
              style: TextStyle(color: Colors.white60),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image/coin.png",width: 45,height: 45,),
                Text("200",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                Gap(5),
                Text("12 Level",style: TextStyle(color: Colors.white60)),
              ],
            ),
            Gap(20),
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
      ),
    );
  }
}
