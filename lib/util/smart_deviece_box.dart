import 'package:flutter/material.dart';

class SmartDevieceBox extends StatelessWidget {
  final String SmartDevieceNAme;
  final String iconPath;
  final String powerON;

  const SmartDevieceBox({
    super.key,
    required this.SmartDevieceNAme,
    required this.iconPath,
    required this.powerON,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //icon

          //smart device name + switch
        ],
      ),
    );
  }
}
