import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff131132),
        appBar: AppBar(
          elevation: 10.0,
          title: Center(
              child: Text(
            'Write your Experience',
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 25.0,
                color: Color(0xffFC2E7E)),
          )),
          backgroundColor: const Color(0xff1D1D3E),
        ),
        body: ExperienceScreen(),
      ),
    ),
  );
}

class ExperienceScreen extends StatefulWidget {
  @override
  _ExperienceScreenState createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    final maxLines = 6;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          child: Padding(
            padding: EdgeInsets.all(1.0),
            child: Text(
              "Write your experience for Malpe Beach",
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 30.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: maxLines * 22.0,
            margin: EdgeInsets.all(12),
            child: TextFormField(
              maxLines: maxLines,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Color(0xffFC2E7E),
              decoration: InputDecoration(
                hintText: "Type Something...",
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffFC2E7E),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'SourceSansPro',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
