import 'package:flutter/material.dart';

class ParagonStudentsPage extends StatelessWidget {
  const ParagonStudentsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paragon Students'),
      ),
      body: const Center(
        child: Text('Information for Paragon University students.'),
      ),
    );
  }
}
