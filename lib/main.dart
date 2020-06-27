import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipper',
      home: MyHomePage(title: 'Flipper'),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showButton = false;
  String _flipText = '';

  void onChange(String value) {
    _flipText = '';
    if (value == '') {
      if (_showButton == true) {
        setState(() {
          _flipText = '';
          hideFloatingButton();
        });
      }
    } else {
      if (_showButton == false) {
        setState(() {
          showFloatingButton();
        });
      }

      for (int i = value.length - 1; i >= 0; i--) {
        setState(() {
          _flipText += flipChar(value[i]);
        });
      }
    }
  }

  String flipChar(String c) {
    switch (c) {
      case 'a':
        return '\u0250';
      case 'b':
        return 'q';
      case 'c':
        return '\u0254';
      case 'd':
        return 'p';
      case 'e':
        return '\u01dd';
      case 'f':
        return '\u025f';
      case 'g':
        return '\u0183';
      case 'h':
        return '\u0265';
      case 'i':
        return '\u1D09';
      case 'j':
        return '\u027e';
      case 'k':
        return '\u029e';
      case 'm':
        return '\u026f';
      case 'n':
        return 'u';
      case 'p':
        return 'd';
      case 'q':
        return 'b';
      case 'r':
        return '\u0279';
      case 't':
        return '\u0287';
      case 'u':
        return 'n';
      case 'v':
        return '\u028c';
      case 'w':
        return '\u028d';
      case 'x':
        return 'x';
      case 'y':
        return '\u028e';

      case 'A':
        return '\u2200';
      case 'C':
        return '\u0186';
      case 'E':
        return '\u018e';
      case 'F':
        return '\u2132';
      case 'G':
        return '\u05e4';
      case 'J':
        return '\u017f';
      case 'L':
        return '\u02e5';
      case 'M':
        return 'W';
      case 'P':
        return '\u0500';
      case 'T':
        return '\u2534';
      case 'U':
        return '\u2229';
      case 'V':
        return '\u039b';
      case 'W':
        return 'M';
      case 'Y':
        return '\u2144';

      case '\u0250':
        return 'a';
      case '\u0254':
        return 'c';
      case '\u01dd':
        return 'e';
      case '\u025f':
        return 'f';
      case '\u0183':
        return 'g';
      case '\u0265':
        return 'h';
      case '\u0131':
        return 'i';
      case '\u027e':
        return 'j';
      case '\u029e':
        return 'k';
      case '\u026f':
        return 'm';
      case '\u0279':
        return 'r';
      case '\u0287':
        return 't';
      case '\u028c':
        return 'v';
      case '\u028d':
        return 'w';
      case '\u028e':
        return 'y';

      case '1':
        return '\u0196';
      case '2':
        return '\u1105';
      case '3':
        return '\u0190';
      case '4':
        return '\u3123';
      case '5':
        return '\u03DB';
      case '6':
        return '9';
      case '7':
        return '\u3125';
      case '9':
        return '6';

      case '!':
        return '\u00A1';
      case '(':
        return ')';
      case ')':
        return '(';
      case '[':
        return ']';
      case ']':
        return '[';
      case '{':
        return '}';
      case '}':
        return '{';
      case '>':
        return '<';
      case '<':
        return '>';
      case ',':
        return '\'';
      case '\'':
        return ',';
      case '`':
        return ',';
      case '&':
        return '\u214b';
      case '.':
        return '\u02d9';
      case '_':
        return '\u203e';
      case '?':
        return '\u00bf';

      case '\u00a1':
        return '!';
      case '\u214b':
        return '&';
      case '\u02d9':
        return '.';
      case '\u203e':
        return '_';
      case '\u00bf':
        return '?';

      default:
        return c;
    }
  }

  void showFloatingButton() {
    setState(() {
      _showButton = true;
      //print('Log: SHOW BUTTON');
    });
  }

  void hideFloatingButton() {
    setState(() {
      _showButton = false;
      //print('Log: HIDE BUTTON');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Enter Text',
                      hintStyle: TextStyle(fontSize: 25.0, color: Colors.grey),
                      labelText: 'Input',
                      labelStyle:
                          TextStyle(fontSize: 25.0, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    onChanged: onChange,
                  ),
                ),
              ),
              Visibility(
                visible: _showButton,
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        '$_flipText',
                        maxLines: null,
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: _showButton,
        child: FloatingActionButton(
          child: Icon(Icons.content_copy),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          tooltip: 'Copy to clipboard',
          onPressed: () {
            Clipboard.setData(ClipboardData(text: _flipText));
            Fluttertoast.showToast(
              msg: 'Flipped text copied',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.green,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
