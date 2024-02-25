import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  _LibraryState createState() => _LibraryState();
}


class _LibraryState extends State<Library> {
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
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'University Library',
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
                    'assets/images/libraryHero.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Paragon International University Library is a comfortable, quiet place to study in. '
                        'It hosts a vast collection of books, journals and magazines related to English pedagogy, '
                        'science, technology, business, marketing, management, history, engineering, economics '
                        'and administrative science. Located on the first floor of Paragon International University, '
                        'it provides its visitors with desktop computers for academic work.',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Colors.black),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      height: 1,
                      color: const Color(0xFFffae00),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'Paragon.U Library is open to the public!',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(height: 15.0), // used as padding
                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'How to become a Member',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Color(0xFFffae00),
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            buildBullet('Fill in the application form and choose a specific membership package'),
                            buildBullet('Submit the application form to the librarian'),
                            buildBullet('Pay the membership fee and make the dposit at the financial office'),
                            buildBullet('One or two days after registering for membership, the applicant can come get his/her library member card from the librarian'),
                          ],
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      height: 1,
                      color: const Color(0xFFffae00),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Membership Package',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            MembershipTable(),
                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(top:15, right: 8),
                      child: Text(
                        '* Refundable deposit: \$50',
                        style: GoogleFonts.lato(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height:30),
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset(
                              'assets/images/libraryHero-2.jpeg',
                              fit: BoxFit.cover,
                              color: const Color(0xFF3e3e3e),
                              colorBlendMode: BlendMode.modulate,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 97),
                          child: Text(
                            '-- Opening Hours --',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFFffae00),
                              decorationThickness: 1.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5, right: 10, left: 10, top: 3),
                      child:
                      openingHoursDataTable(),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top:15, right: 10),
                      child: Text(
                        '* Closed on Sundays and National holidays',
                        style: GoogleFonts.lato(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 40),
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
}

Widget buildBullet(String text){
  return ListTile(
    leading: const Icon(FontAwesomeIcons.circleDot, size:15.0),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 13,
      ),
    ),
  );
}

Widget MembershipTable() {
  return DataTable(
    headingRowColor: MaterialStateColor.resolveWith((states) => const Color(0xFF3e3e3e)),
    columns: <DataColumn>[
      DataColumn(
        numeric: true,
        label: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '1 MONTH\n',
                  style: TextStyle(
                    color: Color(0xFFffae00),
                  ),
                ),
                TextSpan(
                  text: 'Subscription\n',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      DataColumn(
        numeric: true, // Align content to center
        label: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '6 MONTHS\n',
                  style: TextStyle(
                    color: Color(0xFFffae00),
                  ),
                ),
                TextSpan(
                  text: 'Subscription\n',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      DataColumn(
        numeric: true, // Align content to center
        label: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '1 YEAR\n',
                  style: TextStyle(
                    color: Color(0xFFffae00),
                  ),
                ),
                TextSpan(
                  text: 'Subscription\n',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
    rows: const <DataRow>[
      DataRow(cells: <DataCell>[
        DataCell(
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '\$10',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ),
        DataCell(
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '\$50',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ),
        DataCell(
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '\$80',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ),
      ]),
    ],
  );
}


Widget openingHoursDataTable() {
  return DataTable(
    headingRowColor: MaterialStateColor.resolveWith((states) => const Color(0xFF2d374e)),
    columnSpacing: 20.0,
    columns: const [
      DataColumn(
          label: Text(
            'Day',
            style: TextStyle(
              color: Color(0xFFffae00),
            ),
          )
      ),
      DataColumn(label: Text(
        'Opening Time',
        style: TextStyle(
          color: Color(0xFFffae00),
        ),
      )),
      DataColumn(label: Text(
        'Closing Time',
        style: TextStyle(
          color: Color(0xFFffae00),
        ),
      )),
    ],
    rows: const [
      DataRow(cells: [
        DataCell(Text('Monday - Friday')),
        DataCell(Text('7:30 AM')),
        DataCell(Text('17:00 PM')),
      ]),
      DataRow(cells: [
        DataCell(Text('Saturday')),
        DataCell(Text('8:00 AM')),
        DataCell(Text('17:00 PM')),
      ]),
      DataRow(cells: [
        DataCell(Text('Sunday')),
        DataCell(Text('Closed')),
        DataCell(Text('Closed')),
      ]),
    ],
  );
}
