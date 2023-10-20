import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransferData extends StatefulWidget {
  const TransferData({super.key});

  @override
  State<TransferData> createState() => _TransferDataState();
}

class _TransferDataState extends State<TransferData> {



  final userFirstNameController = TextEditingController();
  final userLastNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userVillageController = TextEditingController();
  final userDistrictController = TextEditingController();
  final userMandalController = TextEditingController();
  final userCasteController = TextEditingController();
  final userBoothNumberController = TextEditingController();
  final userLeaderOneController = TextEditingController();
  final userLeaderTwoController = TextEditingController();
  final userLeaderThreeController = TextEditingController();
  final userAreaIssuesController = TextEditingController();

  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "Your Request Submitted ");
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('User Info'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Form(
                key: formKey,
                child: Stack(
                  children: [
                    Container(
                      width: size.width * 1.0,
                      height: size.height * 2,
                    ),
                     Positioned(
                       top: size.height * 0.01,
                      left: size.width * 0.30,
                      child: const Text(
                        'Fill The Form',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.05,
                      left: size.width * 0.04,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'BoothNumber is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userBoothNumberController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'BoothNumber',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.15,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Firstname is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userFirstNameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'FirstName',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.15,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Lastname is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userLastNameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Last Name',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.22,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (userAgeController.text.length != 2) {
                            return 'Age is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userAgeController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Age',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.29,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Village is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userVillageController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Village',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.22,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'District is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userDistrictController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'District',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.29,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Mandal is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userMandalController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Mandal',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.36,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Caste is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userCasteController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Caste',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.44,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-1 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userLeaderOneController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Leader-1 ',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.54,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-2 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userLeaderTwoController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Leader-2 ',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.64,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-3 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userLeaderThreeController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Leader-3 ',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.74,
                      left: size.width * 0.01,
                      child: TextFormField(
                        maxLines: 10,
                        minLines: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'AreaIssues is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: userAreaIssuesController,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'AreaIssues',
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.07,
                      width: size.width * 0.5,
                      top: size.height * 0.84,
                      left: size.width * 0.25,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        elevation: 10,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            int age = int.parse(userAgeController.text);
                            String boothNumber = userBoothNumberController.text;

                            Map<String, dynamic> userData = {
                              'firstname': userFirstNameController.text,
                              'lastname': userLastNameController.text,
                              'age': age,
                              'mandal': userMandalController.text,
                              'village': userVillageController.text,
                              'district': userDistrictController.text,
                              'caste' : userCasteController.text,
                              'boothNumber': int.parse(userBoothNumberController.text),
                              'LeaderOne': userLeaderOneController.text,
                              'LeaderTwo': userLeaderTwoController.text,
                              'LeaderThree': userLeaderThreeController.text,
                              'areaIssues': userAreaIssuesController.text,
                            };
                            userFirstNameController.clear();
                            userLastNameController.clear();
                            userAgeController.clear();
                            userMandalController.clear();
                            userVillageController.clear();
                            userDistrictController.clear();
                            userCasteController.clear();
                            userBoothNumberController.clear();
                            userLeaderOneController.clear();
                            userLeaderTwoController.clear();
                            userLeaderThreeController.clear();
                            userAreaIssuesController.clear();


                            final firestore = FirebaseFirestore.instance;

                            final boothCollection =
                            firestore.collection(boothNumber);

                            boothCollection.add(userData);

                            showAlert();
                          }
                        },
                        color: Colors.white,
                        textColor: Colors.white,
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
// _reference.add(students);
//
// showAlert();
