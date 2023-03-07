import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ge_machine_app/dimensions.dart';
import 'package:ge_machine_app/features/bluetooth_controller.dart';
import 'package:ge_machine_app/screens/home_page/home_page.dart';
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
      home: HomePage(),
    );
  }
}
