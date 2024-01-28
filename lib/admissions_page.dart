import 'package:flutter/material.dart';

class AdmissionsPage extends StatelessWidget {
  const AdmissionsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admissions'),
      ),
      body: const Center(
        child: Text('Admissions process and requirements for Paragon University.'),
      ),
    );
  }
}
