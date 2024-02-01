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
          child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/paragonlogo1.png'),
                    radius: 120,
                  ),
                const SizedBox(height: 20,),
                const Text(
                  "Job Application",
                  style: TextStyle
                      (
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                  ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    validator: (name) {
                      if(name == null || name.isEmpty){
                        return "Please Enter Something";
                      }
                      return null;
                    },
                    decoration: const InputDecoration
                        ( 
                          border: OutlineInputBorder(),
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
                    decoration: const InputDecoration
                        ( 
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                        ),
                  ),
                ),
              
              Text('Selected Option: $selectedOption'),
              const SizedBox(height: 20.0),
              DropdownButton<String>(
                value: selectedOption,
                onChanged: (String? newValue) { // Update parameter to String?
                  setState(() {
                    selectedOption = newValue;
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

              OutlinedButton(
              onPressed: (){
                Navigator.push
                    (
                      context, 
                      MaterialPageRoute(builder: (context) => const History())
                    );
              }, 
              child: const Text("Upload File")
              ),
              ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const History())
                  );
                }
              },
              child: const Text("Submit")
              ),
            
          ]),
          )
        )
        ),
      ),

  );
}
}