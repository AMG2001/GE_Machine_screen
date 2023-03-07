import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';

class HomePageBackground extends StatelessWidget {
  const HomePageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceDimensions.width,
      height: DeviceDimensions.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/home_page.png'), fit: BoxFit.cover),
      ),
    );
  }
}
