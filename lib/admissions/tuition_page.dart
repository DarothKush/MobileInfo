import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Fee Structure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/tuitions': (context) => const TuitionPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Undergraduate Degrees'),
      ),
      body: FeesTable(),
    );
  }
}

class FeesTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        // Placeholder for your DataTable or other widgets
        Text('Your main content here'),
      ],
    );
  }
}

class TuitionPage extends StatelessWidget {
  const TuitionPage({Key? key}) : super(key: key);

  Widget createScrollableDataTable(DataTable dataTable) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: dataTable,
    );
  }

  Widget createDataTable1() {
    return createScrollableDataTable(
      DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.yellow),
        columns: const <DataColumn>[
          DataColumn(label: Text('Faculty')),
          DataColumn(label: Text('Departments')),
          DataColumn(label: Text('Fee/Semester')),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Faculty of Engineering')),
              DataCell(Text('Architecture\nCivil Engineering\nIndustrial Engineering')),
              DataCell(Text('\$2,250 USD')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Faculty of Information and Computer Technologies')),
              DataCell(Text('Computer Science\nManagement of Information Systems')),
              DataCell(Text('\$1,750 USD')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Economics and Administrative Sciences')),
              DataCell(Text('Banking and Finance,Business Administration\nInternational Trade and Logistics\nInternational Relations')),
              DataCell(Text('\$1,500 USD')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('English Preparatory School')),
              DataCell(Text('')),
              DataCell(Text('\$1,250 USD')),
            ],
          ),
          // Additional rows as needed
        ],
      ),
    );
  }

  Widget createDataTable2() {
    return createScrollableDataTable(
      DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.yellow),
        columns: const <DataColumn>[
          DataColumn(label: Text('Program')),
          DataColumn(label: Text('Fee/Semester')),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Master of Business Administration')),
              DataCell(Text('2,500 USD')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Master of Arts in International Relations')),
              DataCell(Text('2,000 USD')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('MSc in Management of Information Systems')),
              DataCell(Text('2,500 USD')),
            ],
          ),
          // Additional rows as needed
        ],
      ),
    );
  }

  Widget createDataTable3() {
    return createScrollableDataTable(
      DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.yellow),
        columns: const <DataColumn>[
          DataColumn(label: Text('Expense Type')),
          DataColumn(label: Text('Amount')),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Housing')),
              DataCell(Text('\$200 – \$300 / month')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Local Transportation')),
              DataCell(Text('\$50 – \$100 / month')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Meals')),
              DataCell(Text('\$200 – \$250 / month')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Books/school supplies')),
              DataCell(Text('\$200 / semester')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Telecommunication')),
              DataCell(Text('\$10 / month')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Personal expenses')),
              DataCell(Text('\$100 / month')),
            ],
          ),
          // Additional rows as needed
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuition Fees'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Undergraduate Degree', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            createDataTable1(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Postgraduate Programs', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            createDataTable2(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Cost of Living in Phnom Penh', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            createDataTable3(),
            // You can add more widgets here
          ],
        ),
      ),
    );
  }
}
