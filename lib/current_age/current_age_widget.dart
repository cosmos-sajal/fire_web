import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fire_web/bottom_navigation/bottom_nav_widget.dart';
import 'package:fire_web/retirement_age/retirement_age_widget.dart';

class CurrentAgeWidget extends StatelessWidget {
  const CurrentAgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                labelText: 'What is your current age?',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            BottomNavigation(
                isPrevRequired: false,
                isNextRequired: true,
                onNextPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RetirementAgeWidget()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
