import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wakelock/wakelock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int hours = now.hour;
    var am_pm = hours > 12 ? "AM" : "PM";
    print("am/pm : $am_pm");
    return Scaffold(body: Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Use the constraints to determine the available space
          double width = constraints.maxWidth;

          // Adjust the layout based on the available space
          if (width > 600) {
            // For wider screens (e.g., tablets and web)
            return Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: FlipClockPlus.simple(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: MediaQuery.of(context).size.height * 0.40,
                  startTime: now,
                  digitColor: Colors.white,
                  backgroundColor: const Color(0xff07101a),
                  digitSize: MediaQuery.of(context).size.height * 0.50,
                  centerGapSpace: 5.0,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            );
          } else {
            return Text("");
            // For narrower screens (e.g., mobile)
            // return MobileLayout();
          }
        },
      ),
    ));
  }
}
