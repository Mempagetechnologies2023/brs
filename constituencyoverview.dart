import 'package:flutter/material.dart';

import '../pages/constituencyresult.dart';

class ConstituencyOverview extends StatefulWidget {
  const ConstituencyOverview({super.key});

  @override
  State<ConstituencyOverview> createState() => _ConstituencyOverviewState();
}

class _ConstituencyOverviewState extends State<ConstituencyOverview> {
  String? selectedDistrict;
  String? selectedConstituency;

  List<String> districts = [
    'RAJANNA SIRCILLA',
    'SIDDIPET',
  ];
  Map<String, List<String>> constituencies = {
    'RAJANNA SIRCILLA': ['Vemulawada', 'Sircilla'],
    'SIDDIPET': ['Dubbak', 'Gajwel', 'Husnabad', 'Siddipet'],
  };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {
    'RAJANNA SIRCILLA-Sircilla': {
      'content': {
        'title': 'RAJANNA SIRCILLA',
        'imageTitle' : 'assets/images/sircillamap.jpg',
        'heading' : 'About:',
        'about': 'The name Sircilla is derived from sirishala(meaning centre of wealth).It is a town and the district headquarters of Rajanna Sircilla district in the Indian state of Telangana.It is located onthe banks of Maneru River in the Sircilla mandal of the Sircilla revenue division.It is popularly known as Textile town due to the presence of large number of power looms,textile processing and dyeing units '
            'Civic Administration :Sircilla Municipality was constituted in 1952 and is now classified as a first-grade municipality(As per G.O.No 50. Dt:08-03-2018)with 34 election wards.The jurisdiction of the civic body is spread over an area of 55.47 Sq.Km Merged Villages as per G.O.Ms.No.93,Dt:18-04-2018.'
            'Sircilla is located at 18.38°N 78.83°E.It has an average elevation of 322 meters(1056 feet).It is located 130kms north to Secunderabad ,40km west to Karimnagar, 38km north to Siddipet and 56km east to Kamareddy. It is 10km away from historic Vemulawada temple town.Connectivity :A new National highway numbered NH 365B connects Sircilla with Siddipet, Jangaon, Suryapetand other districts of the state.Hyderabad-Vemulawada road at 140km north of Hyderabad.',
        'description': 'Vemulawada Temple - Vemulawada is home to one of the famous temples devoted to Lord Shiva in the state of Telangana. Popularly called as Dakshina Kasi, the devotees at this temple worship the presiding deity,Sri Raja Rajeshwara Swamy. The temple complex is also home to SriRaja Rajeshwari Devi temple and also a holy idol of Sri Laxmi Sahitha Sidhi Vinayaka.The main presiding deity here is also fondly called as Rajanna. The temple is thronged by thousands of devotees during festivals especially Shivarathri and other auspicious occasions.Rock cut inscriptions found in and around Vemulawada Temple establish the historical importance of this place which was the capital of the Vemulawada Chalukyas ,from 750 AD to 973AD. Tradition associate with this place with famous Telugu poet “Bheemakavi” but there is more definite proof of the famous Kannada poet “Pampa” living here as the court poet of Arikesari-II and dedicated his “Kannada Bharatha” to his royal patronage',
        'imagePath': 'assets/images/Vemulawada.jpg',
        'imagePathOne': 'assets/images/nampallygutta.jpg',
        'imagePathTwo': 'assets/images/singasamudramcheruvu.jpg',
        'descriptionOne':'Nampally Gutta Temple - At a distance of 2 km from Nampally Bus Stop, 4.5 km from Vemulawada Bus Stand, 3 km from Vemulawada Temple &amp; 32 km from Karimnagar, Lakshmi Narasimha Swamy Temple is situated at Nampally Gutta. The temple is nestled on a small hillock on the Vemulawada  Karimnagar highway. It is a small shrine dedicated to Lord Lakshmi Narasimha, an incarnation of Lord Vishnu. The idol was carved out of the rockaround which the temple was built. The visitors have to walk a few hundred steps that lead to the top fromnearest the parking area at bottom. The climb is little steep may take up to 15 minutes.One the way to the Narasimha temple, there is a temple for Naga Devatha.The temple was built in amodel of Snake.Visitors can enter the shrine through the snake & belly-a long, winding tunnel.There are statues depicting the story of Prahalada and Hiranyakasipu.At the end of the tunnel,the statue of Lord Narasimha killing the demon Hiranyakasipu is present.There are also a few ancient idols of Naga Devatha.At the entrance of the temple,one can find a statue of Lord Narasimha breaking his way out ofa pillar.',
        'descriptionTwo' : 'Samudram Cheruvu - Singa Samudram Cheruvu in Rajanna Sircilla district is one of the rarest tanks in Telangana.Visitors are flocking in large numbers to see this beauty.The tank is situated in Ghambiraopet mandal and is located about 23kms from Rajanna Sircilla district The tank was first constructed in the Kakatiya era.',
      }
    },
    'SIDDIPET-Siddipet': {
      'content': {
        'title': 'SIDDIPET',
        'imageTitle': 'assets/images/siddipet.jpg',
        'heading' : 'About:',
        'about' : 'Siddipet,a town in the Siddipet District, is renowned for its ancient religious attractions like temples mosques and churches as well as historical monuments like Lal Kaman and Burj. The Yerra Cheruvu and Komati Cheruvu, tributaries of the Manjira River, flow through the region.Siddipet district is carved out of erstwhile Medak district with annexation of some parts ofKarimnagar and Warangal districts. The district shares boundaries with Karimnagar, Sircilla, Medak,Medchal, Hanamkonda, Yadadri, Kamareddy, Jangaon districts.The district comprises of 26 mandals and 3 revenue divisions . The district headquarters is locatedat Siddipet town. The Govt of Telangana has decided to set up a police commissionerate for thetown.',
        'description': '',
        'imagePath': 'assets/images/kondapochammasagar.jpg',
        'imagePathOne': 'assets/images/srilakshminarasimhaswamytemple.jpg',
        'imagePathTwo': 'assets/images/srimallikarjunaswamydevasthanam.jpg',
        'descriptionOne':'',
        'descriptionTwo' : '',
      }
    }
  };

  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String imageTitle = details['content']['imageTitle'];
        String heading = details['content']['heading'];
        String about = details['content']['about'];
        String description = details['content']['description'];
        String imagePath = details['content']['imagePath'];
        String imagePathOne = details['content']['imagePathOne'];
        String imagePathTwo = details['content']['imagePathTwo'];
        String descriptionOne = details['content']['descriptionOne'];
        String descriptionTwo = details['content']['descriptionTwo'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConstituencyResult(
              title: title,
              description: description,
              imagePath: imagePath,
              imagePathOne: imagePathOne,
              imagePathTwo: imagePathTwo, descriptionOne: descriptionOne, descriptionTwo: descriptionTwo,about:about,heading:heading, imageTitle: imageTitle,
            ),
          ),
        );
      }
    }
  }

  void _onDistrictChanged(String? value) {
    setState(() {
      selectedDistrict = value;
      selectedConstituency = null; // Reset constituency when district changes
    });
  }

  void _onConstituencyChanged(String? value) {
    setState(() {
      selectedConstituency = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        title: Text('ConstituencyOverview'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                color: Colors.pink[100],
                height: 250,
                child: Image.asset(
                  'assets/images/banner.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text:
                          "Bharat Rashtra Samithi(BRS),formerly known as Telangana Rashtra Samithi,is an Indian political party founded by the Chief Minister of Telangana Sri Kalvakuntla Chandrashekar Rao,popularly known as KCR,in October 2022.The sole aim of the BRS is to bring a qualitative change in the country with a reformist and actionable agenda.The party vouches to bring structural changes in the country through reforms in areas such as economy, constitution, judiciary, elections and administration & governance.With an agenda of reinventing India and reorienting India,the BRS seeks the public support across the nation with a slogan–Ab ki baar Kisan sarkar.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextSpan(text: "")
                  ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.pink,
                    border: OutlineInputBorder(),
                  ),
                  value: selectedDistrict,
                  items: districts.map((district) {
                    return DropdownMenuItem(
                      value: district,
                      child: Text(district),
                    );
                  }).toList(),
                  onChanged: _onDistrictChanged,
                  hint: const Text('Select District'),
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.pink,
                    border: OutlineInputBorder(),
                  ),
                  value: selectedConstituency,
                  items: (selectedDistrict != null &&
                          constituencies.containsKey(selectedDistrict))
                      ? constituencies[selectedDistrict]!
                          .map<DropdownMenuItem<String>>((constituency) {
                          return DropdownMenuItem<String>(
                            value: constituency,
                            child: Text(constituency),
                          );
                        }).toList()
                      : [],
                  onChanged: _onConstituencyChanged,
                  hint: const Text('Select Constituency'),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
