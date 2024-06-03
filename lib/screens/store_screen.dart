import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listCategories = [
      {
        'title': 'Men\'s',
        'image': 'assets/images/store/popular_categories/cat1.png'
      },
      {
        'title': 'Women\'s',
        'image': 'assets/images/store/popular_categories/cat2.png'
      },
      {
        'title': 'Electronics',
        'image': 'assets/images/store/popular_categories/cat3.png'
      },
      {
        'title': 'Beauty',
        'image': 'assets/images/store/popular_categories/cat4.png'
      },
      {
        'title': 'Furniture',
        'image': 'assets/images/store/popular_categories/cat5.png'
      },
    ];

    List<String> listCampaigns = [
      'assets/images/store/campaign/cam1.png',
      'assets/images/store/campaign/cam2.png',
      'assets/images/store/campaign/cam3.png',
    ];

    List<String> listSpotlights = [
      'assets/images/store/spotlight/spot1.png',
      'assets/images/store/spotlight/spot2.png',
    ];

    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                  child: Text(
                    'Popular \nCategories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listCategories.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            width: 80,
                            child: Column(
                              children: [
                                IconButton(
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                  icon: Image(
                                    image: AssetImage(
                                        listCategories[index]['image']),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(listCategories[index]['title'])
                              ],
                            ),
                          )),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                  child: Text(
                    'Super Coin Savers',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 203,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listCampaigns.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            width: 153,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Image.asset(listCampaigns[index]),
                          )),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 15.0, top: 25),
                  child: Text(
                    'In the Spotlight',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 233,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listSpotlights.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            clipBehavior: Clip.hardEdge,
                            margin: const EdgeInsets.only(left: 15),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            width: 215,
                            child: Image(
                              image: AssetImage(listSpotlights[index]),
                            ),
                          )),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            )
          ],
        ),
      )),
    );
  }
}
