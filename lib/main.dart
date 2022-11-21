import 'package:flutter/material.dart';
import 'package:sumpalatestpage/page_promo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagePromo(),
    );
  }
}
