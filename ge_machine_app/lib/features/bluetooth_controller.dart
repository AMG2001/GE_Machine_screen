import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:ge_machine_app/features/custom_toast.dart';
import 'package:get/get.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothController extends GetxController {
  String comingData = "";

  String btModuleMacAddress = "00:21:09:00:4F:8C";

  late BluetoothConnection connection;
  BluetoothController() {
    initiateConnection();
  }

  void initiateConnection() async {
    connectToAurduinoBluetoothModule().then((value) async {
      Timer(
        Duration(seconds: 5),
        () async {
          print('\n\n start listening to aurd bluetooth after 5 seconds \n\n');
          await startListeningToBluetoothStream();
        },
      );
    });
  }

  Future<void> connectToAurduinoBluetoothModule() async {
    try {
      /**
       * to connect with bluetooth module .
       */
      connection = await BluetoothConnection.toAddress(btModuleMacAddress);
      if (connection.isConnected) {
        print('tablet connected with Arduino successfully');
      } else {
        print('there is a problem while connecting with arduino');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> startListeningToBluetoothStream() async {
    try {
      print('start listening to arduino');
      connection.input!.listen((Uint8List data) {
        print('Data incoming: ${ascii.decode(data)}');
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void sendDataToAurd(Uint8List data) async {
    connection.output.add(data); // Sending data
  }
}
