import 'dart:ui';
import 'package:flutter/material.dart';

class SpotifyUI extends StatefulWidget {
  SpotifyUI({Key key}) : super(key: key);

  @override
  _SpotifyUIState createState() => _SpotifyUIState();
}

class _SpotifyUIState extends State<SpotifyUI> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left_rounded),
        actions: [
          Icon(Icons.more_vert),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(
                "https://i.scdn.co/image/ab67706f00000003b128a8c032b91d451d2d881d",
                width: 200,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "This Is Mozart",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Takip Et",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "BY SPOTIFY • 379.634 FOLLOWERS",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 15.0, bottom: 15.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), color: Colors.green),
                child: Text(
                  "SUFFLE PLAY",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Download",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Switch(value: isSwitched, onChanged: (value) => isSwitched = value),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Image.network("https://m.media-amazon.com/images/I/811XElWWATL._SS500_.jpg"),
                    title: Text(
                      "Serenade No.13 in G Major, K. 525",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Wolfgang Amadeus Mozart, Capella Istopolitna"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    leading: Image.network(
                        "https://data.opus3a.com/product_photo/66/664c3ce183cd532e6f01401a7939181e/max/b2731bad55f75947d40e60b86d9d71c0.jpg"),
                    title: Text(
                      "Piano Sonata No. 16",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Wolfgang Amadeus Mozart, Lang Lang"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    leading: Image.network("https://upload.wikimedia.org/wikipedia/commons/0/0a/Mozart_by_Martin_Knoller_1773.jpg"),
                    title: Text(
                      "Symphony No.25 in G minor",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Wolfgang Amadeus Mozart, Academy of St. Martin"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
