import 'package:flutter/material.dart';

class InternationalPage extends StatelessWidget {
  const InternationalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Undergraduate'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Application for Postgraduate Programs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text('Paragon International University is among the top universities in Cambodia offering Undergraduate and Graduate programs with an internationally recognized curriculum Register with us today to get an international quality education with affordable fees at your doorstep. We are accepting national and international applicants with a full range of backgrounds.'),
              ),
              SizedBox(height: 20),
              Text(
                'The application process',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Submit application and relevant documents to the admission office: admission@paragoniu.edu.kh'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('International students who do not take the Paragon.U Scholarship Exam are eligible for up to 75% scholarship (annual registration fee not included).'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Accommodation is covered by students, the university helps to facilitate'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Visa expenses are covered by students, university facilitates visa application'),
              ),
              SizedBox(height: 20),
              Text(
                'Admission requirements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('High School Diploma or Certificate that student will complete by certain date'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Statement of Purpose (recommended)'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Reference letter from a teacher or a principal'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('High School transcript'),
              ),
              Text(
                'Where to submit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Documents that are not submitted through the online application can be mailed to:'),
              ),
              ListTile(
                title: Text('No. 8 St. 315, Boeng Kak 1, Tuol Kork Phnom Penh, Cambodia'),
              ),
              // Include other necessary Widgets and properties based on the image
            ],
          ),
        ),
      ),
    );
  }
}
