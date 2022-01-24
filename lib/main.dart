import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADD TWO NUMBERS"),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "First Number"),
                    controller: n1,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Second Number"),
                    controller: n2,
                    keyboardType: TextInputType.number,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      int sum = int.parse(n1.text) + int.parse(n2.text);
                      result = sum.toString();
                    });
                    Fluttertoast.showToast(
                        msg: "$result",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 60,
                        backgroundColor: Colors.purple,
                        textColor: Colors.white,
                        fontSize: 25.0);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple,
                    child: Center(
                        child: Text(
                      "ADD Numbers",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
