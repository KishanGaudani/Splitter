import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    ),
  );
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<Text> num = [
    Text("1"),
    Text("2"),
    Text("3"),
    Text("4"),
    Text("5"),
    Text("6"),
    Text("7"),
    Text("8"),
    Text("9"),
    Text("10"),
  ];

  List<Text> num2 = [
    Text("1"),
    Text("2"),
    Text("3"),
    Text("4"),
    Text("5"),
    Text("6"),
    Text("7"),
    Text("8"),
    Text("9"),
    Text("10"),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "SPLITTER",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: num2.map((e) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: num.map((e) {
                          return Container(
                              alignment: Alignment.center,
                              height: 90,
                              width: 370,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade700,
                                shape: BoxShape.rectangle,
                              ),
                              child: e);
                        }).toList(),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: num2.map((e) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: num.map((e) {
                            return Container(
                                alignment: Alignment.center,
                                height: 325,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.rectangle,
                                ),
                                child: e);
                          }).toList(),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}
