import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ListTileContainer extends StatelessWidget {
  const ListTileContainer(
      {super.key, required this.title, required this.coinCount, required this.isDone, required this.onClick});

  final String title;
  final int coinCount;
  final bool isDone;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlurryContainer(
      blur: 1,
      width: width / 1.2,
      child: ListTile(
        onTap: onClick,
        tileColor: Color(0xff2A2D36),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: Image.asset(
          "assets/images/todolist.png",
          filterQuality: FilterQuality.high,
          width: 40,
          height: 40,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 13)),
            Row(
              children: [
                Image.asset("assets/image/coin.png",
                    fit: BoxFit.fill, filterQuality: FilterQuality.high, width: 20, height: 20),
                Text(coinCount.toString(), style: const TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
        trailing: isDone == true
            ? const Icon(Icons.done_outline, color: Colors.green)
            : const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20),
      ),
    );
  }
}
