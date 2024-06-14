import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BoostersContainer extends StatelessWidget {
  const BoostersContainer(
      {super.key,
      required this.title,
      required this.coinCount,
      required this.isDone,
      required this.imageString,
      required this.onPressed});

  final String title;
  final int coinCount;
  final bool isDone;
  final String imageString;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlurryContainer(
      blur: 1,
      width: width / 1.1,
      child: ListTile(
        onTap: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor: Color(0xff2A2D36),
        leading: Image.asset(
          "assets/image/$imageString.png",
          fit: BoxFit.fill,
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
                isDone == true
                    ? const SizedBox(
                        width: 1,
                        height: 1,
                      )
                    : Row(
                        children: [
                          Image.asset("assets/image/coin.png",
                              fit: BoxFit.fill, filterQuality: FilterQuality.high, width: 20, height: 20),
                          Text(coinCount.toString(), style: const TextStyle(color: Colors.white)),
                          const Gap(5),
                          const Gap(
                            1.2,
                            color: Colors.white54,
                            crossAxisExtent: 15,
                          ),
                          const Gap(5)
                        ],
                      ),
                const Text("Level 12", style: TextStyle(color: Colors.white54, fontSize: 15))
              ],
            )
          ],
        ),
        trailing: isDone == true
            ? const SizedBox(width: 10, height: 10)
            : Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 20,
              ),
      ),
    );
  }
}
