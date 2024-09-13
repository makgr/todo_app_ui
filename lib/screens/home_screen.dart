import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:todo_app_ui/screens/edit_screen.dart';

import 'add_task_screen.dart';
import 'bottom_navigation_bar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 217, 166),
      appBar: AppBar(
        title: Text(
          "Todo App",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0xfffab407),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_month),
          ),
        ],
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: double.infinity,
                      height: 82,
                      padding: EdgeInsets.all(5.0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Todo Title $index",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text("Todo Sub Title $index"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditScreen()),
                                    );
                                  },
                                  child: Icon(Icons.edit),
                                ),
                                Icon(Icons.delete),
                                Icon(Icons.check_circle),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddTaskScreen();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xfffab407),
      ),
      bottomNavigationBar: BottomNavigationBarMenu(),
    );
  }
}
