import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  String qrData =
      "https://github.com/neon97";  // already generated qr code when the page opens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QrImage(
                  //plce where the QR Image will be shown
                  data: qrData,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  " Kode QR Baru",
                  style: TextStyle(fontSize: 20.0),
                ),
                TextField(
                  controller: qrdataFeed,
                  decoration: InputDecoration(
                    hintText: "Inputkan link atau data anda",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: FlatButton(
                    padding: EdgeInsets.all(15.0),
                    onPressed: () async {

                      if (qrdataFeed.text.isEmpty) {        //a little validation for the textfield
                        setState(() {
                          qrData = "";
                        });
                      } else {
                        setState(() {
                          qrData = qrdataFeed.text;
                        });
                      }

                    },
                    child: Text(
                      "Generate QR",
                      style: TextStyle(
                          color: Colors.pink[300], fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue[200], width: 3.0),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}
