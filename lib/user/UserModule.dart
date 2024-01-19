import 'package:ats/user/Accessories/Accessories.dart';
import 'package:ats/user/Rental/Rent_home.dart';
import 'package:ats/user/Technician/TechnicianHome.dart';
import 'package:flutter/material.dart';

class UserModule extends StatefulWidget {
  const UserModule({super.key});

  @override
  State<UserModule> createState() => _UserModuleState();
}

class _UserModuleState extends State<UserModule> {
  int selectedIndex = 0;
  Widget body() {
    switch (selectedIndex) {
      case 0:
        return const CabHome();
      case 1:
        return const Rent_home();
      case 2:
        return const AccessoriesHome();
      case 3:
        return const TechnicianHome();
      default:
        return const UserModule();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 220,
          child: Center(
            child: Text(
              'Home',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  color: Colors.white),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(250, 5, 5, 60),
      ),
      backgroundColor: Colors.white,
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 6, 29, 179),
        selectedItemColor: const Color.fromARGB(255, 22, 0, 147),
        unselectedItemColor: const Color.fromARGB(255, 120, 120, 120),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car_filled_outlined,
            ),
            label: 'Cabs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_rental,
            ),
            label: 'Rental',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.construction,
            ),
            label: 'Accessories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.man_2,
            ),
            label: 'Mechanic',
          ),
        ],
      ),
    );
  }
}

class CabHome extends StatelessWidget {
  const CabHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: SizedBox(
          height: 30,
          child: Text(
            'Available Cab',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
