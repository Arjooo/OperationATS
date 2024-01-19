import 'package:ats/admin/AddAccessories.dart';
import 'package:ats/admin/adminhome.dart';
import 'package:ats/admin/paymentPage.dart';
import 'package:ats/user/PaySucces.dart';
import 'package:flutter/material.dart';

class AdminVerification extends StatefulWidget {
  const AdminVerification({super.key});

  @override
  State<AdminVerification> createState() => _AdminVerificationState();
}

class _AdminVerificationState extends State<AdminVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Verification')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 350,
              height: 424.71,
              decoration: ShapeDecoration(
                color: const Color(0x99DFE8F4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/me.jpeg.jpg',
                      scale: 9,
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 40,
                          end: 30,
                          top: 20,
                        ),
                        child: Text(
                          'ARJUN',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('Car Technician'),
                    ],
                  ),
                  const Center(child: Text('data'))
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PaySuccess();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 115),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 4, 62, 110)),
            child: const Text(
              'Pay',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AdminHome();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 105),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Color.fromARGB(255, 1, 42, 77)),
            ),
          ),
        ],
      ),
    );
  }
}
