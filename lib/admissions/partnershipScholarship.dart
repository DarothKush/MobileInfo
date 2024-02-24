import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Partnership extends StatefulWidget {
  const Partnership({super.key});

  @override
  _PartnershipState createState() => _PartnershipState();
}


class _PartnershipState extends State<Partnership> {
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
                      'Partnership \nScholarships',
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
                    'assets/images/partnership.jpeg',
                    fit: BoxFit.cover,
                    color: const Color(0xFF445a75),
                    colorBlendMode: BlendMode.modulate,
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
                            'What is Partnership Scholarship?',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Text(
                          'Students who have graduated or will graduate from one of our partner high schools'
                          'are eligible to apply for our Partnership Scholarship. Number of scholarships, '
                          'terms and conditions, and Scholarships form and registration could be found at your '
                          'school’s administrator. Partners of Paragon.U are Paragon International School, '
                          'NTC Group, SIS International School, and The Westline School.',
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
                            const SizedBox(height:15.0), // used as padding
                            buildListTile('A registered student and has graduated from one of the high school partners of ParagonU',),
                            buildListTile('Be selected and nominated by one of the high school partners of ParagonU'),
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
                            buildListTile('Apply for ParagonU Partnership Scholarship at your high school'),
                            buildListTile('Start the Enrollment Procedure at ParagonU after your name has been selected and nominated to ParagonU'),
                            const SizedBox(height: 5),
                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              'Scholarship provision is upon agreement between ParagonU and high  '
                              'school partners (including Paragon International School, NTC Group, '
                              'SIS International School, and The Westline Education)',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: Colors.black),
                              ),
                              textAlign: TextAlign.justify,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
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
