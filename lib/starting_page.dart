import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:my_card_app/auto_menu.dart';
import 'package:my_card_app/manual_menu.dart';

class StartingPage extends StatefulWidget {

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  void initState(){
    super.initState();
    myBanner.load();
  }
  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-3940256099942544/6300978111',
    size: AdSize.banner,
    request: AdRequest(),
    listener: AdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('Ad loaded.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        ad.dispose();
        print('Ad failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) => print('Ad closed.'),
      // Called when an ad is in the process of leaving the application.
      onApplicationExit: (Ad ad) => print('Left application.'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vocal Training App'),
        ),
        backgroundColor: Colors.white10,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/iggy.png'),
            ),
            Text(
              'Vocal School Iggy',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Vocal Training App',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 60,
              width: 500,
              child: AdWidget(ad: myBanner),
            ),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManualMenu()),
                      );
                      // myBanner.dispose();
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.library_music,
                              size: 50.0,
                              color: Colors.lightBlueAccent,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Manual Track',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AutoMenu()),
                      );
                      // myBanner.dispose();
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.all(
                          25.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.library_music,
                              size: 50.0,
                              color: Colors.lightBlueAccent,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Auto Play',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    color: Colors.white10,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        25.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.library_music,
                            size: 50.0,
                            color: Colors.lightBlueAccent,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Videos ~Coming Soon~',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    color: Colors.white10,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        25.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.library_music,
                            size: 50.0,
                            color: Colors.lightBlueAccent,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'DEMO ~Coming Soon~',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

