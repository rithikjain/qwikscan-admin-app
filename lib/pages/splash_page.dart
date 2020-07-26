import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qwikscan_admin/pages/scan_qr_page.dart';
import 'package:qwikscan_admin/utils/theme.dart';
import 'package:qwikscan_admin/widgets/show_up.dart';

class SplashPage extends StatefulWidget {
  static const routename = "/";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed(ScanQrPage.routename);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ShowUp(
                delay: Duration(milliseconds: 200),
                child: Lottie.asset(
                  'assets/animations/shopping-lady.json',
                  height: 200,
                  repeat: true,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ShowUp(
                child: Text(
                  'QwickScan Admin',
                  style: PurpleHeadingText,
                ),
                delay: Duration(milliseconds: 500),
              ),
              ShowUp(
                delay: Duration(milliseconds: 700),
                child: Text(
                  'WE MAKE SHOPPING EASY',
                  style: SmallGreyText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
