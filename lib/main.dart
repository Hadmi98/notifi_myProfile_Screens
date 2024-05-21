import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification/constants.dart';
import 'package:notification/pages/myProfile.dart';
import 'pages/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(

                // color: kTextLightColor,
                ),
          ),
        ),
        textTheme:  TextTheme(
          labelLarge: TextStyle(
            color: kTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            color: kTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          ),
          titleMedium: TextStyle(
            color: kTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: kTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            color: kTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ),
      // home: NotificationPage(),
      home: const Myprofile(),
    );
  }


}