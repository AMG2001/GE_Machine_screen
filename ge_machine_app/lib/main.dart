import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';
import 'package:ge_machine_app/features/bluetooth_controller.dart';
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
  MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: GetBuilder<BluetoothController>(
          init: BluetoothController(),
          builder: (controller) {
            return Container(
              width: DeviceDimensions.width,
              height: DeviceDimensions.height,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller.comingData == ""
                        ? "nothig to show"
                        : controller.comingData),
                    SizedBox(
                      width: 8,
                    ),
                    OutlinedButton(
                        onPressed: () {}, child: Text("Send hello to Tablet"))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
