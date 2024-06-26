import 'package:crypto_coin/presentation/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';

Future <void> main() async{
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crypto-Coin",
      home: MainPage(),
    );
  }
}
