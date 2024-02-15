import 'package:flutter/material.dart';


class ScholarshipPage extends StatefulWidget {
  const ScholarshipPage({super.key});

  @override
  _ScholarshipMainPageState createState() => _ScholarshipMainPageState();
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Image.asset(
        'assets/images/scholarships-bg.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class _ScholarshipMainPageState extends State<ScholarshipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            expandedHeight: 200.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/demoMain');
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Scholarships',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFFffae00),
                    decorationThickness: 1.0,
                  ),
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 80.0),
              background: Image.asset(
                'assets/images/scholarships-bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xFF1b2945), // PIU Blue
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Paragon International University offers scholarships to students enrolling in undergraduate and graduate programs. The scholarships provided are tuition fee scholarships which will cover full years of the studies programs. Transfer students are not eligible to apply for scholarships. Please, read the information below for the types of scholarships, eligibility, and procedures.',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: const Color(0xFF1b2945),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/ParagonUScholarship');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color(0xFFffae00),
                        ),
                        child: const Text(
                          'Paragon.U Scholarships',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0xFF1b2945),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFF1b2945),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/PartnershipScholarship');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color(0xFFffae00),
                        ),
                        child: const Text(
                          'Partnership Scholarships',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0xFF1b2945),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFF1b2945),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/NationalOlympiadScholarship');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color(0xFFffae00),
                        ),
                        child: const Text(
                          'National Olympiads Scholarships',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0xFF1b2945),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFF1b2945),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/NationalExamScholarship');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color(0xFFffae00),
                        ),
                        child: const Text(
                          'Scholarships based on National Exam Grade',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0xFF1b2945),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xFF181818),
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Copyright © All Rights Reserved. 2022, PARAGON International University',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
