import 'package:flutter/material.dart';

import '../pages/resultpage.dart';

class PartyLeader extends StatefulWidget {
  const PartyLeader({super.key});

  @override
  State<PartyLeader> createState() => _PartyLeaderState();
}

class _PartyLeaderState extends State<PartyLeader> {
  String? selectedDistrict;
  String? selectedConstituency;

  List<String> districts = [
    'ADILABAD',
    'BHADRADRI KOTHAGUDEM',
    'HYDERABAD',
    'JAGTIAL',
    'JANGOAN',
    'JAYASHANKAR BHOOPALPALLY',
    'JOGULAMBA GADWAL',
    'KAMAREDDY',
    'KARIMNAGAR',
    'KHAMMAM',
    'KOMARAM BHEEM ASIFABAD',
    'MAHABUBABAD',
    'MAHABUBNAGAR',
    'MANCHERIAL',
    'MEDAK',
    'MEDCHAL-MALKAJGIRI',
    'MULUG',
    'NAGARKURNOOL',
    'NALGONDA',
    'NARAYANPET',
    'NIRMAL',
    'NIZAMABAD',
    'PEDDAPALLI',
    'RAJANNA SIRCILLA',
    'RANGAREDDY',
    'SANGAREDDY',
    'SIDDIPET',
    'SURYAPET',
    'VIKARABAD',
    'WANAPARTHY',
    'WARANGAL RURAL',
    'WARANGAL URBAN',
    'YADADRI BHUVANAGIRI',
  ];
  Map<String, List<String>> constituencies = {
    'ADILABAD': ['Boath', 'adilabad', 'Constituency 3A'],
    'BHADRADRI KOTHAGUDEM': ['Yellandu(ST)','Kothagudem','Aswaraopeta(ST)','Pinapaka(ST)','Bhadrachalam(ST)'],
    'HYDERABAD': ['Musheerabad','Malakpet','Amberpet','Khairatabad','Jubilee Hills','Sanathnagar','Nampally','Karwan','Goshamahal','Charminar','Chandrayangutta','Yakutpura','Bahadurpura','Secunderabad','Secunderabad Cantt(SC)'],
    'JAGTIAL': ['Dharmapuri(SC)','Koratla', 'Jagtial'],
    'JANGOAN': ['Jangaon','Ghanpur','Palakurthi'],
    'JAYASHANKAR BHOOPALPALLY': ['Bhupalpalle'],
    'JOGULAMBA GADWAL': ['Gadwal','Alampur(SC)'],
    'KAMAREDDY': ['Jukkal(SC)','Yellareddy','Kamareddy'],
    'KARIMNAGAR': ['Karimnagar','Choppadandi(SC)','Manakondur(SC)','Huzurabad'],
    'KHAMMAM': ['Khammam','Palair','Madhira(SC)','Wyra(ST)','Sathupalle(SC)'],
    'KOMARAM BHEEM ASIFABAD': ['Sirpur', 'Asifabad'],
    'MAHABUBABAD': ['Dornakal(ST)','Mahabubabad(ST)'],
    'MAHABUBNAGAR': ['Mahbubnagar','Jadcherla','Devarkadra'],
    'MANCHERIAL': ['Chennur', 'mancherial', 'Bellampalli'],
    'MEDAK': ['Narsapur','Medak'],
    'MEDCHAL-MALKAJGIRI': ['Medchal','Malkajgiri','Quthbullapur','Kukatpally','Uppal'],
    'MULUG': ['Mulugu(ST)'],
    'NAGARKURNOOL': ['Kollapur','Nagarkurnool','Achampet(SC)'],
    'NALGONDA': ['Nakrekal(SC)','Nalgonda','Munugode','Devarakonda(ST)','Nagarjuna Sagar','Miryalaguda'],
    'NARAYANPET': ['Makthal','Narayanpet'],
    'NIRMAL': ['Mudhole', 'nirmal', 'Khanapur'],
    'NIZAMABAD': ['Banswada','Armur','Bodhan','Nizamabad (Urban)','Nizamabad (Rural)','Balkonda'],
    'PEDDAPALLI': ['Ramagundam','Manthani','Peddapalle'],
    'RAJANNA SIRCILLA': ['Vemulawada','Sircilla'],
    'RANGAREDDY': ['Kalwakurthy','Shadnagar','Ibrahimpatnam','Lal Bahadur Nagar','Maheswaram','Rajendranagar','Serilingampally','Chevella(SC)'],
    'SANGAREDDY': ['Zaheerabad(SC)','Sangareddy','Patancheru','Narayankhed','Andole(SC)'],
    'SIDDIPET': ['Dubbak','Gajwel','Husnabad','Siddipet'],
    'SURYAPET': ['Huzurnagar','Kodad','Thungathurthi(SC)'],
    'VIKARABAD': ['Pargi','Vicarabad(SC)','Tandur','Kodangal'],
    'WANAPARTHY': ['Wanaparthy'],
    'WARANGAL RURAL': ['Narsampet','Parkal'],
    'WARANGAL URBAN': ['Warangal West','Warangal East','Waradhanapet(SC)'],
    'YADADRI BHUVANAGIRI': ['Alair','Bhongir'],
  };


  //update code for drop-down changes

  // Map<String, List<String>> constituencies = {
  //   'KARIMNAGAR': ['Karimnagar', 'Huzurabad', 'Manakondur'],
  //   'WARANGAL': ['Warangal', 'Hanamkonda', 'Kazipet'],
  //   'HYDERABAD': ['Amberpet', 'Secunderabad', 'Malkajgiri'],
  // };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {
    'KARIMNAGAR-Karimnagar': {
      'content': {
        'title': 'Karimnagar - Karimnagar Details',
        'description': 'Details for Karimnagar - Karimnagar combination.',
        'imagePath': 'assets/karimnagar_karimnagar.jpg',
      },
    },
    'KARIMNAGAR-Huzurabad': {
      'content': {
        'title': 'Karimnagar - Huzurabad Details',
        'description': 'Details for Karimnagar - Huzurabad combination.',
        'imagePath': 'assets/karimnagar_huzurabad.jpg',
      },
    },
    'KOMARAM BHEEM ASIFABAD-Asifabad':{
      'content' : {
        'title':'',
        'description' : '',
        'imagePath' : 'assets/adilabad-'
      }
    },
    'RAJANNA SIRCILLA-Sircilla':{
      'content' : {
        'title':'KTR',
        'description' : 'Kalvakuntla Taraka Rama Rao,popularly known as KTR,is the Working President of TRS Party and the Cabinet Minister for IT E&C , MA&UD and Industries & Commerce Departments of Telangana government.KTR has embarked upon an aggressive path to develop the IT and high-tech industry in the new State after assuming office.He has led efforts that successfully doubled the IT exports from Telangana in a span of five years.\n\nHe has already taken up several initiatives includes creating proactive and business-friendly Industrial IT and Electronics policies,facilitating electronics manufacturing ecosystem in the State,promoting entrepreneurship through creation of T Hub–India’s largest incubator for startups,generating skilled workers through Telangana Academy of Skill and Knowledge(TASK) offering quality education and training to identified groups through State-run Satellite Communications Network i.e.T-SAT,an exclusive start-up incubator for women entrepreneurs—We Hub India’s largest prototyping centre for electronics,electromechanical and mechanical startups–T-Works a key initiative to further improve the quality of citizen service delivery by leveraging the deep penetration of mobile usage in the state-T App Folio declaring 2020 as the ‘Year of AI’ (Artificial Intelligence); to foster innovation driven economy in Telangana – TSIC (Telangana State Innovation Cell)for speedy processing of various clearances required for setting up of industries at a single point based on the self-certification–TS-iPASS(Telangana State Industrial Project Approval and Self-Certification System)Telangana State Building Permission Approval and Self-Certification System- TS-bPASS.',
        'imagePath' : 'assets/images/ktr.jpg'
      }
    },
    'SIDDIPET-Siddipet' : {
      'content' : {
        'title':'Thaneeru Harish Rao',
        'description' : 'Thaneeru Harish Rao (born 3 June 1972) is an Indian politician serving as the Minister of Medical - Health and Finance Department of Telangana since 08 September 2019. He is the MLA from Siddipet constituency from the Bharat Rashtra Samithi party since 2004.Between 2014 and 2018, Rao served as Minister for Irrigation, Marketing & Legislative Affairs of Telangana. With his win at the 2018 assembly election, Rao became the youngest six-time member of any legislative assembly in India.] He was appointed as the Minister of Finance in the cabinet expansion held on 8 September 2019.He was also appointed minister for Health, Medical and Family welfare, on 9 November 2021.Harish Rao started his political journey with Bharat Rashtra Samithi as youth leader. He was elected to assembly at the age of 32 from Siddipet. He raised his strong voice in assembly on various issues of Telangana region. Soon, he became key member of Bharat Rashtra Samithi and started working as Internal party strategist. He along with other MLA resigned as Congress party delayed the announcement of bifurcation of Telangana. He won as MLA with majority over 58000 though it was major setback for party winning only 7 MLA seats and 2 MP seats out of 17 MLA and 4 MP contested. In 2009, he was once again elected as MLA from Siddipet constituency with over 60000 majority. He was elected as BRS party legislative member. Soon after, he and 10 other members from the TRS resigned from the Legislative Assembly in support of a separate State for Telangana. In July 2010, the High Court of Andhra Pradesh ordered the Election Commission of India to conduct by-polls in Siddipet and other towns across the Telangana region. Harish Rao contested again from Siddipet defeating opponent Babu Mohan (from the Telugu Desam Party) yet again.Harish Rao was elected as MLA for the sixth consecutive time from Siddipet constituency with a whopping majority of 1,20,650 votes in 2018 Elections.',
        'imagePath' : 'assets/images/harishrao.png'
      }
    },
    'JANGOAN-Jangaon' : {
      'content' : {
        'title':'Palla Rajeshwar Reddy',
        'description' : 'Palla Rajeshwar Reddy worked as the Secretary of Osmania University SFI between 1985-87. From 1988 to 91 S.F.I. He worked as Hyderabad city secretary.In 2014,he joined the Telangana Rashtra Samiti Party and contested from the Nalgonda Lok Sabha constituency but was defeated.In 2015, he contested as a TRS candidate from the Nalgonda-Warangal-Khammam Graduate Constituency and was elected to the Legislative Council(MLC) for the first time.He was appointed as the General Secretary of Telangana Rashtra Samiti in 2017.Later he was the Government Whip from 2016 to 2019.He was a member of the Public Accounts Committee (PAC) in the Legislative Assembly in 2018.In 2019, he took charge as the chairman of Rythu Coordinating Committee.In March 2021, he won as MLC once again in the elections held for the Nalgonda-Warangal-Khammam Graduate Constituency.He was sworn in as an MLC on September 16,2021.',
        'imagePath' : 'assets/images/palla.jpeg'
      }
    }
  };


  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String description = details['content']['description'];
        String imagePath = details['content']['imagePath'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              title: title,
              description: description,
              imagePath: imagePath,
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
        backgroundColor: Colors.pinkAccent,
        title: const Text('Party Leader'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 280.0,
                  width: 280.0,
                  child: Image.asset('assets/images/kcr.png')),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Kalvakuntla ChandraShekar Rao',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                    text:
                        "Kalvakuntla Chandrashekar Rao,popularly known as KCR,was born in Chintamadaka,Medak District,Telangana,India to Sri Raghava Rao and Smt.Venkatamma on February 17,1954.After leading the Telangana movement to its desired end,he became the first Chief Minister of the State.He is also the founder President of Telangana Rashtra Samithi(TRS) which was in the forefront of the movement for Statehood to Telangana.He has been a Member of the Legislative Assembly(MLA) for multiple terms from different constituencies.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      wordSpacing: 2.5,
                      letterSpacing: 0.5,
                    ),
                  ),
                ]),
              ),
              // Card(
              //   margin: const EdgeInsets.all(30.0),
              //   color: Colors.white70,
              //   child: ExpansionTile(
              //     title: const Text('Select Your State'),
              //     children: [
              //       ListTile(
              //         title: const Text('Telangana'),
              //         onTap: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => const About()));
              //         },
              //       ),
              //       ListTile(
              //         title: const Text('Andhra Pradesh'),
              //         onTap: () {
              //           //Navigator.push(context, MaterialPageRoute(builder: (context) =>const ProfileScreen()));
              //         },
              //       )
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Column(
            children: [
              DropdownButtonFormField(
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
                value: selectedConstituency,
                items: (selectedDistrict != null && constituencies.containsKey(selectedDistrict))
                    ? constituencies[selectedDistrict]!.map<DropdownMenuItem<String>>((constituency) {
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
        ],
      ),
    );
  }
}
