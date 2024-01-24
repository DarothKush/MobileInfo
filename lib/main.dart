import 'package:flutter/material.dart';
import 'about_page.dart';
import 'paragon_students_page.dart';
import 'majors_page.dart';
import 'faculties_page.dart';
import 'admissions_page.dart';
import 'partnerships_page.dart';

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
        '/majors': (context) => const MajorsPage(),
        '/faculties': (context) => const FacultiesPage(),
        '/admissions': (context) => const AdmissionsPage(),
        '/partnerships': (context) => const PartnershipsPage(),
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
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('About'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Paragon Students'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/students');
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Majors'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/majors');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance),
            title: const Text('Faculties'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/faculties');
            },
          ),
          ListTile(
            leading: const Icon(Icons.how_to_reg),
            title: const Text('Admissions'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/admissions');
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Partnerships'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/partnerships');
            },
          )
        ],
      ),
    );
  }
}
