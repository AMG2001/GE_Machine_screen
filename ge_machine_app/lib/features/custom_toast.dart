import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static void showBlackToast({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        fontSize: 16,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
        backgroundColor: Colors.black);
  }
}
