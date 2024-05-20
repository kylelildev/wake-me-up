import 'package:flutter/material.dart';

class HomeAlarmPlan extends StatefulWidget {
  const HomeAlarmPlan({super.key});

  @override
  State<HomeAlarmPlan> createState() => _HomeAlarmPlanState();
}

class _HomeAlarmPlanState extends State<HomeAlarmPlan> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: Row(
          children: [
            const Card(
              elevation: 0,
              child: SizedBox(
                width: 70,
                height: 70,
                child: Icon(Icons.abc),
              ),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '05:00 AM',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'Jogging for 30 mins',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: light,
                onChanged: (bool value) {
                  setState(() {
                    light = value;
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
