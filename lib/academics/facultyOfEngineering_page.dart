import 'package:flutter/material.dart';

class FacultyOfEngineeringPage extends StatelessWidget {
  const FacultyOfEngineeringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for Faculty of Engineering banner image
            Container(
              height: 200,
              color: Colors.grey, // Placeholder color for the banner image
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page Title
                  Text(
                    'Faculty of Engineering',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Page Description
                  Text(
                    'The Faculty of Engineering at ParagonU strives to prepare its students with the highest quality education and research who will ensure the challenges of the industry and the society competently.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Undergraduate Majors Title
                  Text(
                    'Undergraduate Majors',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Undergraduate Majors Placeholder Widgets
                  // Replace with actual widgets or images
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 16),
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 16),
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 32),
                  // Academic Staff Section Title
                  Text(
                    'Academic Staff of Engineering Faculty',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Academic Staff Placeholder Widgets
                  // Replace with actual widgets or images
                  Placeholder(fallbackHeight: 200),
                  SizedBox(height: 32),
                  // Actions
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}