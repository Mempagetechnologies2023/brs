import 'dart:async';

import 'package:brs/firebase_options.dart';
import 'package:brs/splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mainscreens/SocialMedia.dart';
import 'mainscreens/homepage.dart';
import 'mainscreens/pollingstatus.dart';
import 'mainscreens/profilescreen.dart';

final Uri _url1 = Uri.parse('https://brsonline.in/history/#');
final Uri _url2 = Uri.parse('https://brsonline.in/about/timeline/');
final Uri _url3 = Uri.parse('https://brsonline.in/kcr/');
final Uri _url4 = Uri.parse('https://brsonline.in/about/organization/mps/');
final Uri _url5 =
    Uri.parse('https://brsonline.in/about/organization/mlas-and-mlcs/');
final Uri _url6 = Uri.parse('https://brsonline.in/category/articles/');
final Uri _url7 = Uri.parse('https://brsonline.in/category/photos/');
final Uri _url8 = Uri.parse('https://brsonline.in/category/videos/');
final Uri _url9 = Uri.parse('https://brsonline.in/category/songs/');
final Uri _url10 = Uri.parse('https://brsonline.in/download-digital-assets/');
final Uri _url11 = Uri.parse('https://brsonline.in/donate/');
final Uri _url12 = Uri.parse('https://brsonline.in/social-media/');
final Uri _url13 = Uri.parse('https://brsonline.in/contact/');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Timer(Duration(milliseconds: 500), () {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final List<Widget> _screens = [
    const HomePage(),
    const SocialMedia(),
    const ProfileScreen(),
    const PollingStatus(),
  ];

  int _selectedIndex = 0;

  // Function to switch the currently selected screen
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.pinkAccent,
          iconTheme: const IconThemeData(size: 30.0),
          title: const Text(
            'BHARAT RASHTRA SAMITHI',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontStyle: FontStyle.normal),
          ),
        ),
        body: _screens[_selectedIndex],
        drawer: Drawer(
          shadowColor: Colors.pink,
          backgroundColor: Colors.pinkAccent,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Image.asset(
                'assets/images/image1.jpg',
                fit: BoxFit.fitWidth,
              ),
              const ExpansionTile(
                title: Text('ABOUT'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                textColor: Colors.black,
                children: [
                  ListTile(
                    title: Text('HISTORY'),
                    onTap: _launchUrl1,
                  ),
                  ListTile(
                    title: Text('TIMELINE'),
                    onTap: _launchUrl2,
                  ),
                  ExpansionTile(
                    title: Text('LEADERSHIP'),
                    children: [
                      ListTile(
                        title: Text('KCR'),
                        onTap: _launchUrl3,
                      ),
                      ListTile(
                        title: Text('MPs'),
                        onTap: _launchUrl4,
                      ),
                      ListTile(
                        title: Text('MLAs/MLCs'),
                        onTap: _launchUrl5,
                      ),
                    ],
                  ),
                ],
                // Handle drawer item tap
              ),
              const ExpansionTile(
                title: Text("MEDIA"),
                leading: Icon(
                  Icons.mediation_outlined,
                  color: Colors.black,
                ),
                textColor: Colors.black,
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),

                children: [
                  ListTile(
                    title: Text(
                      "ARTICLES",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: _launchUrl6,
                  ),
                  ListTile(
                    title: Text("PHOTOS"),
                    onTap: _launchUrl7,
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    title: Text("VIDEOS"),
                    onTap: _launchUrl8,
                    leading: Icon(Icons.videocam_sharp),
                  ),
                  ListTile(
                    title: Text("SONGS"),
                    onTap: _launchUrl9,
                    leading: Icon(Icons.music_note),
                  ),
                ],
              ),
              const ListTile(
                title: Text('DOWNLOADS'),
                leading: Icon(
                  Icons.cloud_download_outlined,
                  color: Colors.black,
                ),
                textColor: Colors.black,
                onTap: _launchUrl10,
                // Handle drawer item tap
              ),
              const ExpansionTile(
                title: Text("GET INVOLVED"),
                leading: Icon(
                  Icons.cached,
                  color: Colors.black,
                ),
                textColor: Colors.black,
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),

                children: [
                  ListTile(
                    title: Text("DONATE"),
                    onTap: _launchUrl11,
                  ),
                  ListTile(
                    title: Text("SOCIAL MEDIA"),
                    onTap: _launchUrl12,
                  ),
                ],
              ),
              const ListTile(
                title: Text("CONTACT US"),
                onTap: _launchUrl13,
                leading: Icon(Icons.call_outlined),
              ),
              ExpansionTile(
                title: const Text('POLL FORMAT'),
                leading: const Icon(Icons.poll_outlined),
                children: [
                  ListTile(
                    title: const Text('FORMAT C-2'),
                    onTap: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PdfViewerPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('FORMAT C-7'),
                    onTap: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PdfViewerPage1(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.connect_without_contact_outlined),
              label: 'Social Media',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.where_to_vote_sharp),
              label: 'Polling Status',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

Future<bool> _onBackButtonPressed(BuildContext context) async {
  bool exitApp = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Really??"),
        content: const Text("Do you want to exit the app?"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("no"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text("yes"),
          ),
        ],
      );
    },
  );
  return exitApp ?? false;
}

class PdfViewerPage extends StatelessWidget {
  const PdfViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SfPdfViewer.asset('assets/images/format1.pdf'));
  }
}

class PdfViewerPage1 extends StatelessWidget {
  const PdfViewerPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SfPdfViewer.asset('assets/images/format2.pdf'));
  }
}

Future<void> _launchUrl1() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Could not launch $_url2');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}

Future<void> _launchUrl5() async {
  if (!await launchUrl(_url5)) {
    throw Exception('Could not launch $_url5');
  }
}

Future<void> _launchUrl6() async {
  if (!await launchUrl(_url6)) {
    throw Exception('Could not launch $_url6');
  }
}

Future<void> _launchUrl7() async {
  if (!await launchUrl(_url7)) {
    throw Exception('Could not launch $_url7');
  }
}

Future<void> _launchUrl8() async {
  if (!await launchUrl(_url8)) {
    throw Exception('Could not launch $_url8');
  }
}

Future<void> _launchUrl9() async {
  if (!await launchUrl(_url9)) {
    throw Exception('Could not launch $_url9');
  }
}

Future<void> _launchUrl10() async {
  if (!await launchUrl(_url10)) {
    throw Exception('Could not launch $_url10');
  }
}

Future<void> _launchUrl11() async {
  if (!await launchUrl(_url11)) {
    throw Exception('Could not launch $_url11');
  }
}

Future<void> _launchUrl12() async {
  if (!await launchUrl(_url12)) {
    throw Exception('Could not launch $_url12');
  }
}

Future<void> _launchUrl13() async {
  if (!await launchUrl(_url13)) {
    throw Exception('Could not launch $_url13');
  }
}
