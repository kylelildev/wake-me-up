import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({super.key});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Need to go\ngym for exercise',
                    style: TextStyle(fontSize: 24)),
                const Text('05:30', style: TextStyle(fontSize: 120)),
                DottedBorder(
                  dashPattern: const [4, 4, 4, 4],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(15),
                  color: const Color(0xFFDD408F),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                    child: Text(
                      'if you failed to complete your task or not start so we will deduct some coins.',
                      style: TextStyle(color: Color(0xFFDD408F)),
                    ),
                  ),
                ),
                SvgPicture.asset('assets/images/alarm_noti.svg')
              ],
            ),
          ),
        ));
  }
}
