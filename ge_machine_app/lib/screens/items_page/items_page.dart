import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';
import 'package:ge_machine_app/screens/items_page/generate_qrcode_button.dart';
import 'package:ge_machine_app/screens/items_page/items_page_background.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: DeviceDimensions.height,
        width: DeviceDimensions.width,
        child: Stack(
          children: [ItemsPageBackground(), Column(
            children: [
              
              GenerateQrcodeButton(),
            ],
          )],
        ),
      ),
    );
  }
}
