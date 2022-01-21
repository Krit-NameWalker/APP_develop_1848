import 'package:flutter/material.dart';

class FlightImageAsset extends StatelessWidget {
  const FlightImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/Krit_1848.png");
    Image image = Image(
        image: assetImage,
        width: 500,
        height: 350);
    return Container(
      child: image,
      padding: const EdgeInsets.all(30),);
  }
}