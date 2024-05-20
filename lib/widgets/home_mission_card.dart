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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                () {
                  switch (type) {
                    case HomeMissionCardType.skipping:
                      return Icons.skateboarding;
                    case HomeMissionCardType.cycling:
                      return Icons.motorcycle_outlined;
                    case HomeMissionCardType.meditation:
                      return Icons.verified_user;
                  }
                }(),
                size: 26,
              ),
              Row(children: [
                Text(
                  "$duration",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
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
                      return 'meditation';
                  }
                }(),
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
