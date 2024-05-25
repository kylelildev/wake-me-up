import 'package:flutter_svg/svg.dart';
import 'package:wakemeup/models/home_mission_card_model.dart';
import 'package:flutter/material.dart';

class HomeMissionCardWidget extends StatelessWidget {
  const HomeMissionCardWidget(
      {super.key, required this.type, required this.duration});

  final HomeMissionCardType type;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            () {
              switch (type) {
                case HomeMissionCardType.skipping:
                  return SizedBox(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset(
                      'assets/images/home/skipping_icon.svg',
                    ),
                  );
                case HomeMissionCardType.cycling:
                  return SizedBox(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset(
                      'assets/images/home/cycling_icon.svg',
                    ),
                  );
                case HomeMissionCardType.meditation:
                  return SizedBox(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset(
                      'assets/images/home/meditation_icon.svg',
                    ),
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
            }(),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Text(
                "$duration",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'min',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ]),
            Text(
              () {
                switch (type) {
                  case HomeMissionCardType.skipping:
                    return 'Skipping';
                  case HomeMissionCardType.cycling:
                    return 'Cycling';
                  case HomeMissionCardType.meditation:
                    return 'Meditation';
                  case HomeMissionCardType.dumble:
                    return 'Dumble';
                  case HomeMissionCardType.treadmill:
                    return 'treadmill';
                  case HomeMissionCardType.running:
                    return 'Running';
                  case HomeMissionCardType.muscle:
                    return 'Muscle maker';
                }
              }(),
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
