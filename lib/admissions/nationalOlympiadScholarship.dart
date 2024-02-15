import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NationalOlympiad extends StatefulWidget {
  const NationalOlympiad({super.key});

  @override
  _NationalOlympiadState createState() => _NationalOlympiadState();
}


class _NationalOlympiadState extends State<NationalOlympiad> {
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
                      'National Olympiad \nScholarships',
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
                    'assets/images/aboutbg3.png',
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
                            'What is the National Olympiad Scholarship?',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'Students who passed the high school national exam and are awardees of the National Academic '
                          'Olympiads ranked from \n 1 – 10 for Math, Physics, and Khmer Literature categories in the most '
                          'recent academic year are eligible to receive a full tuition fee scholarship from Paragon '
                          'International University.',
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
                            buildListTile('National Academic Olympiads ranked from 1 – 10 for subjects including Math, Physics, and Khmer Literature',),
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
                            buildListTile('Provide Proof of the National Academic Olympiads Award to our Staff'),
                            buildListTile('Start the enrollment processes'),
                            const SizedBox(height: 5),
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
                    const SizedBox(height: 50),
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
