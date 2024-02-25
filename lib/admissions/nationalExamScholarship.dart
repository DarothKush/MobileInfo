import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NationalExam extends StatefulWidget {
  const NationalExam({super.key});

  @override
  _NationalExamState createState() => _NationalExamState();
}


class _NationalExamState extends State<NationalExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: false,
                expandedHeight: 200.0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/ScholarshipMainPage');
                  },
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'National Exam \nScholarships',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFffae00), // PIUyellow
                        decorationThickness: 1.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  centerTitle: true,
                  titlePadding: const EdgeInsets.only(bottom: 80.0),
                  background: Image.asset(
                    'assets/images/PIU.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'What is the National Exam Scholarship?',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'Students who passed the high school national exam in the most recent academic year '
                          'with grades A, B, C, or D may receive varying percentages of tuition fee scholarships '
                          'based on allocated departmental quota.',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                ],
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Eligibility',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffae00),
                                  fontSize: 25.0,),
                              ),
                            ),
                            const SizedBox(height:15.0), // use this for padding
                            buildListTile('Students who passed high school national examination in the most recent academic year with grades: \n A, B, C, or D',),
                            const SizedBox(height: 10),
                            Text(
                              'Procedures',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffae00),
                                  fontSize: 25.0,),
                              ),
                            ),
                            const SizedBox(height: 10),
                            buildListTile('Specific procedures for this scholarship provision will be updated on Paragon International University Official Facebook page before the Application is Open'),
                            const SizedBox(height: 10),
                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Number of Scholarships',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                  ),
                                ),
                              )
                          ),
                          Text(
                            '* To Be Announced.',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                  ]
                  )
              ),
              SliverToBoxAdapter(
                  child: Container(
                    color: const Color(0xFF181818),
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Copyright © All Rights Reserved. 2022, PARAGON International University',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }


  Widget buildListTile(String text){
    return ListTile(
      iconColor: const Color(0xFFffae00),
      contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      leading: const Icon(FontAwesomeIcons.circleDot, size:15.0),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }


}
