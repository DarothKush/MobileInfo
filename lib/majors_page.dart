import 'package:flutter/material.dart';

class MajorsPage extends StatelessWidget {
  const MajorsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Majors'),
      ),
      body: const Center(
        child: Text('Information about available majors at Paragon University.'),
      ),
    );
  }
}
