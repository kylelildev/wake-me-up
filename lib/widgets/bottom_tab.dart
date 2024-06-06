import 'package:wakemeup/modals/modal_mission_detail.dart';
import 'package:wakemeup/screens/home_screen.dart';
import 'package:wakemeup/screens/mission_screen.dart';
import 'package:wakemeup/screens/profile_screen.dart';
import 'package:wakemeup/screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:wakemeup/widgets/bottom_tab_button.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({super.key});

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    const MissionScreen(),
    const ProfileScreen(),
  ];

  final PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> leftBottomTabButtons = [
      {'widget': const HomeScreen(), 'iconSource': 'assets/images/ic_home.svg'},
      {
        'widget': const StoreScreen(),
        'iconSource': 'assets/images/ic_shop.svg'
      },
    ];

    List<Map<String, dynamic>> rightBottomTabButtons = [
      {
        'widget': const MissionScreen(),
        'iconSource': 'assets/images/ic_gym.svg'
      },
      {
        'widget': const ProfileScreen(),
        'iconSource': 'assets/images/ic_user-square.svg'
      },
    ];

    return Scaffold(
      body: PageStorage(
        bucket: pageStorageBucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ModalMissionDetail()),
          )
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: const Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: leftBottomTabButtons.map((e) {
                int index = leftBottomTabButtons.indexOf(e);
                return BottomTabButton(
                    onPressed: () => {
                          setState(() {
                            currentScreen = e['widget'];
                            currentTab = index;
                          })
                        },
                    iconSvgSource: e['iconSource'],
                    isActive: currentTab == index);
              }).toList(),
            ),
            Row(
              children: rightBottomTabButtons.map((e) {
                int index = rightBottomTabButtons.indexOf(e) + 2;
                return BottomTabButton(
                    onPressed: () => {
                          setState(() {
                            currentScreen = e['widget'];
                            currentTab = index;
                          })
                        },
                    iconSvgSource: e['iconSource'],
                    isActive: currentTab == index);
              }).toList(),
            )
            // Row(
            //   children: [
            //     BottomTabButton(
            //       iconSvgSource: 'assets/images/ic_gym.svg',
            //       onPressed: () => {},
            //       isActive: false,
            //     ),
            //     BottomTabButton(
            //         onPressed: () => {
            //               setState(() {
            //                 currentScreen = const ProfileScreen();
            //                 currentTab = 3;
            //               })
            //             },
            //         iconSvgSource: 'assets/images/ic_user-square.svg',
            //         isActive: currentTab == 3)
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}
