import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          "History",
          style: TextStyle(color: Colors.white),
          ),
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        backgroundColor: const Color.fromARGB(255, 18, 53, 180),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Heading
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'THE HISTORY OF PARAGON INTERNATIONAL UNIVERSITY',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Paragraph
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Paragon International University (formerly known as Zaman University) was tion, International Trade and Logistics, and Political Science and International Relations.',
                  style: TextStyle(fontSize: 16.0),
                  

                ),
              ),

              //Image
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/organizational-chart-piu.jpg', // Replace with your image URL
                  width: 200.0, // Adjust the width as needed
                  height: 200.0, // Adjust the height as needed
                  fit: BoxFit.cover, // Adjust the BoxFit property as needed
                ),
              ),
            ],
          ),
        ),
      ),

  );
}
}







