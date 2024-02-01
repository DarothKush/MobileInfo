import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Partner {
  final String name;
  final String description;
  final String websiteUrl;
  final String facebookUrl;

  const Partner({
    required this.name,
    required this.description,
    required this.websiteUrl,
    required this.facebookUrl,
  });
}

class IndustrialPartnersPage extends StatelessWidget {
  final List<Partner> industrialPartners = [
    const Partner(
      name: 'Chip Mong Insee',
      description:
      'Chip Mong Insee Cement Corporation, registered in Cambodia and established in late 2015, is a joint venture company between Chip Mong Group and Siam City from Thailand. Chip Mong Insee is a limited liability company incorporated under the laws of the Kingdom of Cambodia and is having a registered address 1208, Yothapol Khemarak Phoumin, Street Blvd #271, Phnom Penh.',
      websiteUrl: 'https://chipmonginsee.com',
      facebookUrl: 'https://facebook.com/chipmonginsee',
    ),
    const Partner(
      name: 'Brown Coffee and Bakery',
      description:
      'Brown Coffee and Bakery Co., LTD is a company incorporate in Cambodia with its principle business offices located at #25, street 294 corner 57, Sangkat Boeung Keng Kang I, Khan Boeung Keng Kang, Phnom Penh, Kingdom of Cambodia.',
      websiteUrl: 'https://browncoffee.com.kh',
      facebookUrl: 'https://facebook.com/browncoffeebakery',
    ),
    const Partner(
      name: 'Smart',
      description:
      'Smart Axiata Co., Ltd, is a Cambodia’s telecommunications service provider, and incorporated under the laws of Cambodia, having its registered office at No. 464A, Monivong Blvd., Sangkat Tonle Bassac, Khan Chamkarmon, Phnom Penh.',
      websiteUrl: 'https://smart.com.kh',
      facebookUrl: 'https://facebook.com/smartaxiata',
    ),
    const Partner(
      name: 'Prudential',
      description:
      'Prudential (Cambodia) Life Assurance PLC began operations in January 2013. By providing tailored life insurance solutions to individual families, Cambodia will need one office located at UX Tower, Phnom Penh.',
      websiteUrl: 'https://prudential.com.kh',
      facebookUrl: 'https://facebook.com/prudentialcambodia',
    ),
    const Partner(
      name: 'Emerging Markets Consulting',
      description:
      'Emerging Markets Consulting is a consulting and investment advisory firm in Cambodia, Myanmar, and Lao PDR. Located on 2nd Floor, #5, Street 516 corner 317, Sangkat Boeung Keng I, Khan Tuol Kork, Phnom Penh, Kingdom of Cambodia.',
      websiteUrl: 'https://emergingmarketsconsulting.com',
      facebookUrl: 'https://facebook.com/emergingmarketsconsulting',
    ),
    const Partner(
      name: 'Union Commercial Bank',
      description:
      'Union Commercial Bank PLC, is one of the leading commercial banks in Cambodia’s private financial sector under the laws of Cambodia with its head office located at E5T Tower, building #44, Preah Monivong Blvd, Sangkat Boeung Prueit, Khan Prampir Meakkakra, Phnom Penh.',
      websiteUrl: 'https://ucb.com.kh',
      facebookUrl: 'https://facebook.com/unioncommercialbank',
    ),
  ];

  IndustrialPartnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Industrial Partners'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: industrialPartners.length,
        itemBuilder: (context, index) {
          final partner = industrialPartners[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    partner.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(partner.description),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => _launchURL(partner.websiteUrl),
                        child: const Text('Website'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () => _launchURL(partner.facebookUrl),
                        child: const Text('Facebook'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}