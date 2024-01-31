import 'package:flutter/material.dart';
import 'package:fire_web/current_age/current_age_widget.dart';
import 'package:fire_web/bottom_navigation/bottom_nav_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retirement Calculator',
      theme: ThemeData(
        // Define the primary color
        // primaryColor: Colors.blue,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFFFFFF),
          secondary: Color(0xFF667085),
          background: Color(0xFF121B22),
        ),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Retire Early',
          textAlign: TextAlign.left,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Financial Independence, Retire Early',
            //   style: Theme.of(context).textTheme.displayMedium,
            // ),
            // const SizedBox(height: 16),
            Text(
              'This calculator will help you determine how much you need to save each month to achieve financial independence & retire early.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            BottomNavigation(
              isPrevRequired: false,
              isNextRequired: true,
              onNextPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CurrentAgeWidget()),
                );
              },
              nextLabel: "Get Started",
            ),
          ],
        ),
      ),
    );
  }
}
