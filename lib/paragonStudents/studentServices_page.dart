import 'package:flutter/material.dart';

class StudentServices extends StatelessWidget {
  const StudentServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/paragon-logo-2@2x.png", width: 140, height: 45),
        actions: [
          IconButton(
              onPressed: (){
                // do something
              },
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){
                // do something
              },
              icon: const Icon(Icons.menu)
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/meeting.jpg"))),
              width: 400,
              height: 270,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Student \nServices",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),

            Container(
              width: 400,
              height: 110,
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "The Office of Student Services",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 450,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "The Office of Student Services (OSS) caters to those who further"
                    " the mission and curriculum of Paragon International University."
                    " This. is accomplished with academic counseling, support, and discipline to"
                    " promote an ethos of intelligence freedom, based on mutual respect, integrity,"
                    " and solid expectations of manifold achievement—academic, spiritual,"
                    " as well as professional. Support services are delivered with a view to"
                    " enhance the work productivity of students, faculty, administrators, and staff through"
                    " programs that further loyalty, commitment, and a sense of community. To serve its users,"
                    " the office often works hand in hand with students, staff and faculty, external"
                    " organizations, professional and educational bodies.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              width: 400,
              height: 80,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "There are 5 units in the Office of Student Services:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 170,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "- Academic Support Unit"
                      "\n- Carrier Center"
                      "\n- Student Council"
                      "\n- Alumni Affairs"
                      "\n- Student Club and Cultural Activities",
                  style: TextStyle(fontSize: 16, color: Colors.black, height: 2)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Dr. Meirambek Zhaparov",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Vice-Rector for Student Affairs",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Mrs. Sheue Li Ng",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Director of Office of Student Services",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Mrs. Sokna Ly",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Secretary of the Office of Student Services",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Ms. Kanha Ongchameoeun",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Assistant to Academic Support Unit",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Ms. Saovattana Sy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Assistant to Career Center",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Mr. Sidavid Sin",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Assistant to Alumni Affairs",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Mr. Vannvibal Ker",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 370,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Assistant to Student Club and Cultural Activities",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)
              ),
            ),

            Container(
              color: Colors.white,
              width: 370,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
            ),

            Container(
              width: 340,
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              alignment: Alignment.topLeft,
              color: Colors.grey,
              child: const Text(
                  "Student Services",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),
            const Divider(
              color: Colors.orange,
              thickness: 3,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Internal Website",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),
            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Academic Support Unit",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Career Center",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),
            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Student Council",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),
            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Alumni Affairs",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),
            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,

            ),
            Container(
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: const Text(
                  "->     Student Club and Cultural Activities",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            const Divider(
              color: Colors.orange,
              thickness: 1,
              indent: 25,
              endIndent: 25,
            ),

            Container(
              color: Colors.white,
              width: 370,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
            ),
            Container(
              color: Colors.indigo,
              width: 340,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Student Services Info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Office of Student Services",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              alignment: Alignment.topLeft,
              child: const Text(
                  "->   Room 202, Office of Student Services, Paragon International University",
                  style: TextStyle(fontSize: 16, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              alignment: Alignment.topLeft,
              child: const Text(
                  "->   Monday - Friday 08:00 - 17:00",
                  style: TextStyle(fontSize: 16, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              alignment: Alignment.topLeft,
              child: const Text(
                  "->   oss@paragoniu.edu.kh",
                  style: TextStyle(fontSize: 16, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Social Info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Facebook",
                  style: TextStyle(fontSize: 16, color: Colors.orange)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Social Info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.indigo,
              width: 340,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              alignment: Alignment.topLeft,
              // child: const Text(
              //     "Social Info",
              //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              // ),
            ),

            Container(
              color: Colors.white,
              width: 370,
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topCenter,
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              alignment: Alignment.topLeft,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Academic Support Unit",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 220,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "The Academic Support Unit aims to help students who are having problems with their learning processes."
                    " his may become apparent if they have been graded as unsatisfactory on an assessment, if one or more"
                    " lecturers have indicated they are having problems, or if the student themselves feels that they"
                    " are not making the progress which they feel they ought to be making.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 140,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "If you come across a student who you believe is experiencing difficulties in their learning,"
                    " please refer the student to the Academic Support Unit where they can gain the support they require.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 80,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Essentials of the Academic Support Unit are:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 170,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "- Peer Tutoring ( become a tutor / become a tutee )"
                      "\n- Counselling Services"
                      "\n- The Academic Success Workshop",
                  style: TextStyle(fontSize: 16, color: Colors.black, height: 2)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              alignment: Alignment.topLeft,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Student Council",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 220,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "Student Council is a group of elected and volunteer students working together with an adult advisor"
                    " within the framework of a constitution or bylaws to provide a means for student expression"
                    " and assistance in school affairs and activities, give opportunities for student experience"
                    " in leadership and encourage student, faculty and community relations.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 80,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Through projects and activities, student councils work to:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 170,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "- Promote Citizenship"
                      "\n- Promote Scholarship"
                      "\n- Promote Leadership"
                      "\n- Promote Relation"
                      "\n- Promote Cultural Values",
                  style: TextStyle(fontSize: 16, color: Colors.black, height: 2)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              alignment: Alignment.topLeft,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Student Club and Cultural Activities",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 260,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "Each academic year, Paragon International University has numerous clubs (Khmer Traditional Dance and Cultural Club,"
                    " Paragon International Model United Nation, International Student Club, Football Club, Aikido Club,"
                    " Basketball Club, Table Tennis Club, Guitar Club, Paragon Youth Club, Robotic Club, Debate Club, etc) provided to students"
                    " which enable them to organize and run their own activities based on their own interest.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 150,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "And each year, we received various reports about organizing the clubs which motivate us to ease in the registration for"
                    " the creation of those clubs in order for students to have the encouragement of joining extracurricular activities.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
