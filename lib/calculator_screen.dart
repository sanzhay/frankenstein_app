import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String value = '';
  String history = '0';
  final _controller = TextEditingController();
  double result = 0.0;

  double n1 = 0;
  double n2 = 0;
  String op = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  result.toString(),
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              controller: _controller,
                            ),
                          ),
                          // end
                        ),
                        Expanded(
                          flex: 1,
                          child: FlatButton(
                            color: Colors.grey,
                            onPressed: () {
                              setState(() {
                                _controller.text = '';
                              });
                            },
                            child: Text('Clear'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 300.0,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '1';
                                    },
                                    child: Text('1'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '2';
                                    },
                                    child: Text('2'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '3';
                                    },
                                    child: Text('3'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (op == '') {
                                          n1 = double.parse(_controller.text);
                                        } else {
                                          if (op == '-') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 - n2;
                                            n1 = result;
                                          } else if (op == '+') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 + n2;
                                            n1 = result;
                                          } else if (op == '*') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 * n2;
                                            n1 = result;
                                          } else if (op == '/') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 / n2;
                                            n1 = result;
                                          }
                                        }
                                        op = '+';
                                        _controller.text = '';
                                      });
                                    },
                                    child: Text('+'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '4';
                                    },
                                    child: Text('4'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '5';
                                    },
                                    child: Text('5'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '6';
                                    },
                                    child: Text('6'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (op == '') {
                                          n1 = double.parse(_controller.text);
                                        } else {
                                          if (op == '-') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 - n2;
                                            n1 = result;
                                          } else if (op == '+') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 + n2;
                                            n1 = result;
                                          } else if (op == '*') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 * n2;
                                            n1 = result;
                                          } else if (op == '/') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 / n2;
                                            n1 = result;
                                          }
                                        }
                                        op = '-';
                                        _controller.text = '';
                                      });
                                    },
                                    child: Text('-'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '7';
                                    },
                                    child: Text('7'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '8';
                                    },
                                    child: Text('8'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '9';
                                    },
                                    child: Text('9'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (op == '') {
                                          n1 = double.parse(_controller.text);
                                        } else {
                                          if (op == '-') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 - n2;
                                            n1 = result;
                                          } else if (op == '+') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 + n2;
                                            n1 = result;
                                          } else if (op == '*') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 * n2;
                                            n1 = result;
                                          } else if (op == '/') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 / n2;
                                            n1 = result;
                                          }
                                        }
                                        op = '*';
                                        _controller.text = '';
                                      });
                                    },
                                    child: Text('*'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '0';
                                    },
                                    child: Text('0'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    onPressed: () {
                                      _controller.text += '.';
                                    },
                                    child: Text('.'),
                                  ),
                                ),

                                // ===================================
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (op == '') {
                                          n1 = double.parse(_controller.text);
                                        } else {
                                          if (op == '-') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 - n2;
                                            n1 = result;
                                          } else if (op == '+') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 + n2;
                                            n1 = result;
                                          } else if (op == '*') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 * n2;
                                            n1 = result;
                                          } else if (op == '/') {
                                            n2 = double.parse(_controller.text);
                                            result = n1 / n2;
                                            n1 = result;
                                          }
                                        }
                                        op = '/';
                                        _controller.text = '';
                                      });
                                    },
                                    child: Text('/'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
