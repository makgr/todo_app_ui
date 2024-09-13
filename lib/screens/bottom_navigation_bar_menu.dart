import 'package:flutter/material.dart';
import 'package:todo_app_ui/screens/home_screen.dart';

import 'completed_task.dart';

class BottomNavigationBarMenu extends StatefulWidget {
  const BottomNavigationBarMenu({super.key});

  @override
  State<BottomNavigationBarMenu> createState() =>
      _BottomNavigationBarMenuState();
}

class _BottomNavigationBarMenuState extends State<BottomNavigationBarMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 240, 233, 233),
      elevation: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavBarItem(Icons.list, 'All', 0),
          buildNavBarItem(Icons.check, 'Completed', 1),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }));
        } else if (index == 1) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return CompletedTaskScreen();
          }));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.black87,
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
