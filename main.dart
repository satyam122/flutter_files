import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/chewie.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.deepOrange[300],
        appBar: AppBar(
          title: Text('Media Player'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChewieListItem(
              //videoPlayerController: VideoPlayerController.asset(
              // 'video/vid.mp4',
              //),
              videoPlayerController: VideoPlayerController.network(
                  'https://github.com/satyam122/flutter_files/blob/master/butterfly.mp4'),
              looping: true,
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    'MUSIC PLAYER',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.white60,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    RaisedButton(onPressed: () {
                      print('Click!');
                      var audio = AudioCache();
                      audio.play('song.mp3');
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
