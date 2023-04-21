import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';
import 'package:ge_machine_app/screens/qrcode_generation_page/qrcode_generation_page_components/column_under_qr_code.dart';
import 'package:ge_machine_app/screens/qrcode_generation_page/qrcode_generation_page_components/details_above_qrcode.dart';
import 'package:ge_machine_app/screens/qrcode_generation_page/qrcode_generation_page_components/page_background_image.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class QrcodePage extends StatelessWidget {
  const QrcodePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const QrcodePageBackgroundImage(),
            Positioned(
              left: DeviceDimensions.width * .15,
              child: Column(
                children: [
                  /**
                   * Green Egypt logo and text
                   * with some notes in text .
                   */
                  DetailsAboveQrcode(),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: EdgeInsets.all(32),
                    width: DeviceDimensions.width * .25,
                    height: DeviceDimensions.width * .25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: FittedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Scan this qr code : ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            child: SfBarcodeGenerator(
                              value: 'www.syncfusion.com',
                              symbology: QRCode(),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Plastic : 2 , Can : 1",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),

                  /**
                   * Done Button .
                   * Auto navigation Text .
                   */
                  const ColumnUnderQrCode()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
