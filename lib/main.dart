import 'package:flutter/material.dart';
import 'package:flutter_list_view_app/listing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const int _customPrimarySwatch = 0xFF4e89ae;
  static const MaterialColor primarySwatch = MaterialColor(
    _customPrimarySwatch,
    <int, Color>{
      50: Color(0xFF4e89ae),
      100: Color(0xFF4e89ae),
      200: Color(0xFF4e89ae),
      300: Color(0xFF4e89ae),
      400: Color(0xFF4e89ae),
      500: Color(_customPrimarySwatch),
      600: Color(0xFF4e89ae),
      700: Color(0xFF4e89ae),
      800: Color(0xFF4e89ae),
      900: Color(0xFF4e89ae),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primarySwatch,
        secondaryHeaderColor: new Color(0xFFed6663),
        accentColor: new Color(0xFF43658b),
        buttonColor: new Color(0xFFffa372),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListingPage(),
    );
  }
}
