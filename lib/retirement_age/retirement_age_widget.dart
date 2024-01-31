import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fire_web/bottom_navigation/bottom_nav_widget.dart';

class RetirementAgeWidget extends StatelessWidget {
  const RetirementAgeWidget({
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
                labelText: 'At what age do you want to retire?',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            BottomNavigation(
                isPrevRequired: true,
                isNextRequired: true,
                onNextPressed: () {}),
          ],
        ),
      ),
    );
  }
}
