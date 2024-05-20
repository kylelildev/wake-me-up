import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('mission'),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text('Hello,'),
                              Text(
                                'Leagle',
                                style: TextStyle(
                                    fontSize: 33.0,
                                    color: Theme.of(context).cardColor),
                              )
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [],
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
