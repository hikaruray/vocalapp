import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';



class ManualPlayerPage extends StatefulWidget {
  final String playingKey;
  final String trackName;
  final Playlist playerList;

  const ManualPlayerPage(this.playingKey, this.trackName, this.playerList);

  @override
  _ManualPlayerPageState createState() => _ManualPlayerPageState();
}

class _ManualPlayerPageState extends State<ManualPlayerPage> {
  IconData iconShape = Icons.play_circle_fill_outlined;
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vocal Training App'),
        ),
        backgroundColor: Colors.white10,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/iggy.png'),
              ),
              Text(
                widget.playingKey,
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.trackName,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 200.0,
                child: Divider(
                  color: Colors.lightBlueAccent,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(onTap: (){
                      setState(() {
                        assetsAudioPlayer.previous();
                      });
                    },
                      child: Container(
                        child: Icon(Icons.skip_previous_outlined,color: Colors.blueAccent,size: 70.0,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(onTap: (){
                      if (iconShape==Icons.play_circle_fill_outlined){
                        setState(() {
                          assetsAudioPlayer.open(
                              widget.playerList,
                              loopMode: LoopMode.none,
                          );
                          assetsAudioPlayer.playlistPlayAtIndex(24);
                          iconShape=Icons.pause_circle_filled_outlined;
                        });
                      }else if(iconShape==Icons.pause_circle_filled_outlined){
                        setState(() {
                          iconShape=Icons.play_circle_fill_outlined;
                          assetsAudioPlayer.playOrPause();
                        });
                      }

                    },
                      child: Container(
                          child: Icon(iconShape, color: Colors.blueAccent, size: 70.0,)),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(onTap: (){
                      assetsAudioPlayer.next();
                    },
                      child: Container(
                        child: Icon(Icons.skip_next_outlined,color: Colors.blueAccent,size: 70.0,),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
