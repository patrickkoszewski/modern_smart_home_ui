import 'dart:math';

import 'package:flutter/material.dart';

class SmartDevieceBox extends StatelessWidget {
  final String SmartDevieceName;
  final String iconPath;
  final bool powerON;
  void Function(bool)? onChanged;

  SmartDevieceBox({
    super.key,
    required this.SmartDevieceName,
    required this.iconPath,
    required this.powerON,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //icon
            Image.asset(
              iconPath,
              height: 65,
            ),
            //smart device name + switch
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    SmartDevieceName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )),
                Transform.rotate(
                  angle: pi / 2,
                  child: Switch(
                    value: powerON,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
