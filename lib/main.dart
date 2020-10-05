import 'dart:math';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:share_for_healthier/FakeChartData.dart';
import 'package:share_for_healthier/TransactionData.dart';
import 'package:share_for_healthier/GroupedStackedWeightPatternBarChart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Bank App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Demo Bank App'),
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
  final String fakeBankAccountID = "20201001-1234";
  final String fakeBankAccountBalance = "12345678.90";
  final String fakeBankAccountName = "Demo-account";
  bool isAgreedToShare = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void shareAndAgree() {
    isAgreedToShare = !isAgreedToShare;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              // Bank account and Bank balance
              padding: EdgeInsets.all(8.0),
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        fakeBankAccountName,
                        style: TextStyle(fontSize: 22),
                      ),
                      Spacer(flex: 2),
                      Text(
                        fakeBankAccountID,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Balance",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(flex: 2),
                        Text(
                          fakeBankAccountBalance,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TabBar(tabs: [
                        Container(
                            child: Text(
                          "Today's transactions",
                          style: TextStyle(color: Colors.green[600]),
                        )),
                        Container(
                            child: Text(
                          "This month's transactions",
                          style: TextStyle(color: Colors.redAccent),
                        )),
                        Container(
                            child: Text(
                          "This year's transactions",
                          style: TextStyle(color: Colors.blueAccent),
                        )),
                      ]),
                    ),
                    Container(
                      color: Colors.white,
                      height: 200,
                      child: TabBarView(children: <Widget>[
                        ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount:
                                TransactionData.fakeDailyTransaction.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  height: 50,
                                  color: index % 2 == 0
                                      ? Colors.green[400]
                                      : Colors.green[600],
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(TransactionData
                                            .fakeDailyTransaction[index].date),
                                        Spacer(),
                                        Text(EnumToString.convertToString(
                                            TransactionData
                                                .fakeDailyTransaction[index]
                                                .category)),
                                        Spacer(),
                                        Text(TransactionData
                                            .fakeDailyTransaction[index]
                                            .payment),
                                      ],
                                    ),
                                  ));
                            }),
                        ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount:
                                TransactionData.fakeMonthlyTransaction.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                color: index % 2 == 0
                                    ? Colors.red[200]
                                    : Colors.redAccent,
                                height: 50,
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(TransactionData
                                          .fakeMonthlyTransaction[index].date),
                                      Spacer(),
                                      Text(EnumToString.convertToString(
                                          TransactionData
                                              .fakeMonthlyTransaction[index]
                                              .category)),
                                      Spacer(),
                                      Text(TransactionData
                                          .fakeMonthlyTransaction[index]
                                          .payment),
                                    ],
                                  ),
                                ),
                              );
                            }),
                        isAgreedToShare
                            ? ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount: TransactionData
                                    .fakeYearlyTransaction.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 50,
                                    color: index % 2 == 0
                                        ? Colors.blue[200]
                                        : Colors.lightBlue,
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(TransactionData
                                              .fakeYearlyTransaction[index]
                                              .date),
                                          Spacer(),
                                          Text(EnumToString.convertToString(
                                              TransactionData
                                                  .fakeYearlyTransaction[index]
                                                  .category)),
                                          Spacer(),
                                          Text(TransactionData
                                              .fakeYearlyTransaction[index]
                                              .payment),
                                        ],
                                      ),
                                    ),
                                  );
                                })
                            : GroupedStackedWeightPatternBarChart(
                                FakeChartData.createSampleData()),
                      ]),
                    ),
                    isAgreedToShare
                        ? Container()
                        : Container(
                            child: Column(
                              children: [
                                Text(
                                  "Charts in blue are your expense",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                                Text(
                                  "Charts in red are suggested expense",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                )
                              ],
                            ),
                          ),
                    Container(
                      child: RaisedButton(
                        onPressed: shareAndAgree,
                        color: isAgreedToShare ? Colors.green : Colors.blue,
                        child: isAgreedToShare
                            ? Text("Share and Analyse my transaction history")
                            : Text("Return to the detailed transactions"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Color(Random().nextInt(0xffffffff)),
                    onPressed: () {},
                    child: Text("Some Other Functions"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RaisedButton(
                    color: Color(Random().nextInt(0xffffffff)),
                    onPressed: () {},
                    child: Text("Some Other Functions"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
