import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pro_fit/model/member.dart';

var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
var data1 = [84.0, 82.0, 81.0, 80.0, 78.0, 75.0, 77.0, 77.0, 76.0, 80.0, 79.0];

Material weightGraph(String title, String priceVal, String subtitle) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    priceVal,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: new Sparkline(
                    data: data1,
                    fillMode: FillMode.below,
                    fillGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey, Colors.amber],
                    ),
                    averageLine: true,
                    enableThreshold: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Material subscription(Member member, String title) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    member.memberCurrentSubscription!.memberPackage!.packageName
                            .toString() +
                        " member",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    DateFormat('yyyy-MM-dd').format(
                            member.memberCurrentSubscription!.startDate) +
                        " to " +
                        DateFormat('yyyy-MM-dd')
                            .format(member.memberCurrentSubscription!.endDate),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Material bmi(String title, String subtitle) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Material proflie(String title) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Material bodyFat(String title, String subtitle) {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    borderRadius: BorderRadius.circular(24.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
