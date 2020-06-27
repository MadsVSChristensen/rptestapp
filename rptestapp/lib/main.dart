import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:research_package/research_package.dart';
import 'package:rptestapp/so.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RPTests(),
    );
  }
}

class RPTests extends StatefulWidget {
  @override
  _RPTestsState createState() => _RPTestsState();
}

class _RPTestsState extends State<RPTests> {
  String _encode(Object object) => const JsonEncoder.withIndent(' ').convert(object);

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  void resultCallback(RPTaskResult result) async {
    printWrapped(_encode(result));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: trailTask,
                          )));
                },
                child: Text('Trail Making Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: tappingTask,
                          )));
                },
                child: Text('Tapping Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: reactionTask,
                          )));
                },
                child: Text('Reaction Time Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: rvipTask,
                          )));
                },
                child: Text('Rapid Visual Information Processing Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: letterTask,
                          )));
                },
                child: Text('Letter Tapping Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: palTask,
                          )));
                },
                child: Text('Paired Associates Learning Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: corsiTask,
                          )));
                },
                child: Text('Corsi Block Tapping Test'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RPUITask(
                            onSubmit: resultCallback,
                            task: stroopTask,
                          )));
                },
                child: Text('Stroop Effect Test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
