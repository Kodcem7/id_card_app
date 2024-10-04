import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int soNum = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 74, 74),
      appBar: AppBar(
        title: const Text('Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          soNum++;
        });},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assest/for_id.jpg',),
                radius: 40,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.grey,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Cem',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'So-Num',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$soNum',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 187, 184, 184),
                ),
                SizedBox(width: 10),
                Text(
                  'jimcaust123@gmail.com',
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
