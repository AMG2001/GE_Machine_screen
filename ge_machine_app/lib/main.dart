import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GEMachineApp());
}

class GEMachineApp extends StatelessWidget {
  const GEMachineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GE Machine App",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
