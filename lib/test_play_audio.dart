import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  AudioPlayer player = AudioPlayer();
  AudioPlayer playerTwo = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Play Audio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                //Give Me A Smile by Free Music | https://soundcloud.com/fm_freemusic
                // Music promoted by https://www.chosic.com/free-music/all/
                // Creative Commons Attribution 3.0 Unported License
                // https://creativecommons.org/licenses/by/3.0/deed.en_US
                await player.play(AssetSource('audio/smile.mp3'));
              },
              child: const Text('Play Audio Asset'),
            ),
            ElevatedButton(
              onPressed: ()  {
                //Give Me A Smile by Free Music | https://soundcloud.com/fm_freemusic
                // Music promoted by https://www.chosic.com/free-music/all/
                // Creative Commons Attribution 3.0 Unported License
                // https://creativecommons.org/licenses/by/3.0/deed.en_US;
                 player.stop();
              },
              child: const Text('Stop Audio Asset'),
            ),
            ElevatedButton(
              onPressed: () async {
                //add usesCleartextTraffic in manifest for http request
                //don't forget to add internet permission in manifest
                //if still not work, you need to run flutter clean
                await playerTwo.play(UrlSource('http://103.67.187.87/smile.mp3'));
              },
              child: const Text('Play Audio URL'),
            ),
            ElevatedButton(
              onPressed: ()  {
                //Give Me A Smile by Free Music | https://soundcloud.com/fm_freemusic
                // Music promoted by https://www.chosic.com/free-music/all/
                // Creative Commons Attribution 3.0 Unported License
                // https://creativecommons.org/licenses/by/3.0/deed.en_US;
                playerTwo.stop();
              },
              child: const Text('Stop Audio URL'),
            ),
          ],
        ),
      ),
    );
  }
}
