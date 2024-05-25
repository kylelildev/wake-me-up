import 'package:flutter_svg/svg.dart';
import 'package:wakemeup/widgets/home_alarm_plan.dart';
import 'package:wakemeup/models/home_mission_card_model.dart';
import 'package:wakemeup/widgets/home_mission_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeMissionCard> listMissions = [
    HomeMissionCard(type: HomeMissionCardType.cycling, duration: 33),
    HomeMissionCard(type: HomeMissionCardType.meditation, duration: 33),
    HomeMissionCard(type: HomeMissionCardType.skipping, duration: 321),
    HomeMissionCard(type: HomeMissionCardType.meditation, duration: 33),
    HomeMissionCard(type: HomeMissionCardType.skipping, duration: 321),
    HomeMissionCard(type: HomeMissionCardType.cycling, duration: 33),
    HomeMissionCard(type: HomeMissionCardType.cycling, duration: 33),
    HomeMissionCard(type: HomeMissionCardType.skipping, duration: 321),
  ];

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: SafeArea(
            child: Column(children: [
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello,',
                              style: TextStyle(
                                  color: Theme.of(context).cardColor,
                                  fontSize: 16),
                            ),
                            Text(
                              'Akshay Syal',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).cardColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 54,
                          height: 54,
                          child: CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage('assets/images/home/avatar1.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.white10,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  const Text(
                                    '3232',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: SvgPicture.asset(
                                            'assets/images/home/ic_steps.svg',
                                            colorFilter: const ColorFilter.mode(
                                                Colors.white, BlendMode.srcIn)),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Steps',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  const Text(
                                    '952',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: SvgPicture.asset(
                                            'assets/images/home/ic_cal.svg',
                                            colorFilter: const ColorFilter.mode(
                                                Colors.black, BlendMode.srcIn)),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text('Calories')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      color: Colors.white10,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '12.19',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Coins',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '2.4 KM',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Distance',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '38',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Heart beat',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 120.0,
                              child: ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listMissions.length,
                                  itemBuilder: (BuildContext context,
                                          int index) =>
                                      HomeMissionCardWidget(
                                        duration: listMissions[index].duration,
                                        type: listMissions[index].type,
                                        key: UniqueKey(),
                                      )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 22.0),
                              child: Text(
                                'My Alarm Plans',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) =>
                                    const HomeAlarmPlan(
                                  alarmText: '05:00 AM',
                                  duration: 30,
                                  isActive: false,
                                  type: HomeMissionCardType.cycling,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
