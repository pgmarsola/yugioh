import 'package:flutter/material.dart';
import 'package:yugioh/utils/colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _user = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - MediaQuery.of(context).padding.top) / 100;

    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          color: background,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: screenHeight * 40,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/gif.gif",
                        scale: 1.0,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: screenHeight * 5),
                          child: Text(
                            'Super Battle Trunfo',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "ZEF",
                                fontSize: screenHeight * 4),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 5,
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeight * 2),
                  child: TextFormField(
                    controller: _user,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: vinho, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
