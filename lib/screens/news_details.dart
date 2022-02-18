import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class NewsScreen extends StatefulWidget {
  final News? news;

  NewsScreen({this.news});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool isPlaying = false;
  FlutterTts _flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();

    _flutterTts.setStartHandler(() {
      setState(() {
        isPlaying = true;
      });
    });

    _flutterTts.setCompletionHandler(() {
      setState(() {
        isPlaying = false;
      });
    });

    _flutterTts.setErrorHandler((err) {
      setState(() {
        print("TTS error occurred: " + err);
        isPlaying = false;
      });
    });
  }
 //*********************************** iOS & Android device TTS setup**********
  void speechSettingsAndroid() {
    _flutterTts.setLanguage("en-US");
    //_flutterTts.setLanguage("bn-IN");
    //_flutterTts.setLanguage("bn-BD");
    _flutterTts.setPitch(1.0); //max is 2.0
    _flutterTts.setSpeechRate(0.85); //max is 1.0
    _flutterTts.setVolume(1.0); //max is 1.0
  }

  void speechSettingsiOS() {
    _flutterTts.setLanguage("en-US");
    _flutterTts.setPitch(1.0); //max is 2.0
    _flutterTts.setSpeechRate(0.5); //max is 1.0
    _flutterTts.setVolume(1.0); //max is 1.0
  }

  Future _speak(String? text) async {
    if (text != null && text.isNotEmpty) {
      var result = await _flutterTts.speak(text);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }

  Future _stop() async {
    var result = await _flutterTts.stop();
    if (result == 1)
      setState(() {
        isPlaying = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    String? description = widget.news!.description;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Hero(
                  tag: widget.news!.imageUrl!,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image(
                      height: 350.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.news!.imageUrl!),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30.0),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Theme.of(context).buttonColor,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(left: 30.0),
                    onPressed: () => print('Add to Favorites'),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30.0,
                    color: Theme.of(context).buttonColor,
                  ),
                ],
              ),
              //**************************** Button action *********************
              Positioned.fill(
                bottom: 10.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10.0),
                    elevation: 12.0,
                    onPressed: () {
                      setState(
                        () {
                          speechSettingsiOS();
                          //speechSettingsAndroid();
                          isPlaying ? _stop() : _speak(description);
                        },
                      );
                    },
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: isPlaying
                        ? Icon(
                            Icons.stop,
                            size: 60,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.play_arrow,
                            size: 60,
                            color: Colors.red,
                          ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 20.0,
                child: IconButton(
                  onPressed: () => print('Add to My List'),
                  icon: Icon(Icons.add),
                  iconSize: 40.0,
                  color: Theme.of(context).buttonColor,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 25.0,
                child: IconButton(
                  onPressed: () => print('Share'),
                  icon: Icon(Icons.share),
                  iconSize: 35.0,
                  color: Theme.of(context).buttonColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.news!.title!.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  widget.news!.date!,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 25.0),
                //************************** Description ***********************
                Container(
                  height: 300.0,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.news!.description!,
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ContentScroll(
            imageUrl: widget.news!.screenshots,
            title: 'More Photos',
            imageHeight: 200.0,
            imageWidth: 250.0,
          ),
        ],
      ),
    );
  }
}
