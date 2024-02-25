import 'package:flutter/material.dart';

class UndergraduatePage extends StatelessWidget {
  const UndergraduatePage({super.key});

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
                'Application for Undergraduate Programs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'The application process',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Fill out Enrollment Form'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Pay Registration Fee'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Take English Proficiency Test'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Pay Tuition Fee'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Start Foundation Year Studies or English Preparatory School'),
              ),
              SizedBox(height: 20),
              Text(
                'Undergraduate Majors',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...List<Widget>.from(['Banking and Finance', 'Business Administration', 'International Trade and Logistics', 'Economics', 'International Relations', 'Architecture', 'Civil Engineering', 'Industrial Engineering', 'Computer Science', 'Management of Information Systems'].map(
                    (major) => ListTile(
                  title: Text(major),
                ),
              )),
              SizedBox(height: 20),
              Text(
                'Things to know first',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('High school diploma or a letter from your school certifying that you graduated or will graduate this year.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('A passing grade from the Grade 12 Exam (BAC II) for Cambodian applicants'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Passport or Cambodian National ID card'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('4 photos (size 4*6)'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Completed Application Form (The form can be obtained at the Front Desk on campus for 10 dollars'),
              ),
              Text(
                'Where to submit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Documents should be submitted to the Office of the Registrar at Paragon International University.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('You can fill online application form and bring original documents to the Office of the Registrar.'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('No. 8 St. 315, Boeng Kak1, Toul Kork Phnom Penh, Cambodia'),
              ),
              // Include other necessary Widgets and properties based on the image
            ],
          ),
        ),
      ),
    );
  }
}
