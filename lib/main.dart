import 'package:destiniapp/story_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'story_lists.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: DestiniApp(),
        ),
      ),
    );
  }
}

class DestiniApp extends StatefulWidget {
  @override
  _DestiniAppState createState() => _DestiniAppState();
}

class _DestiniAppState extends State<DestiniApp> {
  StoryLists storyL = StoryLists();



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                storyL.getStory(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: (){
                setState(() {
                  storyL.nextStrory(1);
                });
              },
              color: Colors.red,
              child: Text(
                storyL.getAnswer1(),
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ), 
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Visibility(
              visible: storyL.buttonVisible(),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    storyL.nextStrory(2);
                  });
                },
                color: Colors.blue,
                child: Text(
                  storyL.getAnswer2(),
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

