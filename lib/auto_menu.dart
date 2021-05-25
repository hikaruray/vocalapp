import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:my_card_app/player_page.dart';
import 'player_page.dart';

class AutoMenu extends StatefulWidget {
  @override
  _AutoMenuState createState() => _AutoMenuState();
}

class _AutoMenuState extends State<AutoMenu> {
  @override
  void initState(){
    super.initState();
    myBanner2.load();
  }
  final BannerAd myBanner2 = BannerAd(
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
          title: Text('Auto Play Menu'),
        ),
        backgroundColor: Colors.white10,
        body: ListView(
          children: <Widget>[
            GestureDetector(onTap: (){
              Navigator.pop(context);
              // myBanner2.dispose();
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
                        Icons.arrow_back_outlined,
                        size: 50.0,
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'BACK TO MENU',
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('5 Tone Scale','assets/auto/auto5full.mp3','Push to Play/Pause')));
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
                        '5 Tone',
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
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('1 Octave Scale','assets/auto/auto1full.mp3','Push to Play/Pause')));
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
                        'Octave',
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
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('1.5 Octave Scale','assets/auto/auto15full.mp3','Push to Play/Pause')));
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
                        '1.5 Octave',
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
            Container(
              height: 60.0,
              width:500.0,
              // child: AdWidget(ad: myBanner2),
            ),
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('2 Octave Scale','assets/auto/auto2full.mp3','Push to Play/Pause')));
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
                        '2 Octave',
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
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('Long Tone Scale','assets/auto/longtonefull.mp3','Push to Play/Pause')));
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
                        'Long Tone',
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
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('5 Tone Step Scale','assets/auto/step5full.mp3','Push to Play/Pause')));
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
                        '5 Tone Step',
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
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('Pentatonic Major Scale','assets/auto/pentamajorfull.mp3','Push to Play/Pause')));
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
                        'Pentatonic Major',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('Pentatonic Minor Scale','assets/auto/pentaminorfull.mp3','Push to Play/Pause')));
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
                        'Pentatonic Minor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerPage('Blues Scale','assets/auto/bluesfull.mp3','Push to Play/Pause')));
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
                        'Blues',
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

          ],
        ),
      ),
    );
  }
}
