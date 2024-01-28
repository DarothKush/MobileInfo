import 'package:flutter/material.dart';
import 'university_partners_page.dart';
import 'industrial_partners_page.dart';

class PartnershipsPage extends StatelessWidget {
  const PartnershipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partnerships'),
        backgroundColor: theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/images/partners.jpg', height: 200, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Partnerships',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Explore our partnerships with universities and industry partners.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityPartnersPage()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColorLight, backgroundColor: theme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              child: const Text('University Partners'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => IndustrialPartnersPage()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColorLight, backgroundColor: theme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              child: const Text('Industrial Partners'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
