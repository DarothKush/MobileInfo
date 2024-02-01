import 'package:flutter/material.dart';

class FacultyOfEconomicPage extends StatelessWidget {
  const FacultyOfEconomicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for Faculty banner image
            Container(
              height: 200,
              color: Colors.grey, // Placeholder color for the banner image
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // Faculty Title
                  Text(
                    'Faculty of Economics and Administrative Sciences',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Faculty Description
                  Text(
                    'The Faculty of Economics and Administrative Sciences at ParagonU offers four undergraduate degree majors...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Undergraduate Majors Section
                  Text(
                    'Undergraduate Majors',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Placeholder Widgets for Undergraduate Majors
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 16),
                  // Postgraduate Programs Section
                  Text(
                    'Postgraduate Programs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 32),
                  // Academic Staff Section
                  Text(
                    'Academic Staff of EAS Faculty',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Placeholder Widgets for Academic Staff
                  Placeholder(fallbackHeight: 200),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
