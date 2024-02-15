import 'package:flutter/material.dart';

class StudentAmbassador extends StatelessWidget {
  const StudentAmbassador({super.key});

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
                  image: DecorationImage(image: AssetImage("assets/images/students.png"))),
              width: 400,
              height: 150,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
            ),

            Container(
              color: Colors.orange,
              width: 400,
              height: 55,
              alignment: Alignment.center,
              child: const Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 30, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.orange,
              width: 400,
              height: 38,
              alignment: Alignment.center,
              child: const Text(
                  "Paragon.U Student",
                  style: TextStyle(fontSize: 30, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.orange,
              width: 400,
              height: 60,
              alignment: Alignment.topCenter,
              child: const Text(
                  "Ambassador",
                  style: TextStyle(fontSize: 30, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 70,
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Student Ambassador Overview",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 70,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Student Ambassadors represent and promote the University to the wider community.",
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic,  color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 180,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: const Text(
                  "The Student Ambassador Program is designed for students who wish to represent Paragon International University "
                      "by supporting the Office of Public Relations with various events and projects intended to enhance the university's reputation and image.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 270,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: const Text(
                  "Student Ambassadors are current students who serve as a bridge between the university and the surrounding community. Furthermore, we are in a position of trust,"
                      "interacting directly with the public and reflecting on our own experiences to spark people's interest in university life while providing"
                      " an insight of what it is like to be a student at Paragon International University.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 360,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: const Text(
                  "Student Ambassadors are generally the first to meet and greet visitors to the University, and as such, we are responsible for offering exceptional"
                      "interacting directly with the public and reflecting on our own experiences to spark people's interest in university life while providing"
                      " customer service as well as accurate information about the University from the perspective of a student. "
                      "The term of appointment extends for one academic year (or equal to 12 months).",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            const Divider(
              height: 40,
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,

            ),

            Container(
              color: Colors.orange,
              width: 400,
              height: 70,
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                  "Recent Fun Activities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb1.png')
              ),
            ),

            Container(
              width: 400,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Random Questions Interview",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 80,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Let's find out how many students at Paragon.U Sangkranta can guess these riddles and pictures right!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "Apr 21, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb2.png')
              ),
            ),

            Container(
              width: 400,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Paragon.U Sangkranta 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 80,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Let's take a moment to explore what was on the event day, the uniqueness of our Paragon.U student, and...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "Apr 18, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb3.png')
              ),
            ),

            Container(
              width: 400,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Happy Khmer New Year 2023!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 80,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "In this occasion, our student ambassadors would like to wish everyone a prosperous year ahead...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "Apr 15, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.orange,
              width: 400,
              height: 70,
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                  "News and Updates",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb4.png')
              ),
            ),


            Container(
              width: 500,
              height: 130,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Our Student Ambassador, Mr. Satya Kao and Ms. Chanchorornay Se, were invited to the workshop hosted by Department of Architecture to share their experience of joining a competition at ImpactHub.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "Apr 21, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb5.png')
              ),
            ),

            Container(
              width: 500,
              height: 130,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Congratulations to AquaBuild and its members for winning the Build4People Sustainable Building Incubator. Our SA, Mr. Satya Kao and Ms. Chanchorornay Se are a part of the winning team. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "March 9, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 265,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Image(
                  image: AssetImage('assets/images/amb6.png')
              ),
            ),


            Container(
              width: 500,
              height: 80,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Congratulations to 4 of Paragon.U students from 3 departments for being selected as interns at the U.S. embassy. Our SA, Ms. Monyroath Kun, is a part of the selected candidates on this journey as well.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 40.0),
              child: const Text(
                  "February 16, 2023",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),
            FooterSection(),
          ],

        ),
      ),
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
