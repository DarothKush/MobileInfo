import 'package:flutter/material.dart';

class StudentClubs extends StatelessWidget {
  const StudentClubs({super.key});

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
                  image: DecorationImage(image: AssetImage("assets/images/angkorwat.jpg"))),
              width: 400,
              height: 270,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Student Clubs \nand Cultural \nActivities",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),

            Container(
              width: 400,
              height: 110,
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "Student Clubs and Cultural Activities",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 190,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                "This center helps students to organize and run their own cultural activities and clubs in which most students like to participate."
                    " We encourage students to join extracurricular activities because by joining students"
                    " can enhance their overall educational experience at Paragon International University.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            Container(
              width: 400,
              height: 80,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "The process of applying to create a student club",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 270,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Each academic year, Paragon International University has numerous clubs (Khmer Traditional Dance and Cultural Club, Paragon International Model United Nation,"
                      "International Student Club, Football Club, Aikido Club, Basketball Club, Table Tennis Club, Guitar Club, Paragon Youth Club, Robotic Club,"
                      "Debate Club, etc) provided to students which enable them to organize and run their own activities based on their own interests.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 180,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Every year we receive inquires about organizing clubs. Therefore, we have made the process easy for the creation of new clubs"
                      "so that students will have the opportunity to participate in and enjoy additional extracurricular activities.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 400,
              height: 70,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topLeft,
              child: const Text(
                  "Various Clubs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 110,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "We have different clubs which operated with the cooperation from the students and some instructors in Paragon International University.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              width: 500,
              height: 450,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "- Football Club"
                      "\n- Guitar Club"
                      "\n- Aikido Club"
                      "\n- Model UN Club"
                      "\n- Traditional Khmer Dance Club"
                      "\n- Youth Club"
                      "\n- Debate Club"
                      "\n- Basketball Club"
                      "\n- Robotics Club"
                      "\n- Table Tennis Club"
                      "\n- International Students Club"
                      "\n- Bookworm Club",
                  style: TextStyle(fontSize: 16, color: Colors.black, height: 2)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 400,
              height: 100,
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
              alignment: Alignment.topCenter,
              child: const Text(
                  "The process of applying to create a student club",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "     Personal development",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 140,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "You will undoubtedly learn new skills. In a diverse group, you will be able to experience "
                      "personal growth, discover your passion, your skills, and experiment with new areas of expertise.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "     Building networks",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 140,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "This can be an amazing platform to meet new people. You will be able to participate in all of the "
                      "networking events and make connections with others, which can be invaluable for you in the near future.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "     Boost your personal capacity",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 160,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Participating in extracurricular activities is a great experience to put on your CV. After graduation, when you apply for a job,"
                      " you will stand out among your peers. Your academic scores will not stand-alone. You need extra-curricular decoration on your CV.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "     Leadership",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 180,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Becoming a leader or an officer in an organization will help you develop leadership skills that will be invaluable in all areas of life."
                      "Your participation in extracurricular activities will present you with opportunities to improve your public speaking and help you gain confidence in yourself as an individual.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "     Recreational activities",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
              ),
            ),

            Container(
              color: Colors.grey,
              width: 500,
              height: 150,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Text(
                  "Another simple reason to join a student organization is to have fun. Meeting new people, making new friends, and participating in activities will help you make the most of your university experience.",
                  style: TextStyle(fontSize: 16, color: Colors.black)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
