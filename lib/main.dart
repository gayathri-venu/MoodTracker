import 'package:flutter/material.dart';

void main() {
  runApp(Dairy());
}

class Dairy extends StatefulWidget {
  @override
  _Dairy createState() => _Dairy();
}

class _Dairy extends State<Dairy> {
  final mood = <int>[];
  final daily = <String>[];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Let us know how you are today...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 40.0,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
              width: 200.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset('images/1.png'),
                      onPressed: () {
                        mood.add(1);
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset('images/2.png'),
                      onPressed: () {
                        mood.add(2);
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset('images/3.png'),
                      onPressed: () {
                        mood.add(3);
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset('images/4.png'),
                      highlightColor: Colors.white70,
                      onPressed: () {
                        mood.add(4);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Center(
                child: TextField(
                  minLines: 5,
                  maxLines: 10,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Write it down here',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                    filled: true,
                    fillColor: Color(0xFFDBEDFF),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  controller: controller,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              daily.add(controller.text);
              controller.clear();
            });
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
