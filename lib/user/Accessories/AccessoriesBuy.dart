import 'package:ats/user/Accessories/PayAccessories.dart';
import 'package:flutter/material.dart';

class AccessoriesBuy extends StatefulWidget {
  const AccessoriesBuy({super.key});

  @override
  State<AccessoriesBuy> createState() => _AccessoriesBuyState();
}

class _AccessoriesBuyState extends State<AccessoriesBuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Accessories',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      backgroundColor: const Color.fromARGB(255, 248, 249, 249),
      body: Column(
        children: [
          Center(
            heightFactor: 1.1,
            child: Image.asset(
              'assets/brake.png',
              height: 250,
              width: 300,
              scale: 3,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                'BMW Brake Pads',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'BAJAJ Genuine Parts Motorcycle Element Oil Filter for Bajaj Pulsar AS 150 (Part NO : JE571007)',
                style: TextStyle(fontSize: 5),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     TextField(
          //       decoration: quantityDeco(),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 300,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PayAccessories();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 115),
                backgroundColor: const Color(0xFF19345D),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Buy'))
        ],
      ),
    );
  }

  // InputDecoration quantityDeco() {
  //   return const InputDecoration(
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(12),
  //       ),
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(12),
  //       ),
  //     ),
  //     contentPadding: EdgeInsets.symmetric(
  //       vertical: 8,
  //       horizontal: 12,
  //     ),
  //   );
  // }
}
