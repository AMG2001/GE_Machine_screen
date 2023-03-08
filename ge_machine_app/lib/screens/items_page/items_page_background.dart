import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';

class ItemsPageBackground extends StatefulWidget {
  const ItemsPageBackground({super.key});

  @override
  State<ItemsPageBackground> createState() => _ItemsPageBackgroundState();
}

class _ItemsPageBackgroundState extends State<ItemsPageBackground> {
  @override
  void initState() {
    precacheImage(AssetImage('assets/items_page_background.png'), context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceDimensions.width,
      height: DeviceDimensions.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/items_page_background.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}
