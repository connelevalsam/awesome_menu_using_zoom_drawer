import 'package:flutter/material.dart';

import 'home.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 300,
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.only(
                          bottom: 10, ),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: new NetworkImage("https://images.unsplash.com/photo-1606561956792-cd1dc8b7f7dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1532&q=80"),
                              )),
                        ),
                      ),
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Connel",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      InkWell(
                        onTap: () {
                          print("Edit profile");
                        },
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text("Home", style: TextStyle(color: Colors.white,),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                title: Text("Products", style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              ListTile(
                title: Text("Services", style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              ListTile(
                title: Text("Payment", style: TextStyle(color: Colors.white,)),
              ),
              ListTile(
                title: Text("Refer & Earn", style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              SizedBox(
                height:
                20.0,
              ),
              Divider(
                color: Colors.blue[100],
                thickness: 1,
              ),
              SizedBox(
                height:
                20.0,
              ),
              ListTile(
                title: Text("Contact Us", style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              ListTile(
                title: Text("About Us", style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              Container(
                margin: EdgeInsets.only(right: 300.0),
                child: ListTile(
                  tileColor: Colors.white,
                  title: Text("Logout", style: TextStyle(color: Colors.red,)),
                  // onTap: () => _handleLogout(context)

                ),
              ),
              SizedBox(
                height:
                20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

