import 'package:wakemeup/screens/home_screen.dart';
import 'package:wakemeup/screens/mission_screen.dart';
import 'package:wakemeup/screens/profile_screen.dart';
import 'package:wakemeup/screens/store_screen.dart';
import 'package:flutter/material.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({super.key});

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    MissionScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: pageStorageBucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => (),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ), 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () => {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      })
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.home),
                        Text(
                          'Home',
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => {
                      setState(() {
                        currentScreen = StoreScreen();
                        currentTab = 1;
                      })
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.store),
                        Text(
                          'Store',
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () => {
                      setState(() {
                        currentScreen = MissionScreen();
                        currentTab = 2;
                      })
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.support_agent),
                        Text(
                          'Mission',
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 3;
                      })
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.supervised_user_circle),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
