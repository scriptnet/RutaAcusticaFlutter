import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flutter/services.dart';




void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.light
    ));
     */
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return new MaterialApp(
      title: 'Snackbar Example',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.dark,

        fontFamily: 'MPlus',
        primaryColor: const Color(0xFFff1744),
        accentColor: const Color(0xFFff0000),
        platform: TargetPlatform.iOS,
        scaffoldBackgroundColor: const Color(0xFF1C2429),
      ),
      home: new HomePage(),
    );
  }
}


class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}