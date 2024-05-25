import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakemeup/models/home_mission_card_model.dart';

class HomeAlarmPlan extends StatefulWidget {
  const HomeAlarmPlan(
      {super.key,
      required this.type,
      required this.duration,
      required this.alarmText,
      required this.isActive});

  final HomeMissionCardType type;
  final int duration;
  final String alarmText;
  final bool isActive;

  @override
  State<HomeAlarmPlan> createState() => _HomeAlarmPlanState();
}

class _HomeAlarmPlanState extends State<HomeAlarmPlan> {
  bool isAlarmActive = false;

  @override
  void initState() {
    super.initState();
    isAlarmActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      margin: const EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: Row(
          children: [
            Card(
              color: Theme.of(context).primaryColor.withOpacity(0.05),
              elevation: 0,
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: () {
                    switch (widget.type) {
                      case HomeMissionCardType.skipping:
                        return SvgPicture.asset(
                          'assets/images/home/skipping_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.cycling:
                        return SvgPicture.asset(
                          'assets/images/home/cycling_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.meditation:
                        return SvgPicture.asset(
                          'assets/images/home/meditation_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.dumble:
                        return SvgPicture.asset(
                          'assets/images/home/dumble_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.treadmill:
                        return SvgPicture.asset(
                          'assets/images/home/treadmill_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.running:
                        return SvgPicture.asset(
                          'assets/images/home/running_icon.svg',
                          width: 25,
                          height: 25,
                        );
                      case HomeMissionCardType.muscle:
                        return SvgPicture.asset(
                          'assets/images/home/muscle_icon.svg',
                          width: 25,
                          height: 25,
                        );
                    }
                  }()),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.alarmText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    () {
                      switch (widget.type) {
                        case HomeMissionCardType.skipping:
                          return 'Skipping for ${widget.duration} mins';
                        case HomeMissionCardType.cycling:
                          return 'Cycling for ${widget.duration} mins';
                        case HomeMissionCardType.meditation:
                          return 'Meditation for ${widget.duration} mins';
                        case HomeMissionCardType.dumble:
                          return 'Dumble for ${widget.duration} mins';
                        case HomeMissionCardType.treadmill:
                          return 'treadmill for ${widget.duration} mins';
                        case HomeMissionCardType.running:
                          return 'Running for ${widget.duration} mins';
                        case HomeMissionCardType.muscle:
                          return 'Muscle maker for ${widget.duration} mins';
                      }
                    }(),
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: isAlarmActive,
                onChanged: (bool value) {
                  setState(() {
                    isAlarmActive = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
