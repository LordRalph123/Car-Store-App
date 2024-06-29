import 'package:flutter/material.dart';
import 'package:young/view/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const CarStoreApp());

class CarStoreApp extends StatelessWidget {
  const CarStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
              //primarySwatch: Color(0XFFFF5C00),
              fontFamily: 'Poppins',
              useMaterial3: true, 
            ),
      ),
    );
  }
}