import 'package:brs/subscreens/constituencyoverview.dart';
import 'package:brs/subscreens/partyleader.dart';
import 'package:brs/subscreens/userform.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _videoOne =
    Uri.parse('https://youtu.be/-9AeiFncpqo?si=SQ-gE7UGVr4Sd7oF');
final Uri _videoTwo =
    Uri.parse('https://youtu.be/RmKhURnz6hg?si=q0_UsCw4z4ba_gId');
final Uri _videoThree =
    Uri.parse('https://youtu.be/yaWdtes_M7s?si=j7Uf2ea0zVVEVPuB');
final Uri _videoFour =
    Uri.parse('https://youtu.be/IDXqAOhmaCo?si=vU1l4MTg5buLj7ng');
final Uri _videoFive =
    Uri.parse('https://youtu.be/juqxelq8138?si=Y3WUM0d8jv_IrF_a');
final Uri _videoSix =
    Uri.parse('https://youtu.be/pbpdnCVhvOk?si=c9jryHrkhG9PW04W');
final Uri _videoSeven =
    Uri.parse('https://youtu.be/c366y93-2Ks?si=hFHqJLVZKTLTLA7J');
final Uri _videoEight =
    Uri.parse('https://youtu.be/aWT9Rr5yjTA?si=Nx9y2NmPVlQQ02eS');
final Uri _videoNine =
    Uri.parse('https://youtu.be/3WkN4l43524?si=720prxY1HcZDXAYM');
final Uri _videoTen =
    Uri.parse('https://youtu.be/hx0FgEagbdo?si=9WCieEA6NjKr4Uha');

class PollingStatus extends StatefulWidget {
  const PollingStatus({super.key});

  @override
  State<PollingStatus> createState() => _PollingStatusState();
}

class _PollingStatusState extends State<PollingStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PartyLeader()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    fixedSize: const Size(200, 200),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    "Know Your MLA/MP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserForm()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    fixedSize: const Size(200, 200),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    'Poll Management',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ConstituencyOverview()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    fixedSize: const Size(200, 200),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    'Constituency Overview',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VideoScreen()));
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/whyme.jpeg',
                      // Replace with your image path
                      width: 200,
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title:
            const Text('Youtube Links', style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/one.jpeg",
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl1,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/two.jpeg",
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl2,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/three.jpeg",
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl3,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/four.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl4,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/five.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl5,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/six.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: _launchUrl6,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/seven.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl7,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/eight.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl8,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/nine.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _launchUrl9,
                    child: Container(
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Image.asset(
                        "assets/images/ten.jpeg",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_videoOne)) {
    throw Exception('Could not launch $_videoOne');
  }
}

Future<void> _launchUrl1() async {
  if (!await launchUrl(_videoTwo)) {
    throw Exception('Could not launch $_videoTwo');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_videoThree)) {
    throw Exception('Could not launch $_videoThree');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_videoFour)) {
    throw Exception('Could not launch $_videoFour');
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_videoFive)) {
    throw Exception('Could not launch $_videoFive');
  }
}

Future<void> _launchUrl5() async {
  if (!await launchUrl(_videoSix)) {
    throw Exception('Could not launch $_videoSix');
  }
}

Future<void> _launchUrl6() async {
  if (!await launchUrl(_videoSeven)) {
    throw Exception('Could not launch $_videoSeven');
  }
}

Future<void> _launchUrl7() async {
  if (!await launchUrl(_videoEight)) {
    throw Exception('Could not launch $_videoEight');
  }
}

Future<void> _launchUrl8() async {
  if (!await launchUrl(_videoNine)) {
    throw Exception('Could not launch $_videoNine');
  }
}

Future<void> _launchUrl9() async {
  if (!await launchUrl(_videoTen)) {
    throw Exception('Could not launch $_videoTen');
  }
}
