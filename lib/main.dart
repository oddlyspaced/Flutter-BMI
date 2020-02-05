import 'package:awesome_button/awesome_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Body Mass Index Calculator",
      home: App(),
    ));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int height = 0;
  int weight = 0;
  int active = 0; // 0 is nothing, 1 is weight, 2 is height
  Color wColor = Color.fromARGB(255, 34, 36, 48);
  Color hColor = Color.fromARGB(255, 34, 36, 48);

  double bmi = 0;
  String status = "";
  Color statusColor = Colors.green;

  void addDigit(int digit) {
    if (active == 1) {
      addDigitWeight(digit);
    } else if (active == 2) {
      addDigitHeight(digit);
    }
  }

  void addDigitWeight(int digit) {
    //weight = (weight * 10) + digit;
    if (weight == 999) {
      // do nothing
    } else if (weight * 10 + digit > 999) {
      weight = 999;
    } else {
      weight = (weight * 10) + digit;
    }
  }

  void addDigitHeight(int digit) {
    //weight = (weight * 10) + digit;
    if (height == 999) {
      // do nothing
    } else if (height * 10 + digit > 999) {
      height = 999;
    } else {
      height = (height * 10) + digit;
    }
  }

  void deleteDigit() {
    if (active == 1) {
      weight = (weight / 10) as int;
    } else if (active == 2) {
      height = (height / 10) as int;
    }
  }

  void calculateBMI() {
    setState(() {
      bmi = num.parse(((weight / (height * height)) * 10000).toStringAsFixed(1));
      if (bmi < 18.5) {
        status = "Underweight";
        statusColor = Colors.red;
      }
      else if (bmi >=18.5 && bmi <= 24.9) {
        status = "Normal";
        statusColor = Colors.green;
      }
      else if (bmi >= 25 && bmi < 30.0) {
        status = "Overweight";
        statusColor = Colors.red;
      }
      else {
        status = "Obese";
        statusColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 43, 58),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: Center(
                child: Text(
                  "ENTER YOUR DETAILS",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: Center(
                child: Text(
                  '$bmi',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Center(
                child: Text(
                  status,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: statusColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 32,
                        left: 32,
                      ),
                      child: Text(
                        "Your Weight",
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color.fromARGB(255, 95, 97, 108),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        left: 32,
                      ),
                      child: AwesomeButton(
                        blurRadius: 0.0,
                        borderRadius: BorderRadius.circular(50.0),
                        height: 48.0,
                        width: 128.0,
                        onTap: () {
                          active = 1;
                          wColor = Color.fromARGB(255, 0, 4, 30);
                          hColor = Color.fromARGB(255, 34, 36, 48);
                          setState(() {});
                        },
                        color: wColor,
                        child: Text(weight.toString() + " kg",
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 32,
                        left: 32,
                      ),
                      child: Text(
                        "Your Height",
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color.fromARGB(255, 95, 97, 108),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        left: 32,
                      ),
                      child: AwesomeButton(
                        blurRadius: 0.0,
                        borderRadius: BorderRadius.circular(50.0),
                        height: 48.0,
                        width: 128.0,
                        color: hColor,
                        onTap: () {
                          wColor = Color.fromARGB(255, 34, 36, 48);
                          hColor = Color.fromARGB(255, 0, 4, 30);
                          active = 2;
                          setState(() {});
                        },
                        child: Text(height.toString() + " cm",
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 48,
              ),
              child: Column(
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
                          onTap: () {
                            addDigit(1);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(2);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(3);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(4);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "4",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(5);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(6);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(7);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "7",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(8);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(9);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          borderRadius: BorderRadius.circular(0.0),
                          height: 64.0,
                          width: 64.0,
                          onTap: () {
                            addDigit(0);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            addDigit(0);
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontSize: 20),
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
                          onTap: () {
                            deleteDigit();
                            setState(() {});
                            calculateBMI();
                          },
                          color: Color.fromARGB(255, 40, 43, 58),
                          child: Icon(
                            Icons.backspace,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
