import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('store'),
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