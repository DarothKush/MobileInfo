import 'package:flutter/material.dart';

class UniversityPartnersPage extends StatelessWidget {
  final List<Map<String, String>> universityList = [
    {'name': 'Central Queensland University', 'country': 'Australia'},
    {'name': 'Centennial College', 'country': 'Canada'},
    {'name': 'Chiangmai University, College of Arts, Media, and Technology', 'country': 'Thailand'},
    {'name': 'Essex University', 'country': 'UK'},
    {'name': 'Hankuk University of Foreign Studies (HUFS)', 'country': 'Korea'},
    {'name': 'KDU University College Sdn Bhd', 'country': 'Malaysia'},
    {'name': 'King Mongkuts University of Technology Thonburi', 'country': 'Thailand'},
    {'name': 'Liaoning Communication University', 'country': 'China'},
    {'name': 'Mahidol University International College', 'country': 'Thailand'},
    {'name': 'President University', 'country': 'Indonesia'},
    {'name': 'Southern Alberta Institute of Technology (SAIT)', 'country': 'Canada'},
    {'name': 'Salem State University', 'country': 'USA'},
    {'name': 'SolBridge International School of Business (Woosong University)', 'country': 'Korea'},
    {'name': 'University of the Philippines – Diliman', 'country': 'Philippines'},
    {'name': 'Petronas University of Technology (new) / Universitas Teknologi Petronas', 'country': 'Malaysia'},
    {'name': 'Ludwig Maximilian University of Munich', 'country': 'Germany'},
    {'name': 'SRH University Heidelberg', 'country': 'Germany'},
    {'name': 'Aditya Institute of Management', 'country': 'India'},
    {'name': 'Panyapiwat Institute of Management', 'country': 'Thailand'},
    {'name': 'Universidade Nacional Timor Lorosae', 'country': 'Timor-Leste'},
    {'name': 'University of Nevada, Las Vegas', 'country': 'USA'},
    {'name': 'Ho Chi Minh City Open University', 'country': 'Vietnam'},
  ];

  UniversityPartnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partner Universities'),
        backgroundColor: theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Partner Universities',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: universityList.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color(0xFF4169E1),
                  child: ListTile(
                    title: Text(
                      universityList[index]['name']!,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      universityList[index]['country']!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: UniversityPartnersPage()));
