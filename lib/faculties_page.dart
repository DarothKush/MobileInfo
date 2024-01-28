import 'package:flutter/material.dart';

class FacultiesPage extends StatelessWidget {
  const FacultiesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculties'),
      ),
      body: const Center(
        child: Text('Information about the faculties at Paragon University.'),
      ),
    );
  }
}
