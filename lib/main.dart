import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'music ui',
      theme: ThemeData(
        backgroundColor: Colors.tealAccent,
      ),
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  MusicApp({Key key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  bool _isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage('assets/music.jpg'),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Song Title',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Singer Name',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Slider(
              value: 10,
              max: 100,
              min: 0,
              activeColor: Colors.red,
              onChanged: (v) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.list),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.slidersH),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.random),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.ellipsisH),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.stepBackward),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(_isPlaying
                      ? FontAwesomeIcons.pause
                      : FontAwesomeIcons.play),
                  color: Colors.red,
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      _isPlaying = !_isPlaying;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.stepForward),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
