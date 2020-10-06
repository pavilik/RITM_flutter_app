import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'opa.dart';

void main() => runApp(MyApp());

class TopTems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var wordPair = WordPair.random();

    throw UnimplementedError();
  }
}

class MyApp extends StatelessWidget {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    double opacityLevel = 1.0;
    _changeOpacity();

    return MaterialApp(
      title: 'RITM 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RITM'),
        ),
        body: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.lightGreenAccent, border: Border.all(width: 5)),
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: Colors.amber[index * 100],
                  child: AnimatedOpacity(
                      opacity: index / 10,
                      duration: Duration(seconds: 3),
                      child: Center(
                        child: Column(children: [
                          Text('Entry ${index} ${WordPair.random()}'),
                          Text("data"),
                          FloatingActionButton(onPressed: null)
                        ]),
                      )),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ),
      ),
    );
  }
}

void setState(double Function() param0) {}
