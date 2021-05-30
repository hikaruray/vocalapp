import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:my_card_app/playlists.dart';
import 'manual_player_page.dart';

class ManualMenu extends StatefulWidget {
  @override
  _ManualMenuState createState() => _ManualMenuState();
}

class _ManualMenuState extends State<ManualMenu> {
  @override
  void initState(){
    super.initState();
    myBanner1.load();
  }
  final BannerAd myBanner1 = BannerAd(
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
          title: Text('Manual Play Menu'),
        ),
        backgroundColor: Colors.black,
        body: ListView(
            children: <Widget>[
              GestureDetector(onTap: (){
                Navigator.pop(context);
                myBanner1.dispose();
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
              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('5 Tone Scale','Playing from C1 to C5',playlist1())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('1 Octave Scale','Playing from C1 to C5', playlist2())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('1.5 Octave Scale','Playing from C1 to C5',playlist4())));
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
                child: AdWidget(ad: myBanner1),
              ),
              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('2 Octave Scale','Playing from C1 to C5',playlist4())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('Long Tone Scale','Playing from C1 to C5',playlist5())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('5 Tone Step Scale','Playing from C1 to C5',playlist6())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('Pentatonic Major Scale','Playing from C1 to C5',playlist7())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('Pentatonic Minor Scale','Playing from C1 to C5',playlist8())));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManualPlayerPage('Blues Scale','Playing from C1 to C5', playlist9())));
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
