import 'package:flutter/material.dart';

import 'admissions/tuition_page.dart';
import 'admissions/scholarship_page.dart';
import 'admissions/admissions_page.dart';

import 'prospectiveStudents/international_page.dart';
import 'prospectiveStudents/postgraduate_page.dart';
import 'prospectiveStudents/undergraduate_page.dart';

import 'paragonStudents/alumni_page.dart';
import 'paragonStudents/library_page.dart';
import 'paragonStudents/studentServices_page.dart';
import 'paragonStudents/studentCouncil_page.dart';
import 'paragonStudents/studentAmbassador_page.dart';
import 'paragonStudents/studentClub_page.dart';

import 'about/faq_page.dart';
import 'about/calender_page.dart';
import 'about/history_page.dart';
import 'about/job_page.dart';
import 'about/organizationalChart_page.dart';

import 'partnerships/university_partners_page.dart';
import 'partnerships/industrial_partners_page.dart';

import 'academics/facultyOfEngineering_page.dart';
import 'academics/facultyOfComputerScience_page.dart';
import 'academics/facultyOfEconomic_page.dart';


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
        '/tuition': (context) => const TuitionPage(),
        '/scholarships': (context) => const ScholarshipPage(),
        '/admissions': (context) => const AdmissionPage(),

        '/internationals': (context) => const InternationalPage(),
        '/postgraduates': (context) => const PostgraduatePage(),
        '/undergraduates': (context) => const UndergraduatePage(),

        '/studentClubs': (context) => const StudentClubs(),
        '/studentAmbassadors': (context) => const StudentAmbassador(),
        '/studentCouncils': (context) => const StudentCouncil(),
        '/officeOfStudentServices': (context) => const StudentServices(),
        '/libraries': (context) => const Library(),
        '/alumni': (context) => const AlumniPage(),

        '/industrialPartners': (context) => IndustrialPartnersPage(),
        '/universityPartners': (context) => UniversityPartnersPage(),

        '/faq': (context) => const FAQPage(),
        '/calender': (context) => const Calender(),
        '/history': (context) => const History(),
        '/job': (context) => const Job(),
        '/organizationalChart': (context) => const Chart(),

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
            childrenPadding: const EdgeInsets.only(left:40),
              children: [
                ListTile(
                  title: const Text('FAQ'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/faq');
                  },
                ),
                ListTile(
                  title: const Text('History'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/history');
                  },
                ),
                ListTile(
                  title: const Text('Calender'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/calender');
                  },
                ),
                ListTile(
                  title: const Text('Jobs@Paragon'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/job');
                  },
                ),
                ListTile(
                  title: const Text('Organizational Chart'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/organizationalChart');
                  },
                ),
            ]
          ),
          ExpansionTile(
              leading: const Icon(Icons.school),
              title: const Text('Paragon Student'),
              childrenPadding: const EdgeInsets.only(left:40),
              children: [
                ListTile(
                  title: const Text('Library'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/libraries');
                  },
                ),
                ListTile(
                  title: const Text('Student Club'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentClubs');
                  },
                ),
                ListTile(
                  title: const Text('Student Council'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentCouncils');
                  },
                ),
                ListTile(
                  title: const Text('Student Ambassador'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/studentAmbassadors');
                  },
                ),
                ListTile(
                  title: const Text('Office Of Student Service'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/officeOfStudentServices');
                  },
                ),
                ListTile(
                  title: const Text('Alumni'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/alumni');
                  },
                ),
              ]
          ),
          ExpansionTile(
            leading: const Icon(Icons.book),
            title: const Text('Prospective Students'),
            childrenPadding: const EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: const Text('Undergraduate'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/undergraduates');
                }
              ),
              ListTile(
                title: const Text('Postgraduate'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/postgraduates');
                  }
              ),
              ListTile(
                title: const Text('International'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/internationals');
                  }
              )
            ]
          ),
          ExpansionTile(
            title: const Text('Academics'),
            leading: const Icon(Icons.account_balance),
            childrenPadding: const EdgeInsets.only(left:40),
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
            title: const Text("Admissions"),
            leading: const Icon(Icons.how_to_reg),
            childrenPadding: const EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: const Text("Tuition Fees"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/tuition');
                },
              ),
              ListTile(
                title: const Text("Scholarships"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/scholarships');
                },
              ),
              ListTile(
                title: const Text("Admission Requirements"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/admissions');
                },
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("Partnerships"),
            leading: const Icon(Icons.people),
            childrenPadding: const EdgeInsets.only(left:40),
            children: [
              ListTile(
                title: const Text("Partner Universities"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/universityPartners');
                },
              ),
              ListTile(
                title: const Text("Industrial Partners"),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/industrialPartners');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
