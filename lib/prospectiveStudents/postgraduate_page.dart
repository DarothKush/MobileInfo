import 'package:flutter/material.dart';

class PostgraduatePage extends StatelessWidget {
  const PostgraduatePage({super.key});

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
              SizedBox(height: 20),
              Text(
                'The application process',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Online application at www.paragoniu.edu.kh/apply or at our campus front desk*'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Review of Applications by the Admission Committee'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Sending unconditional or conditional offers to the Applicants**'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Enrollment to Paragon.U'),
              ),
              SizedBox(height: 20),
              Text(
                'Things to know first',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('If an Applicant doesn’t have IELTS or TOEFL scores, he/she can take Paragon.U English proficiency test'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Conditional offer can specify requirements to pass Paragon.U English Test or to provide some additional documents'),
              ),
              SizedBox(height: 20),
              Text(
                'Admission requirements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Bachelor’s degree diploma/certificate'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('A Statement of Purpose (approximately 500 words)'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('English proficiency (minimum TOEFL iBT 70 / IELTS 6.0 / Passing Paragon.U English Proficiency Test)'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Recommendation Letters'),
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
