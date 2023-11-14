import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _currentTime = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
    body: Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
      child: FlipClockPlus.simple(

      startTime: DateTime.now(),
      digitColor: Colors.white,
      backgroundColor: const Color(0xff07101a),
      digitSize: 50.0,
      centerGapSpace: 1.0,
      borderRadius: const BorderRadius.all(Radius.circular(3.0)),
      ),
      ),
    ),
    ));
  }
}
