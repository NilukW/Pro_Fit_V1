import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pro_fit/auth/login.dart';
import 'package:pro_fit/member/dietplan.dart';
import 'package:pro_fit/member/workoutplan.dart';

import 'member/charts.dart';
import 'model/member.dart';
import 'model/memberRepository.dart';

class Home extends StatefulWidget {
  static String tag = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  late User _user;
  int counter = 0;
  final MemberRepository repository = MemberRepository();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Text("Hello Niluk "),
          centerTitle: true,
          actions: <Widget>[
            new Stack(
              children: <Widget>[
                new IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    }),
                counter != 0
                    ? new Positioned(
                        right: 11,
                        top: 11,
                        child: new Container(
                          padding: EdgeInsets.all(2),
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '$counter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : new Container()
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.jpg"),
                          backgroundColor: Colors.amber,
                          radius: 50.0,
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Niluk",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight + Alignment(0, .3),
                      child: Text(
                        'Gold Member',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight + Alignment(0, .8),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Verified',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                title: const Text('Body mesurements'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.grid_on,
                  color: Colors.green,
                ),
                title: const Text('Workout plan'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(WorkoutPlan.tag);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.food_bank,
                  color: Colors.green,
                ),
                title: const Text('Diet plan'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(DietPlan.tag);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.event_available,
                  color: Colors.green,
                ),
                title: const Text('Class schedule'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.green,
                ),
                title: const Text('Logout'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(Login.tag);
                },
              ),
            ),
          ],
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: repository.getStream(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return LinearProgressIndicator();
            }
            return getMemberData(context, snapshot.data?.docs ?? [], _user.uid);
          }),
    );
  }

  void getCurrentUser() async {
    User currentUser = _firebaseAuth.currentUser!;
    setState(() {
      _user = currentUser; //currentUser.email!;
    });
  }
}

Widget getMemberData(BuildContext context, List<DocumentSnapshot>? snapshot,
    String currentUserId) {
  Member _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
    final member = Member.fromSnapshot(snapshot);
    return member;
  }

  Member memberData(BuildContext context, List<DocumentSnapshot>? snapshot) {
    var list = snapshot!.map((data) => _buildListItem(context, data));
    print(list);
    return list.where((element) => element.uid == currentUserId).first;
  }

  return Container(
    color: Color(0xffE5E5E5),
    child: StaggeredGridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: weightGraph("Weight progress", "65 kg", "+ 12.9% of target"),
        ),
        Padding(padding: const EdgeInsets.all(8.0), child: proflie("Profile")),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: bmi("BMI", "23.6"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: bodyFat("Body fat", "15%"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: subscription(memberData(context, snapshot), "Subscription"),
        ),
      ],
      staggeredTiles: [
        StaggeredTile.extent(4, 250.0),
        StaggeredTile.extent(2, 335.0),
        StaggeredTile.extent(2, 155.0),
        StaggeredTile.extent(2, 155.0),
        StaggeredTile.extent(4, 150.0),
      ],
    ),
  );
}
