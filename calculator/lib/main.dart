import "package:flutter/material.dart";
import "package:math_expressions/math_expressions.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String UserInput = "";
  String Output = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(20),
                        child: Text(
                          UserInput,
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
                        child: Text(
                          Output,
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("C");
                            });
                          },
                          child: Text(
                            "C",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("backspace");
                            });
                          },
                          child: Image(
                            image: AssetImage("assets/backspace.png"),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("/");
                            });
                          },
                          child: Image(
                            image: AssetImage("assets/divide.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("7");
                            });
                          },
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("8");
                            });
                          },
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("9");
                            });
                          },
                          child: Text(
                            "9",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("*");
                            });
                          },
                          child: Text(
                            "x",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("4");
                            });
                          },
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("5");
                            });
                          },
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("6");
                            });
                          },
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("-");
                            });
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("1");
                            });
                          },
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("2");
                            });
                          },
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("3");
                            });
                          },
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("+");
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: null,
                          child: Text(""),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("0");
                            });
                          },
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons(".");
                            });
                          },
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              HandleButtons("=");
                            });
                          },
                          child: Text(
                            "=",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  HandleButtons(String text) {
    if (text == "=") {
      Output = CalculateResult();
      UserInput = Output;

      if (UserInput.endsWith(".0")) {
        UserInput = UserInput.replaceAll(".0", "");
      }

      if (Output.endsWith(".0")) {
        Output = Output.replaceAll(".0", "");
        return;
      }
    }

    if (text == "C") {
      UserInput = "";
      Output = "0";
      return;
    }

    if (text == "backspace") {
      if (UserInput.isNotEmpty) {
        UserInput = UserInput.substring(0, UserInput.length - 1);
        return;
      } else {
        Output = "0";
        return;
      }
    }

    if ((UserInput.endsWith("+") ||
            UserInput.endsWith("-") ||
            UserInput.endsWith("*") ||
            UserInput.endsWith("/")) &&
        (text == "+" || text == "-" || text == "*" || text == "/")) {
      UserInput = UserInput.substring(0, UserInput.length - 1) + text;
      return;
    }

    UserInput += text;
  }

  String CalculateResult() {
    try {
      var exp = Parser().parse(UserInput);
      var eval = exp.evaluate(EvaluationType.REAL, ContextModel());
      return eval.toString();
    } catch (e) {
      return "Error";
    }
  }
}
