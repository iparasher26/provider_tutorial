import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/slider_provider.dart';
import 'package:provider_tutorial/screen/counter_example.dart';
import 'package:provider_tutorial/screen/multiple_provider.dart';
import 'package:provider_tutorial/stateful_screen.dart';
import 'package:provider_tutorial/stateless_screen.dart';
import 'package:provider_tutorial/why_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider()),
        ChangeNotifierProvider(create: (_)=> SliderProvider()),
        ],
        child: MaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
          useMaterial3: true,
          // Define the default brightness and colors.
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            brightness: Brightness.dark,
          ),
          textTheme: TextTheme(
            displayLarge: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            // ···
            titleLarge: GoogleFonts.oswald(
              fontSize: 36,
              fontStyle: FontStyle.italic,
            ),
            bodyMedium: GoogleFonts.merriweather(),
            displaySmall: GoogleFonts.pacifico(
              fontSize: 54,
            ),
          ),
        ),
        home: MultipleProvider(),
      ),
    );
  }
}
