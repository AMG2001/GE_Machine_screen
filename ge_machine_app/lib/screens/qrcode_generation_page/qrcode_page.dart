import 'package:flutter/material.dart';
import 'package:ge_machine_app/dimensions.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class QrcodePage extends StatelessWidget {
  const QrcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: DeviceDimensions.width,
              height: DeviceDimensions.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/qrcode_page_background.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              left: DeviceDimensions.width * .15,
              child: Column(
                children: [
                  SizedBox(
                    height: DeviceDimensions.height * .1,
                  ),
                  Row(
                    children: [
                      Container(
                          height: DeviceDimensions.width * .065,
                          child: Image.asset('assets/GE Logo.png')),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Green Egypt",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions.height * .08,
                  ),
                  Text(
                    "Scan & Earn",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "With these simple steps , you can earn your points : ",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "1. open Green Egypt Application.",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "2. Navigate to Qrcode page and touch \nupper square to open camera.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "3.Scan this qrcode",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
