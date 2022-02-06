import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BDay(),
    );
  }
}

class BDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                'GUPTA JI KA BUDDY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.yellowAccent,
              ),
            ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color:Color(0x917EEEFF),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2,40,2,5),
              child: Center(
                child: InkWell(
                  child: Text(
                    'HAPPY BIRTHDAY SONG',
                    style: TextStyle(
                      color: Color(0xF4F82300),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onTap: () => launch(
                    'https://www.youtube.com/watch?v=BAE2j64gH48',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color:Color(0x917EEEFF),
              width: 500,
              height: 600,
              child: Image.asset(
                  "assets/gupta.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      )
    );
  }
}
