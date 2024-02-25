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
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Formerly Zaman University (Khmer: សាកលវិទ្យាល័យហ្សាម៉ាន់) from 2010 to 2018, is a private university located in Phnom Penh, Cambodia. The university is accredited by the Royal Government of Cambodia and the Accreditation Committee of Cambodia (ACC). \n \nAt Paragon International University, the programs are taught in English.  \n \nThe university was founded in 2010 by Ali Kokten, the former chairman of Zaman International School.  \n \nCurrently, Paragon International School has three campuses: nursery and kindergarten, primary school, and high school.  \n \nParagon.U has eleven departments, divided into five faculties: \nFaculty of Engineering  \nFaculty of Information and Computer Technologies \nFaculty of Economics and Administrative Sciences, \nFaculty of Arts, Humanities and Languages, and \nFaculty of Mathematics and Sciences. \n \nIn 2019 Paragon.U opened the School of Graduate Studies, which offers three master programs: \nMaster of Business Administration (MBA), \nMaster of Arts in International Relations, and \nMaster of Science in Management of Information Systems. \n \nAll the undergraduate and graduate degrees are officially recognized by the Cambodian Ministry of Education, Youth and Sport (MoEYS).',
                  style: TextStyle(fontSize: 16.0),
                  

                ),
              ),

              //Image
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'assets/images/piu.PNG', // Replace with your image URL
                  width: 350.0, // Adjust the width as needed
                  height: 350.0, // Adjust the height as needed
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







