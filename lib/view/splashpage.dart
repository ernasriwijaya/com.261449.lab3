import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  late double screenHeight, screenWidth, resWidth;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      resWidth = screenWidth * 0.85;
    } else {
      resWidth = screenWidth * 0.75;
    }
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              child: Image.asset('assets/images/lazywearmy.png'), width: resWidth),
          const CircularProgressIndicator(),
          Text(
            "Version 0.1",
            style: TextStyle(
                fontSize: resWidth * 0.05,
                //color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
  }