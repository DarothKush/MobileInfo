import 'package:flutter/material.dart';
import 'history_page.dart';


class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  RegExp get _emailRegex => RegExp(r'^[^@\s]+@[^@\s\.]+\.[^@\.\s]+$');
  final _formKey = GlobalKey<FormState>();
  String? selectedOption; // Make selectedOption nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jobs@Paragon",
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
          child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Color(0xFFe6e6e6), // Set the background color to gray for this row
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Paragon International University is looking for part-time instructors (please indicate your availability for a full-time position, so we can contact you when there is a full-time vacancy) in various fields for the Academic Year 2023-2024. Interested candidates can apply to ohr@paragoniu.edu.kh and CC the relevant faculty e-mail address. The e-mail should contain the cover letter in the text and CV as an attachment. Please check the list of courses offered at our undergraduate and postgraduate programs available on the website.",
                      style: TextStyle(color: Colors.black), // Set text color to white for better visibility
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'DEVELOPER (ERP)',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("The ERP and Web Development Office at Paragon International University is seeking a developer to join a dynamic team. The team is currently developing an ERP system for the University and this provides extensive opportunity to learn and grow professionally.")
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/developer1.PNG', // Replace with your image URL
                    width: 350.0, // Adjust the width as needed
                    height: 350.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/developer2.PNG', // Replace with your image URL
                    width: 350.0, // Adjust the width as needed
                    height: 350.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/developer3.PNG', // Replace with your image URL
                    width: 350.0, // Adjust the width as needed
                    height: 350.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Interested individuals should send their CV to ohr@paragoniu.edu.kh.Please note that applicants not meeting the “must-have” requirements above will not be considered.")
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/PIU.jpg'), // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                  ), // Set the background color to #e6e6e6
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          "PHYSICS LECTURER",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ), // Set text color to black for better visibility
                        ),
                        SizedBox(height: 10), // Add spacing between text widgets
                        Text(
                          "The Faculty of Engineering at Paragon International University is looking for an instructor to teach Physics courses full-time or part-time. If you are passionate about sharing your knowledge with motivated students, have a master’s or doctorate degree from a recognized university, join our team. We are open to applications from candidates, who can commit several hours a week for preparation, lecturing, and feedback to students. Our team will provide guidance on syllabus design, teaching methodology, use of LMS, and assessment",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                          "Paragon.U provides a competitive salary and other benefits.To apply, send your CV and short cover letter to ohr@paragoniu.edu.kh",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 40,),
                        Text(
                          "MATHEMATICS LECTURER",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ), // Set text color to black for better visibility
                        ),
                        SizedBox(height: 10), // Add spacing between text widgets
                        Text(
                          "Paragon International University is looking for an instructor to teach Mathematics courses full-time or part-time. If you are passionate about sharing your knowledge with motivated students, have a master’s or doctorate degree from a recognized university, join our team. We are open to applications from candidates, who can join us full-time or who can commit several hours a week for preparation, lecturing, and feedback to students. Our team will provide guidance on syllabus design, teaching methodology, use of LMS, and assessment.",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                          "Paragon.U provides a competitive salary and other benefits.To apply, send your CV and short cover letter to ohr@paragoniu.edu.kh",
                          style: TextStyle(color: Colors.white),
                        ),
                        // Add more Text widgets as needed
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Color(0xFFFFF3DA), // Set the background color to gray
                    child: Padding(
                      padding: const EdgeInsets.all(15), // Adjust the internal padding as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.adjust, // Replace with your desired icon
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "LECTURER FOR FOUNDATION PROGRAM",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10), // Add spacing between text widgets
                          Text(
                            "Paragon International University is seeking qualified part-time instructors to deliver the UK NCC Level 3 International Foundation Diploma for Higher Education Studies (IFD) at our new International Foundation Center Cambodia (IFCC), located on campus at Paragon International University in St 315, Toul Kork, Phnom Penh. www.ifccedu.com",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Applicants should hold at least a Bachelor’s Degree in English, Mathematics, Computer Science, Business Management, Economics or Accounting and be qualified to teach English with a recognized TEFL, TESOL or CELTA certificate.",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "To apply for a position, please submit a CV or Resume with a cover letter indicating motivation and experience relevant to the role of English Foundation Instructor to ohr@paragoniu.edu.kh",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "For further information please contact the IFCC Coordinator Gin Wilcox at twilcox@paragoniu.edu.kh.",
                            style: TextStyle(color: Colors.black),
                          ),
                          // Add more Text widgets as needed
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 226, 230, 231), // Set the background color
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Table(
                            defaultColumnWidth: FlexColumnWidth(1.0), // Set equal width for both columns
                            border: TableBorder.all(color: Colors.grey), // Add borders to all cells
                            children: [
                              TableRow(
                                decoration: BoxDecoration(color: Color.fromARGB(255, 239, 162, 60)), // Background color for the first row
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ), // Empty cell for the second column in the title row
                                  ),
                                ],
                              ),
                              // Add more rows as needed
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty of Economics and Administrative Sciences',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'eas@paragoniu.edu.kh',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty of Engineering',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'engineering@paragoniu.edu.kh',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty of Information and Computer Technologies',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'ict@paragoniu.edu.kh',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty of Mathematics and Science',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'fms@paragoniu.edu.kh',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'Faculty of Arts, Humanities and Languages',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0), // Add padding to the column
                                        child: Text(
                                          'ahl@paragoniu.edu.kh',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Add more rows as needed
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                const Text(
                  "Job Application",
                  style: TextStyle
                      (
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Color.fromARGB(255, 132, 127, 127), // Set the background color to gray
                    child: Padding(
                      padding: const EdgeInsets.all(15), // Adjust the internal padding as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextFormField(
                              validator: (name) {
                                if(name == null || name.isEmpty){
                                  return "Please Enter Something";
                                }
                                return null;
                              },
                              decoration: InputDecoration
                                  ( 
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      
                                    ),
                                    labelText: 'Full Name',
                                    hintText: 'Enter Your Full Name',
                                  ),
                            ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextFormField(
                              validator: (email){
                                if(email == null || email.isEmpty || !_emailRegex.hasMatch(email)){
                                  return "Email must contain @";
                                }
                                return null;
                              },
                              decoration: InputDecoration
                                  ( 
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    labelText: 'Email',
                                    hintText: 'Enter Your Email',
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const History()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text(
                              "Upload CV",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),             
                        const SizedBox(height: 20,),
                        Text('Role: $selectedOption'),
                        const SizedBox(width: 10.0), // Add space between text and DropdownButton
                        DropdownButton<String>(
                          value: selectedOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOption = newValue!;
                            });
                          },
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Option 1',
                              child: Text('Option 1'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Option 2',
                              child: Text('Option 2'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Option 3',
                              child: Text('Option 3'),
                            ),
                          ],
                        ),
    // OutlinedButton
                        const SizedBox(height: 10,), // Add space between DropdownButton and OutlinedButton
                        ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const History())
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Set border radius for the elevated button
                          ),
                          backgroundColor: Colors.green, // Set background color for the elevated button
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.black),
                        )
                        ),
                        ],
                      ),
                    ),
                  ),
                ),
          ]),
          )
        )
        ),
      ),

  );
}
}


