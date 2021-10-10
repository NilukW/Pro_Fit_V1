import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class DietPlan extends StatefulWidget {
  static String tag = 'dietplan';
  @override
  _DietPlanState createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardG = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet plan'),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            key: cardA,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.indigo)),
            title: Text("Monday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardB,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.green)),
            title: Text("Tuesday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardC,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.deepPurple)),
            title: Text("Wednesday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardD,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.deepOrange)),
            title: Text("Thursday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardE,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.cyan)),
            title: Text("Friday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardF,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.brown)),
            title: Text("Saturday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.blueAccent[50],
            key: cardG,
            leading: CircleAvatar(
                child: Icon(Icons.one_x_mobiledata, color: Colors.amber)),
            title: Text("Sunday"),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
