import 'package:flutter/material.dart';
import 'package:infomobile/faculties/facultyOfEngineering_page.dart';

//page import
import 'about_page.dart';
import 'paragon_students_page.dart';
import 'faculties_page.dart';
import 'admissions_page.dart';
import 'partnerships_page.dart';
import 'admissions/tuition_page.dart';
import 'admissions/scholarship_page.dart';
import 'major/international_page.dart';
import 'major/postgraduate_page.dart';
import 'major/undergraduate_page.dart';

import 'paragonStudent/alumni_page.dart';
import 'paragonStudent/library_page.dart';
import 'paragonStudent/officeOfStudentService_page.dart';
import 'paragonStudent/studentCouncil_page.dart';
import 'paragonStudent/studentAmbassador_page.dart';
import 'paragonStudent/studentClub_page.dart';

import 'faculties/facultyOfEngineering_page.dart';
import 'faculties/facultyOfComputerScience_page.dart';
import 'faculties/facultyOfEconomic_page.dart';

import 'package:expandable_menu/expandable_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paragon University Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF1D7DFD),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFFA726),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
      routes: {
        '/about': (context) => const AboutPage(),
        '/students': (context) => const ParagonStudentsPage(),
        '/faculties': (context) => const FacultiesPage(),
        '/admissions': (context) => const AdmissionsPage(),
        '/partnerships': (context) => const PartnershipsPage(),
        '/tuitions': (context) => const TuitionPage(),
        '/scholarships': (context) => const ScholarshipPage(),
        '/internationals': (context) => const InternationalPage(),
        '/postgraduates': (context) => const PostgraduatePage(),
        '/undergraduates': (context) => const UndergraduatePage(),
        //paragon_student
        '/studentClubs': (context) => const StudentclubPage(),
        '/studentAmbassadors': (context) => const StudentAmbassadorPage(),
        '/studentCouncils': (context) => const StudentCouncilPage(),
        '/officeOfStudentServices': (context) => const OfficeOfStudentServicePage(),
        '/alumnis': (context) => const AlumniPage(),
        '/libraries': (context) => const LibraryPage(),

        '/facultyOfEngineering': (context) => const FacultyOfEngineeringPage(),
        '/facultyOfComputerScience': (context) => const FacultyOfComputerSciencePage(),
        '/facultyOfEconomic': (context) => const FacultyOfEconomicPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paragon International University'),
        backgroundColor: theme.primaryColor,
      ),
      drawer: const NavigationDrawer(),
      body: ListView(
        children: const <Widget>[
          ScholarshipBannerSection(),
          NewsUpdatesSection(),
          EventsSection(),
          FooterSection(),
        ],
      ),
    );
  }
}

class ScholarshipBannerSection extends StatelessWidget {
  const ScholarshipBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: theme.primaryColor,
      child: const Text(
        'GRADE BASED SCHOLARSHIP UP TO 100%',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class NewsUpdatesSection extends StatelessWidget {
  const NewsUpdatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'News & Updates',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          NewsItem(
            title: 'Paragon International University wins best university award',
            date: 'December 25, 2023',
            summary: 'Paragon International University has been recognized as the top university in the region...',
          ),
          NewsItem(
            title: 'New scholarship program for international students',
            date: 'November 12, 2023',
            summary: 'The university has announced a new scholarship program aimed at attracting top talent from around the globe...',
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String title;
  final String date;
  final String summary;

  const NewsItem({
    super.key,
    required this.title,
    required this.date,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(date),
          Text(
            summary,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class EventsSection extends StatelessWidget {
  const EventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Events',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const EventItem(
            title: 'Orientation Day 2023',
            date: '01 Jan - 08 am - 05 pm',
            location: 'Paragon International University',
          ),
          const EventItem(
            title: 'Open House 2023',
            date: '05 Feb - 08 am - 03 pm',
            location: 'Paragon International University',
          ),
          TextButton(
            onPressed: () {
            },
            child: const Text(
              'View all events →',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  final String title;
  final String date;
  final String location;

  const EventItem({
    super.key,
    required this.title,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(date),
          Text(location),
        ],
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
      color: theme.primaryColor,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
          Text(
            'Copyright © 2024 All Rights Reserved. Paragon International University',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String heading;
  final List<String> links;

  const FooterColumn({super.key, required this.heading, required this.links});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        for (var link in links) Text(link, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ExpansionTile(
            leading: const Icon(Icons.home),
            title: const Text('About'),
            childrenPadding: EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: Text(''),
              )
            ]
          ),
          ExpansionTile(
              leading: const Icon(Icons.school),
              title: const Text('Paragon Student'),
              childrenPadding: EdgeInsets.only(left:40),
              children: [
                ListTile(
                  title: Text('Student Club'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentClubs');
                  },
                ),
                ListTile(
                  title: Text('Student Ambassador'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentAmbassadors');
                  },
                ),
                ListTile(
                  title: Text('Student Council'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentCouncils');
                  },
                ),
                ListTile(
                  title: Text('Office Of Student Service'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/officeOfStudentServices');
                  },
                ),
                ListTile(
                  title: Text('Alumni'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/alumnis');
                  },
                ),
                ListTile(
                  title: Text('Library'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/libraries');
                  },
                ),
              ]
          ),
          ExpansionTile(
            leading: const Icon(Icons.book),
            title: const Text('Majors'),
            childrenPadding: EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: Text('Undergraduate'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/undergraduates');
                }
              ),
              ListTile(
                title: Text('Postgraduate'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/postgraduates');
                  }
              ),
              ListTile(
                title: Text('International'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/internationals');
                  }
              )
            ]
          ),
          ExpansionTile(
            title: Text("Faculties"),
            leading: const Icon(Icons.account_balance),
            childrenPadding: EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: const Text('Faculty Of Engineering'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/facultyOfEngineering');
                },
              ),
              ListTile(
                title: const Text('Faculty Of Computer Science'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/facultyOfComputerScience');
                },
              ),
              ListTile(
                title: const Text('Faculty Of Economic'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/facultyOfEconomic');
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Admissions"),
            leading: const Icon(Icons.how_to_reg),
            childrenPadding: EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: Text("Tuition Fees"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/tuitions');
                },
              ),
              ListTile(
                title: Text("Scholarships"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/scholarships');
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Partnerships'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/partnerships');
            },
          ),
        ],
      ),
    );
  }
}
