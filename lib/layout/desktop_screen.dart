import 'package:flutter/material.dart';
import 'package:pediatric_app/constants.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: my_app_bar,
        body: Row(
          children: [
            my_drawer
          ],
        ),
    );
  }
}
