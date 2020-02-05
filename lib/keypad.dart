import 'package:flutter/material.dart';
import 'package:awesome_button/awesome_button.dart';

class NumPad extends StatefulWidget {
  @override
  _NumPadState createState() => _NumPadState();
}

int weight = 0;

int getWeight() {
  return weight;
}

class _NumPadState extends State<NumPad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "1",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "2",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "3",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "4",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "5",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "6",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "7",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "8",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "9",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: AwesomeButton(
                blurRadius: 0.0,
                splashColor: Color.fromRGBO(255, 255, 255, .4),
                borderRadius: BorderRadius.circular(50.0),
                height: 64.0,
                width: 64.0,
                onTap: () => print("tapped"),
                color: Color.fromARGB(255, 40, 43, 58),
                child: Text(
                  "0",
                  style: TextStyle(
                      fontFamily: 'Gilroy', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
