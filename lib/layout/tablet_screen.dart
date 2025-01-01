import 'package:flutter/material.dart';
import 'package:pediatric_app/constants.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: my_app_bar,
        drawer: my_drawer,


    );
  }
}
