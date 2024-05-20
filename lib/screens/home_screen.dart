import 'package:wakemeup/models/home_alarm_plan.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                                AssetImage('assets/images/avatar.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.white30,
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Text(
                                    '3232',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.woman_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
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
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Text(
                                    '3232',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.woman_outlined),
                                      Text('Steps')
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
                      color: Colors.white30,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
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
                            Column(
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
                            Column(
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
                                'Demo Headline 2',
                                style: TextStyle(fontSize: 18),
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
                                    HomeAlarmPlan(),
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
