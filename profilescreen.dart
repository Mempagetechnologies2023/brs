import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _article1 =
    Uri.parse('https://brsonline.in/kodegittha-brs-telanganaku-saatevvaru/');
final Uri _article2 =
    Uri.parse('https://brsonline.in/varthamana-charitra-heenulu/');
final Uri _article3 =
    Uri.parse('https://brsonline.in/abhivruddiki-nadaka-nerpincham/');
final Uri _stories1 = Uri.parse(
    'https://brsonline.in/%e0%b0%a4%e0%b1%86%e0%b0%b2%e0%b0%82%e0%b0%97%e0%b0%be%e0%b0%a3-%e0%b0%aa%e0%b0%bf%e0%b0%b2%e0%b1%8d%e0%b0%b2%e0%b0%b2%e0%b1%81-%e0%b0%9f%e0%b1%86%e0%b0%95%e0%b1%8d-%e0%b0%9a%e0%b0%be%e0%b0%82/');
final Uri _stories2 = Uri.parse(
    'https://brsonline.in/%e0%b0%b0%e0%b1%87%e0%b0%b5%e0%b0%82%e0%b0%a4%e0%b1%8d%e2%80%8c-%e0%b0%88%e0%b0%9f%e0%b0%b2-%e0%b0%b0%e0%b0%b9%e0%b0%b8%e0%b1%8d%e0%b0%af-%e0%b0%ad%e0%b1%87%e0%b0%9f%e0%b1%80-%e0%b0%ab%e0%b1%8a/');
final Uri _stories3 = Uri.parse(
    'https://brsonline.in/%e0%b0%ae%e0%b1%8b%e0%b0%a6%e0%b1%80%e0%b0%a8%e0%b0%bf-%e0%b0%95%e0%b1%8c%e0%b0%97%e0%b0%bf%e0%b0%b2%e0%b0%bf%e0%b0%82%e0%b0%9a%e0%b1%81%e0%b0%95%e0%b1%81%e0%b0%a8%e0%b1%8d%e0%b0%a8-%e0%b0%ac%e0%b0%82/');

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.40,
                  width: width * 1,
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/images/iconpicture.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: width * 0.01,
                  bottom: height * -0.12,
                  height: height * 0.15,
                  width: width * 0.5,
                  child: const CircleAvatar(
                    radius: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/123.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.15,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'A',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    TextSpan(
                      text: 'bout :',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ]
              ),
            ),
            Container(
              height: height * 0.45,
              width: width * 0.3,
              color: Colors.pink[300],
              padding: const EdgeInsets.only(left: 5.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Kalvakuntla Chandrashekar Rao \n',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:'\nKalvakuntla Chandrashekar Rao (born 17 February 1954), often referred to by his initials KCR, is an Indian politician serving as the first and current Chief Minister of Telangana since 2 June 2014. He is the founder and leader of the Bharat Rashtra Samithi, a state party in India. He is known for leading the Telangana movement to achieve statehood for Telangana. Previously, he served as the Union Minister of Labour and Employment from 2004 to 2006. He represents Gajwel constituency in the Legislative Assembly of Telangana. Rao took oath as the first Chief Minister of Telangana in 2014 and was re-elected for the second term in 2018',
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 0.8,
                        wordSpacing: 3.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: height * 0.10,
              thickness: 10.0,
            ),
            const Row(
              children: [
                Text(
                  'Our Articles : ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchArticle1,
                        child: Image.asset('assets/images/ktrarticle1.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchArticle2,
                        child: Image.asset(
                          'assets/images/article2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchArticle3,
                        child: Image.asset(
                          'assets/images/article3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: height * 0.10,
              thickness: 10.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Our Stories : ',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchStories1,
                        child: Image.asset('assets/images/stories1.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchArticle2,
                        child: Image.asset(
                          'assets/images/stories2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: height * 0.3,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Card(
                      color: Colors.pink[300],
                      shadowColor: Colors.pinkAccent,
                      elevation: 10,
                      child: InkWell(
                        onTap: _launchArticle3,
                        child: Image.asset(
                          'assets/images/stories3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: height * 0.10,
              thickness: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchArticle1() async {
  if (!await launchUrl(_article1)) {
    throw Exception('Could not launch $_article1');
  }
}

Future<void> _launchArticle2() async {
  if (!await launchUrl(_article2)) {
    throw Exception('Could not launch $_article2');
  }
}

Future<void> _launchArticle3() async {
  if (!await launchUrl(_article3)) {
    throw Exception('Could not launch $_article3');
  }
}

Future<void> _launchStories1() async {
  if (!await launchUrl(_stories1)) {
    throw Exception('Could not launch $_stories1');
  }
}

Future<void> _launchStories2() async {
  if (!await launchUrl(_stories2)) {
    throw Exception('Could not launch $_stories2');
  }
}

Future<void> _launchStories3() async {
  if (!await launchUrl(_stories3)) {
    throw Exception('Could not launch $_stories3');
  }
}
