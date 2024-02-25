import 'package:flutter/material.dart';

class FacultyOfComputerSciencePage extends StatelessWidget {
  const FacultyOfComputerSciencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Adds a back button in AppBar.
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Faculty of Information and Computer Technologies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for Faculty banner image
            Container(
              height: 200,
              color: Colors.grey, // Placeholder color for the banner image
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Faculty Title
                  Text(
                    'Faculty of Information and Computer Technologies',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Faculty Description
                  Text(
                    'The faculty offers a leading undergraduate program and graduate program in Information Computer Technology.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Undergraduate and Postgraduate Majors Section
                  Text(
                    'Undergraduate Majors',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Undergraduate Majors Placeholder Widgets
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 16),
                  Text(
                    'Postgraduate Programs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Placeholder(fallbackHeight: 100),
                  SizedBox(height: 32),
                  // Academic Staff Section
                  Text(
                    'Academic Staff of ICT Faculty',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Academic Staff Placeholder Widgets
                  Placeholder(fallbackHeight: 200),
                  SizedBox(height: 32),
                  // Why Study Here Section
                  Text(
                    'Why study here?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The faculty has MS Innovation Lab as a research and innovation facility...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
