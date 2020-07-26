import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qwikscan_admin/pages/summary_page.dart';
import 'package:qwikscan_admin/utils/theme.dart';
import 'package:qwikscan_admin/widgets/show_up.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanQrPage extends StatefulWidget {
  static const routename = "/scanQrPage";
  @override
  _ScanQrPageState createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(40),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ShowUp(
            delay: Duration(milliseconds: 200),
            child: Lottie.asset(
              'assets/animations/qr.json',
              height: 150,
              repeat: true,
            ),
          ),
          ShowUp(
            delay: Duration(milliseconds: 500),
            child: Container(
              margin: EdgeInsets.all(64),
              child: Text(
                "Get started by scanning the QR code!",
                style: PurpleHeadingText,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ShowUp(
            delay: Duration(milliseconds: 500),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 52,
              margin: EdgeInsets.only(left: 64, right: 64, bottom: 32),
              child: RaisedButton(
                color: Yellow,
                child: Text('SCAN QR'),
                textColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadius8,
                ),
                onPressed: () async {
                  String cartId = await scanner.scan();
                  if (cartId != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SummaryPage(cartId),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
