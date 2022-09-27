import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:depd_0706012010039/utils/import_helper.dart';
import 'package:depd_0706012010039/utils/style_helper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DEPD_0706012010039',
      theme: ThemeData(
        primaryColor: Style.lime800,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: GoogleFonts.epilogue().fontFamily,
              bodyColor: Style.white,
              displayColor: Style.white,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Style.lime800),
            foregroundColor: MaterialStateProperty.all<Color>(Style.black),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Style.black,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
