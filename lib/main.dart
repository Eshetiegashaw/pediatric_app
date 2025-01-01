import 'package:flutter/material.dart';
import 'package:pediatric_app/layout/desktop_screen.dart';
import 'package:pediatric_app/layout/mobile_screen.dart';
import 'package:pediatric_app/layout/tablet_screen.dart';
import 'package:pediatric_app/layout/responsive.dart';
import 'package:pediatric_app/providers/auth.dart';
import 'package:pediatric_app/theme/theme.dart';
import 'package:pediatric_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: ChangeNotifierProvider(
          create: (context) => AuthProvider(),
          child: const MainApp(),
      )
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScreen(),
        tabletScaffold: const TabletScreen(),
        desktopScaffold: const DesktopScreen(),
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
