import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePath = [
    'art_1.jpg',
    'art_2.jpg',
    'art_3.jpg',
    'art_5.jpg',
    'art_6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(
              options: CarouselOptions(autoPlay: true),
              items: _imagePath.map((imagePath) {
                return Builder(
                  builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(imagePath),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    );
                  },
                );
              }).toList()),
        ),
      ),
    );
  }
}
