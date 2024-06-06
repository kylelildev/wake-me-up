import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:wakemeup/models/home_mission_card_model.dart';
import 'package:wakemeup/widgets/mission_item_card.dart';

class ModalMissionDetail extends StatelessWidget {
  final bool reverse;

  const ModalMissionDetail({super.key, this.reverse = false});

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("00", "en_US");
    List<String> weekDayName = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun'
    ];

    List<HomeMissionCardType> listTypes = [
      HomeMissionCardType.cycling,
      HomeMissionCardType.dumble,
      HomeMissionCardType.meditation,
      HomeMissionCardType.muscle,
      HomeMissionCardType.running,
      HomeMissionCardType.skipping,
      HomeMissionCardType.treadmill,
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome Akshay',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Text(
                      'What time do you want to exercise?',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
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
                              onSelectedItemChanged: (value) => {},
                              itemExtent: 50,
                              perspective: 0.005,
                              diameterRatio: 1.2,
                              physics: const FixedExtentScrollPhysics(),
                              childDelegate: ListWheelChildBuilderDelegate(
                                childCount: 24,
                                builder: (context, index) {
                                  return Center(
                                    child: Text(
                                      index < 10
                                          ? f.format(index)
                                          : index.toString(),
                                      style: const TextStyle(
                                        fontSize: 36,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                            height: 200,
                            child: ListWheelScrollView.useDelegate(
                              useMagnifier: true,
                              overAndUnderCenterOpacity: 0.2,
                              onSelectedItemChanged: (value) => {},
                              itemExtent: 50,
                              perspective: 0.005,
                              diameterRatio: 1.2,
                              physics: const FixedExtentScrollPhysics(),
                              childDelegate: ListWheelChildBuilderDelegate(
                                childCount: 60,
                                builder: (context, index) {
                                  return Center(
                                    child: Text(
                                      index < 10 ? '0$index' : index.toString(),
                                      style: const TextStyle(
                                        fontSize: 36,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Repeat',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: weekDayName
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
                                  child: SizedBox(
                                    width: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Column(
                                        children: [
                                          Text(
                                            e,
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Mission',
                      style: TextStyle(fontSize: 13, color: Color(0xFF666666)),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          showBarModalBottomSheet(
                            isDismissible: false,
                            topControl: const SizedBox(
                              width: 15,
                            ),
                            context: context,
                            builder: (context) => SingleChildScrollView(
                              child: SafeArea(
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Center(
                                      child: Container(
                                        width: 44,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    primary: false,
                                    shrinkWrap: true,
                                    itemCount: listTypes.length,
                                    itemBuilder: (context, index) =>
                                        MissionItemCard(
                                      type: listTypes[index],
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Push-Up',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(
                                    'assets/images/ic_arrow-square-right.svg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Alarm name',
                      style: TextStyle(fontSize: 13, color: Color(0xFF666666)),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: TextFormField(
                            initialValue: "Need to go gym for exercise",
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Alarm Sound',
                      style: TextStyle(fontSize: 13, color: Color(0xFF666666)),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Fast and Furious.mp3',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                  'assets/images/ic_arrow-square-right.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
