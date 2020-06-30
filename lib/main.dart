import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

// TODO: Select portrait option in Xcode for ios
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipper',
      home: MyHomePage(title: 'Flipper'),
    );
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
        return '\u1d77';
      case 'h':
        return '\u0265';
      case 'i':
        return '\u1d09';
      case 'j':
        return '\u017f';
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
      case 's':
        return '\u0073';
      case 't':
        return '\u0287';
      case 'u':
        return 'n';
      case 'v':
        return '\u028c';
      case 'w':
        return '\u028d';
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
        return '\u2141';
      case 'J':
        return '\u017f';
      case 'K':
        return '\ua7b0';
      case 'L':
        return '\ua780';
      case 'M':
        return '\u019c';
      case 'P':
        return '\u0500';
      case 'Q':
        return '\u00d2';
      case 'R':
        return '\u1d1a';
      case 'S':
        return '\u0053';
      case 'T':
        return '\ua7b1';
      case 'U':
        return '\u2229';
      case 'V':
        return '\u039b';
      case 'W':
        return '\u028d';
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
      case '\u1d77':
        return 'g';
      case '\u0265':
        return 'h';
      case '\u1d09':
        return 'i';
      case '\u017f':
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

      case '\u2200':
        return 'A';
      case '\u0186':
        return 'C';
      case '\u018e':
        return 'E';
      case '\u2132':
        return 'F';
      case '\u2141':
        return 'G';
      case '\u017f':
        return 'J';
      case '\ua7b0':
        return 'K';
      case '\ua780':
        return 'L';
      case '\u019c':
        return 'M';
      case '\u0500':
        return 'P';
      case '\u00d2':
        return 'Q';
      case '\u1d1a':
        return 'R';
      case '\u0053':
        return 'S';
      case '\ua7b1':
        return 'T';
      case '\u2229':
        return 'U';
      case '\u039b':
        return 'V';
      case '\u028d':
        return 'W';
      case '\u2144':
        return 'Y';

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

      case '\u0196':
        return '1';
      case '\u1105':
        return '2';
      case '\u0190':
        return '3';
      case '\u3123':
        return '4';
      case '\u03DB':
        return '5';
      case '\u3125':
        return '7';

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
