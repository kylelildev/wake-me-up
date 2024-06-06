import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:wakemeup/models/home_mission_card_model.dart';
import 'dart:developer';

class MissionItemCard extends StatefulWidget {
  const MissionItemCard({
    super.key,
    required this.type,
  });

  final HomeMissionCardType type;

  @override
  State<MissionItemCard> createState() => _MissionItemCardState();
}

class _MissionItemCardState extends State<MissionItemCard> {
  @override
  Widget build(BuildContext context) {
    getMissionName() {
      switch (widget.type) {
        case HomeMissionCardType.skipping:
          return 'Skipping';
        case HomeMissionCardType.cycling:
          return 'Cycling';
        case HomeMissionCardType.meditation:
          return 'Meditation';
        case HomeMissionCardType.dumble:
          return 'Dumble';
        case HomeMissionCardType.treadmill:
          return 'Treadmill';
        case HomeMissionCardType.running:
          return 'Running';
        case HomeMissionCardType.muscle:
          return 'Muscle';
      }
    }

    // var listCalories = List<int>.generate(1000, (i) => i * 10);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.grey,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        onPressed: () => showBarModalBottomSheet(
          isDismissible: true,
          topControl: const SizedBox(
            width: 0,
          ),
          context: context,
          builder: (context) => SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Container(
                            width: 44,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Text(
                        getMissionName(),
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Select how many calories you can burn'),
                      const SizedBox(
                        height: 15,
                      ),
                      Card(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Color(0xffcccccc), width: 0.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 70,
                              height: 200,
                              child: ListWheelScrollView.useDelegate(
                                useMagnifier: true,
                                overAndUnderCenterOpacity: 0.2,
                                onSelectedItemChanged: (value) => {
                                  log('data: ${value.toString()} ${MediaQuery.of(context).size.width}')
                                },
                                itemExtent: 50,
                                perspective: 0.005,
                                diameterRatio: 1.2,
                                physics: const FixedExtentScrollPhysics(),
                                // renderChildrenOutsideViewport: true,
                                childDelegate: ListWheelChildBuilderDelegate(
                                  childCount: 60,
                                  builder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Center(
                                        child: Text(
                                          index < 10
                                              ? '0$index'
                                              : index.toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            const Text(
                              'Calories',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text('Time'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1, 2, 3, 4, 5, 6]
                            .map((e) => SizedBox(
                                  // width:
                                  //     (MediaQuery.of(context).size.width - 50) / 6,
                                  child: Card(
                                    elevation: 0,
                                    shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                            color: Color(0xffcccccc),
                                            width: 0.5)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            '10',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'min',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      FilledButton(
                          onPressed: () {},
                          child: const SizedBox(
                              width: double.maxFinite,
                              child: Center(
                                  child: Text(
                                'Save',
                                style: TextStyle(fontSize: 16),
                              ))))
                    ]),
              ),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: Row(
            children: [
              Card(
                color: Theme.of(context).primaryColor.withOpacity(0.05),
                elevation: 0,
                child: Padding(
                    padding: const EdgeInsets.all(20),
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
                      getMissionName(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const Text(
                      'minimum for 10 mins',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child:
                    SvgPicture.asset('assets/images/ic_arrow-square-right.svg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
