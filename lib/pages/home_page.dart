import 'package:flutter/material.dart';
import 'package:modern_smart_home_ui/util/smart_deviece_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  // list of smart devieces
  List mySmartDevieces = [
    //smartDevieceName, iconPath, powerStatus]
    ['Smart Light', "lib/icons/light-bulb.png", true],
    ['Smart AC', "lib/icons/air-conditioner.png", true],
    ['Smart TV', "lib/icons/smart-tv.png", true],
    ['Smart Fan', "lib/icons/fan.png", true],
  ];
  //power button switched
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevieces[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 2,
            ),
            //custom app bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //menu icon from png
                  Image.asset(
                    'lib/icons/menu.png',
                    height: 35,
                    color: Colors.grey[800],
                  ),
                  //account icon from flutter
                  const Icon(
                    Icons.person,
                    size: 45,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Welcome home Patrick
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Welcome Home'),
                  Text(
                    'Patrick',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Smart devices + grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text('Smart Devieces'),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemCount: mySmartDevieces
                    .length, //długość zmiennej(listy) mySmartDevieces
                padding: const EdgeInsets.all(25),
                itemBuilder: (BuildContext context, int index) {
                  return SmartDevieceBox(
                    SmartDevieceName: mySmartDevieces[index][0],
                    iconPath: mySmartDevieces[index][1],
                    powerON: mySmartDevieces[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
