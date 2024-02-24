import 'package:flutter/material.dart';

class StudentCouncil extends StatelessWidget {
  const StudentCouncil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/paragon-logo-2@2x.png", width: 140, height: 45),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/discussion.jpg"))),
              width: 400,
              height: 270,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Student \nCouncil",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),

            Container(
              width: 400,
              height: 370,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 140,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/sc.png'),
              ),
            ),

            Container(
              width: 500,
              height: 320,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "This council is the representation of the students in the university so that they can be involved in school affairs by working in partnership"
                    " with the University Management, Staff and Instructors for the advantage of the school and the students."
                    " The councils are carefully selected by a voting process from the students of Paragon International University"
                    " and the representatives with the most votes become the student councils of the university.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 100,
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Mission",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 155,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "A Student Council is a representative structure through which students in a university can become involved in the affairs of the school,"
                      "working in partnership with University Management, Staff and Instructors for the benefit of the school and its students.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 155,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "The main role of the Council as set out in the Constitution and By-Laws is “to promote the interests of the University and the"
                      " involvement of students in the affairs of the school, in cooperation with the Board, Instructors and Staff”.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 90,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "A Student Council will set its own objectives, which will vary from school to school. Some general objectives could include:",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 250,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "-   To enhance communication between Students, Management, Staff, and Instructors"
                      "\n-   To promote an environment conducive to educational and personal development"
                      "\n-   To promote friendship and respect among students"
                      "\n-   To support Management and Staff in the development of the School"
                      "\n-   To represent the views of the Students on matters of general concern to them",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 200,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "A Student Council will identify activities that it would like to be involved in organizing, although the final decision"
                      "on the activities of a Student Council should be agreed upon with School Management.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 110,
              padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 5.0),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Key Functions",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 210,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "The functions and activities of a Student Council should support the aims and objectives of the Council and promote the development"
                      "of Paragon International University and the welfare of its Students. In planning and undertaking activities during the course of the academic year, the Council should:",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 170,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "-   Work closely with University Management, Staff and Instructors"
                      "\n-   Consult regularly with students in the university"
                      "\n-   Involve as many students as possible in the activities of the Council",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),
            ..._buildFAQSections(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

List<Widget> _buildFAQSections() {
  List<Map<String, dynamic>> faqSections = [
    {
      'category': 'There is a wide range of activities of benefit to the school community which a Student Council may wish to undertake, some of which are outlined below:',
      'faqs': [
        {
          'question': 'PRESENT THE VIEWS OF THE STUDENT BODY TO THE UNIVERSITY MANAGEMENT',
          'answer': 'This should be one of the fundamental aims of every council. It involves talking with and listening to the student body,considering their views and concerns, and discussing these with the school management on behalf of students.'
        },
        {
          'question': 'PROMOTING GOOD COMMUNICATION WITHIN THE UNIVERSITY',
          'answer': 'Improving communication within the school community is a shared responsibility and a student council can contribute to this process. Keeping a student council notice-board or organizing a regular newsletter are just some ways the council can communicate with the students, school management, staff and parents.'
        },
        {
          'question': 'SUPPORTING EDUCATIONAL DEVELOPMENT TO THE LEARNING ENVIRONMENT',
          'answer': 'The Student Council supports students in the school by, for example, setting up study groups for students in exam prep classes or homework clubs, or organizing lunchtime activities such as language clubs.'
        },
        {
          'question': 'CONTRIBUTING TO THE DEVELOPMENT OF SCHOOL POLICY',
          'answer': 'The student council can actively contribute to the development of school policy in a wide range of areas. The council could form sub-committees to consider individual policy issues, to consult with students, staff and instructors on those issues and to represent the council’s views on those issues to University Management.'
        },
        {
          'question': 'ASSISTING IN SCHOOL SPORTING AND CULTURAL ACTIVITIES',
          'answer': 'Student councils can assist in organizing and developing sports and cultural activities within the school, including for example, a sports day, dramas, and musical events.'
        },
        {
          'question': 'ASSIST WITH OR ORGANIZING FUND-RAISING EVENTS FOR CHARITY',
          'answer': 'Student councils can organize events both within the University and involving the wider community, for the purpose of raising money for designated charities.'
        },
      ]
    },
  ];
  return faqSections.map((section) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section['category'],
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 10),
          ...section['faqs'].map<Widget>((faq) {
            return FAQExpansionTile(faq: faq);
          }).toList(),
        ],
      ),
    );
  }).toList();
}


class FAQExpansionTile extends StatelessWidget {
  final Map<String, String> faq;

  const FAQExpansionTile({
    super.key,
    required this.faq,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color accentColor = theme.colorScheme.secondary;

    return ExpansionTile(
      title: Text(
        faq['question']!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: accentColor,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            faq['answer']!,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
          Text(
            'Copyright © 2024 All Rights Reserved. Paragon International University',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}