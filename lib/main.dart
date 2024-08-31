import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ResponsiveLayout.dart';

import 'package:farmer_ecommerce/Screen/SplashScreen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResponsiveLayout(mobile: SplashScreen(), desktop: SplashScreen()),
  ));
}