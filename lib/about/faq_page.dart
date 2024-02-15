import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color backgroundColor = theme.primaryColor;
    Color textColor = Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              color: backgroundColor,
              child: Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
            ..._buildFAQSections(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFAQSections() {
    List<Map<String, dynamic>> faqSections = [
      {
        'category': 'Application & Admission Process',
        'faqs': [
          {
            'question': 'When can I apply for admission to Paragon International University?',
            'answer': 'The admission period is announced on the university’s main website and Facebook page before the beginning of each semester. You can apply for admission to Paragon International University during one of the two intake periods:\n* First Intake (for Semester I): from July 1 to early November.\n* Second Intake (for Semester II): from early February to early March.'
          },
          {
            'question': 'Is there an entrance exam for admission to Paragon International University?',
            'answer': 'High school graduates who have successfully passed their "BAC II" exam are eligible to apply for admission to Paragon International University. There is no separate entrance exam required for admission.\n\n(COVID-19 UPDATE: Public school students who have not taken the BAC II exam, please contact our front desk.)\n\nHowever, certain study programs may require students to take a Math Placement Test to determine the appropriate level of mathematics courses they should enroll in during their freshman year.'
          },
          {
            'question': 'When can I take the Math Placement Test if it is required by my department?',
            'answer': 'The Math Placement Test is administered during the orientation week (i.e. one week before the start of the semester).'
          },
          {
            'question': 'My English is not very good. Can I still apply to study at Paragon International University?',
            'answer': 'Yes. If you are not proficient enough in the English language, you can still apply for admission to an undergraduate program at Paragon International University. In this case, you will have to take our English Proficiency Test after your enrolment to determine whether you should study in our English Preparatory Program or freshman year.'
          },
          {
            'question': 'I want to apply for a scholarship to study at Paragon International University. What should I do?',
            'answer': 'Paragon International University offers more than 400 scholarships and tuition fee discounts. \n For detailed information about the scholarship please visit the Scholarships Page'
          },
          {
            'question': 'Can I register this year and start the university next year?',
            'answer': 'Yes, you can. You just need to make the payment of the registration fee in advance, yet you don’t need to pay any tuition fee. However, please note that the maximum period of study for a 4-year degree program cannot be longer than 6 academic years.'
          },
          {
            'question': 'Can I withdraw my application?',
            'answer': 'Yes, you can do so. However, the application and registration fees are non-refundable.'
          },
          {
            'question': 'Can I apply online for admission?',
            'answer': 'You can apply online for admission or simply walk into our campus to apply. Assistance is provided for walk-in applicants. Please note that international applications are subject to approval of the registrar and the response process may take 5 working days.'
          },
          {
            'question': 'Can international students apply for admission to Paragon.U?',
            'answer': 'Yes, international students can apply and study at Paragon.U. Please see the information for international students here or find at Admission > Admission Requirements > International'
          },
          {
            'question': 'What are the admission requirements at Paragon International University?',
            'answer': 'Admission requirements and the process are explained under the Admissions page of the university website.'
          },
          {
            'question': 'When do the classes start?',
            'answer': 'In an academic year at Paragon International University, there are 2 semesters followed by a summer term. Semester I begins in early November and finishes in late February. Semester II begins in mid-March and ends in late July. For more updated information, please see Academic Calendar'
          },
        ]
      },
    ];
    return faqSections.map((section) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              section['category'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10),
            ...section['faqs'].map<Widget>((faq) {
              return FAQExpansionTile(faq: faq);
            }).toList(),
          ],
        ),
      );
    }).toList();
  }
}

class FAQExpansionTile extends StatelessWidget {
  final Map<String, String> faq;

  const FAQExpansionTile({
    super.key,
    required this.faq,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color accentColor = theme.colorScheme.secondary;

    return ExpansionTile(
      title: Text(
        faq['question']!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: accentColor,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            faq['answer']!,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
