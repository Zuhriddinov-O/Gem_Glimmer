import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer(
      {super.key,
      required this.currentIndex,
      required this.width,
      required this.height,
      required this.images,
      required this.text0,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.integer,
      required this.onTap});

  final int currentIndex;
  final double width;
  final double height;
  final List images;
  final String text0;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final int integer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    List textList = [];
    textList.add(text0);
    textList.add(text1);
    textList.add(text2);
    textList.add(text3);
    textList.add(text4);

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => onTap(),
            child: Ink(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: currentIndex == integer ? Colors.yellow.shade100.withAlpha(200) : Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: BlurryContainer(
                borderRadius: BorderRadius.circular(10),
                blur: 5,
                width: 60,
                height: 55,
                color: Colors.white10,
                elevation: 1,
                shadowColor: currentIndex == integer ? Colors.yellow.shade100.withAlpha(200) : Colors.transparent,
                child: Center(
                  child: SizedBox(width: 100, height: 100, child: images[integer]),
                ),
              ),
            ),
          ),
          Text(textList[integer].toString(), style: const TextStyle(color: Colors.white, fontSize: 15))
        ],
      ),
    );
  }
}
