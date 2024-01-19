import 'package:flutter/material.dart';

class TechnicianHome extends StatefulWidget {
  const TechnicianHome({super.key});

  @override
  State<TechnicianHome> createState() => _TechnicianHomeState();
}

class _TechnicianHomeState extends State<TechnicianHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Technician',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TechnicianTIle(),
            TechnicianTIle(),
            TechnicianTIle(),
          ],
        ),
      ),
    );
  }
}

class TechnicianTIle extends StatelessWidget {
  const TechnicianTIle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 227, 233, 236),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/me.jpeg.jpg'),
          radius: 30,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.call),
          onPressed: () {},
        ),
        title: const Text(
          "Arjun Reddy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        subtitle: RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: "Main Technician\n"),
              TextSpan(
                text: "\$1000",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 7, 114, 255),
                ),
              ),
            ],
            style: TextStyle(
              color: Colors.black,
              height: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
