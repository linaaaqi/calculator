import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Message {
  Message({
    @required this.methodName,
    @required this.data,
  });

  final String methodName;
  final Data data;

  factory Message.fromJson(String str) => Message.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Message.fromMap(Map<String, dynamic> json) => Message(
        methodName: json["methodName"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "methodName": methodName,
        "data": data.toMap(),
      };
}

class Data {
  Data({
    @required this.address,
    @required this.lat,
    @required this.lng,
  });

  final String address;
  final double lat;
  final double lng;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        address: json["address"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "address": address,
        "lat": lat,
        "lng": lng,
      };
}

class WebviewPage extends StatelessWidget {
  WebviewPage({Key key}) : super(key: key);

  final String url = 'https://blog.losgif.com/';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Color(0xFFFFFFFF),
        child: SafeArea(child: _buildWebView()));
  }

  Widget _buildWebView() {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      javascriptChannels: {
        JavascriptChannel(
            name: 'H5JavascriptChannel',
            onMessageReceived: (JavascriptMessage message) {
              Message msg = Message.fromJson(message.message);

              Modular.to.pop(msg);
            })
      },
    );
  }
}
