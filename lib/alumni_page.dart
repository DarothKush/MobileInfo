import 'package:flutter/material.dart';

class AlumniPage extends StatelessWidget {
  const AlumniPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumni Affairs'),
        backgroundColor: theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/images/alumni.jpg', height: 200, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Alumni Affairs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The Alumni Affairs is administered under the Office of Student Services of Paragon International University.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Our Purpose of Alumni Affairs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'The alumni affairs acts as a link between graduates and current students at Paragon International University. We regularly invite our alumni to panel discussions and also conduct interviews with them and share their videos on our Paragon social platforms. We also conduct alumni surveys both in social media with our group “Paragon Alumni Affairs” so that we keep in touch with the alumni from previous generations. We also survey alumni so that we maintain contact with them whether it’s for an internship, job opportunities, sharing other information, and alumni gatherings.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColorLight, backgroundColor: theme.primaryColorDark,
              ),
              child: const Text('JOIN OUR NETWORK'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
