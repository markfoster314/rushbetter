import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rushbetter/utilities/constants.dart';

class RusheeScreen extends StatefulWidget {
  @override
  _RusheeScreenState createState() => _RusheeScreenState();
}

class _RusheeScreenState extends State<RusheeScreen> {

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}