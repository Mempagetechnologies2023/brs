import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _facebookMain = Uri.parse('https://www.facebook.com/BRSParty/');
final Uri _instagramMain =
    Uri.parse('https://www.instagram.com/brsparty/?hl=en');
final Uri _twitterMain = Uri.parse('https://twitter.com/BRSparty');

final Uri facebook1 = Uri.parse(
    'https://www.facebook.com/photo/?fbid=846753033475823&set=a.549132639904532');
final Uri facebook2 = Uri.parse(
    'https://www.facebook.com/photo/?fbid=846735560144237&set=a.549132639904532');
final Uri facebook3 = Uri.parse(
    'https://www.facebook.com/photo/?fbid=846661940151599&set=pcb.846662190151574');

final Uri insta1 = Uri.parse(
    'https://www.instagram.com/p/CvJMqJVSos7/?igshid=MzRlODBiNWFlZA%3D%3D');
final Uri insta2 = Uri.parse(
    'https://www.instagram.com/p/CvHKTjLo3qQ/?igshid=MzRlODBiNWFlZA%3D%3D');
final Uri insta3 = Uri.parse(
    'https://www.instagram.com/p/CvE3tE-oszV/?igshid=MzRlODBiNWFlZA%3D%3D');

final Uri twitter1 =
    Uri.parse('https://twitter.com/BRSparty/status/1683418299789352961');
final Uri twitter2 =
    Uri.parse('https://twitter.com/talasani_sai/status/1683413197750145026');
final Uri twitter3 = Uri.parse(
    'https://twitter.com/BRSparty/status/1683365322378694657/photo/1');

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    const Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: _launchFacebookMain,
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        height: height * 0.05,
                        child: Image.asset(
                          'assets/images/facebook.png',
                        ),
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
                            onTap: _launch1fb,
                            child: Image.asset('assets/images/facebook1.jpg'),
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
                            onTap: _launch2fb,
                            child: Image.asset('assets/images/facebook2.jpg'),
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
                            onTap: _launch3fb,
                            child: Image.asset('assets/images/facebook3.jpg'),
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
                Row(
                  children: [
                    const Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: _launchInstagramMain,
                      child: SizedBox(
                        height: height * 0.05,
                        child: Image.asset(
                          'assets/images/instagramcopy.png',
                        ),
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
                            onTap: _launch1insta,
                            child: Image.asset('assets/images/instafirst.jpeg'),
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
                          shadowColor: Colors.blue,
                          elevation: 10,
                          child: InkWell(
                            onTap: _launch2insta,
                            child:
                                Image.asset('assets/images/instasecond.jpeg'),
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
                          elevation: 10,
                          color: Colors.pink[300],
                          shadowColor: Colors.blue,
                          child: InkWell(
                            onTap: _launch3insta,
                            child: Image.asset('assets/images/instathird.jpeg'),
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
                Row(
                  children: [
                    const Text(
                      'Twitter',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: _launchTwitterMain,
                      child: SizedBox(
                        height: height * 0.05,
                        child: Image.asset(
                          'assets/images/twittercopy.png',
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: height * 0.3,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Card(
                          color: Colors.pink[300],
                          shadowColor: Colors.blue,
                          elevation: 10,
                          child: InkWell(
                            onTap: _launch1tw,
                            child: Image.asset('assets/images/twitter.jpeg'),
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
                          shadowColor: Colors.blue,
                          elevation: 10,
                          child: InkWell(
                            onTap: _launch2tw,
                            child: Image.asset('assets/images/twitter1.jpeg'),
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
                          shadowColor: Colors.blue,
                          elevation: 10,
                          child: InkWell(
                            onTap: _launch3tw,
                            child: Image.asset('assets/images/twitter2.jpeg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchFacebookMain() async {
  if (!await launchUrl(_facebookMain)) {
    throw Exception('Could not launch $_facebookMain');
  }
}

Future<void> _launchInstagramMain() async {
  if (!await launchUrl(_instagramMain)) {
    throw Exception('Could not launch $_instagramMain');
  }
}

Future<void> _launchTwitterMain() async {
  if (!await launchUrl(_twitterMain)) {
    throw Exception('Could not launch $_twitterMain');
  }
}

Future<void> _launch1fb() async {
  if (!await launchUrl(facebook1)) {
    throw Exception('Could not launch $facebook1');
  }
}

Future<void> _launch2fb() async {
  if (!await launchUrl(facebook2)) {
    throw Exception('Could not launch $facebook2');
  }
}

Future<void> _launch3fb() async {
  if (!await launchUrl(facebook3)) {
    throw Exception('Could not launch $facebook3');
  }
}

Future<void> _launch1tw() async {
  if (!await launchUrl(twitter1)) {
    throw Exception('Could not launch $twitter1');
  }
}

Future<void> _launch2tw() async {
  if (!await launchUrl(twitter2)) {
    throw Exception('Could not launch $twitter2');
  }
}

Future<void> _launch3tw() async {
  if (!await launchUrl(twitter3)) {
    throw Exception('Could not launch $twitter3');
  }
}

Future<void> _launch1insta() async {
  if (!await launchUrl(insta1)) {
    throw Exception('Could not launch $insta1');
  }
}

Future<void> _launch2insta() async {
  if (!await launchUrl(insta2)) {
    throw Exception('Could not launch $insta2');
  }
}

Future<void> _launch3insta() async {
  if (!await launchUrl(insta3)) {
    throw Exception('Could not launch $insta3');
  }
}
