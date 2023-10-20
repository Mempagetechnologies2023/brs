import 'package:brs/subscreens/searchlist.dart';
import 'package:brs/subscreens/transferdata.dart';
import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Polling Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink, // foreground
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchList(),
                  ),
                );
              },
              icon: const Icon(
                Icons.how_to_vote_outlined,
                color: Colors.white,
                size: 42,
              ),
              label: const Text(
                'Check Your Status',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.pink,fontSize: 24),
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransferData(),
                  ),
                );
              },
              icon: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 42,
              ),
              label: const Text(
                'Voter Details',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.pink,fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
