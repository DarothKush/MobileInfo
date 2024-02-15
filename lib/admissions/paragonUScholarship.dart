import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ParagonUScholarship extends StatefulWidget {
  const ParagonUScholarship({super.key});

  @override
  _ParagonUScholarshipState createState() => _ParagonUScholarshipState();
}


class _ParagonUScholarshipState extends State<ParagonUScholarship> {
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
                      'Paragon U. \nScholarships',
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
                    'assets/images/PUIAbove.jpeg',
                    fit: BoxFit.cover,
                    color: const Color(0xFF2d3b54),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Students who passed the high school national exam from any academic year or will take it this year can '
                    'apply for the Paragon International University Scholarship Examination. '
                    'The Scholarship Examination for the 2023 intake will be conducted online on October 7, 2023.',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
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
                          buildBullet(
                            'Students who passed the high school examination or will take it this year',
                          ),
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
                          buildBullet('Fill out the Scholarship Exam Application Form before the deadline.'),
                          buildBullet('Pay the Exam fee'),
                          buildBullet('Check your name on the Scholarship Exam Applicant\'s list'),
                          buildBullet('Take the exam online on the specified date.'),
                          const SizedBox(height: 5),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        '* Shortlisted candidates will be contacted for an interview by the Reviewing Committee.',
                        style: GoogleFonts.lato(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 30, left: 15),
                      child: Text(
                        'Number of Scholarships',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.yellow,  // divider color not working yet
                        ),
                        child: createDataTable(),
                      )
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


  Widget buildBullet(String text){
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

  Widget createDataTable(){
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
              'Tuition Fee Coverage',
            style: TextStyle(
              color: Color(0xFFffae00),
            ),
          ),
        ),
        DataColumn(
          label: Text(
              'Number of Awards',
            style: TextStyle(
              color: Color(0xFFffae00),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(
            Center(child: Text('100%')),
          ),
          DataCell(
            Center(child: Text('25')),
          ),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(
            Center(child: Text('75%')),
          ),
          DataCell(
            Center(child: Text('65')),
          ),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(
            Center(child: Text('50%')),
          ),
          DataCell(
            Center(child: Text('200')),
          ),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(
            Center(child: Text('100%')),
          ),
          DataCell(
            Center(child: Text('225')),
          ),
        ]),
      ],
    );
  }
}
