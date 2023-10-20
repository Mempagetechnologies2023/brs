
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List imageList = [
    {"id": 0, "image_path": 'assets/images/11.jpeg'},
    {"id": 1, "image_path": 'assets/images/12.jpeg'},
    {"id": 2, "image_path": 'assets/images/13.jpeg'},
    {"id": 3, "image_path": 'assets/images/14.jpeg'},
    {"id": 4, "image_path": 'assets/images/15.jpeg'},
    {"id": 5, "image_path": 'assets/images/16.jpeg'},
    {"id": 6, "image_path": 'assets/images/17.jpeg'},
    {"id": 7, "image_path": 'assets/images/18.jpeg'},
    {"id": 8, "image_path": 'assets/images/19.jpeg'},
    {"id": 9, "image_path": 'assets/images/20.jpeg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.fill,
                    ),
                  )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 350.0,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 1),
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      currentIndex = index;
                    },
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: const Text('HISTORY OF THE PARTY',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        'Bharat Rashtra Samithi',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Telangana Rashtra Samithi, popularly known as TRS party, was founded on 27th April 2001 by Kalvakuntla Chandrashekar Rao (KCR). The one and only objective of TRS Party then was to achieve a separate statehood to Telangana. With its uncompromising spirit to make aspirations for Telangana a reality, TRS Party played a pivotal role in carrying forth a sustained agitation to achieve statehood for Telangana.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ), // const ButtonBar(
                    Container(
                     child:  Image.asset(
                       'assets/images/partyhistory.jpg',
                       fit: BoxFit.fill,
                     ),
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: const Text(
                        'ABOUT  THE PARTY',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'BRS',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Bharat Rashtra Samithi (BRS), formerly known as Telangana Rashtra Samithi, is an Indian political party founded by the Chief Minister of Telangana Sri Kalvakuntla Chandrashekar Rao, popularly known as KCR, in October 2022. The sole aim of the BRS is to bring a qualitative change in the country with a reformist and actionable agenda.The party vouches to bring structural changes in the country through reforms in areas such as economy, constitution, judiciary, elections and administration & governance. With an agenda of reinventing India and reorienting India, the BRS seeks the public support across the nation with a slogan – Ab ki baar Kisan sarkar.',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child:Image.asset('assets/images/aboutparty.png'),
                    ),

                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: const Text(
                        'KALVAKUNTLA CHANDRASHEKAR RAO',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'BRS',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kalvakuntla Chandrashekar Rao (born 17 February 1954), often referred to by his initials KCR, is an Indian politician serving as the first and current Chief Minister of Telangana since 2 June 2014. He is the founder and leader of the Bharat Rashtra Samithi, a state party in India. He is known for leading the Telangana movement to achieve statehood for Telangana. Previously, he served as the Union Minister of Labour and Employment from 2004 to 2006. He represents Gajwel constituency in the Legislative Assembly of Telangana. Rao took oath as the first Chief Minister of Telangana in 2014 and was re-elected for the second term in 2018',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                     Container(
                      child:Image.asset('assets/images/kcr.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

