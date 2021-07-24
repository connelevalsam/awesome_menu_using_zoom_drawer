import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String title;
  final zoomController;

  const Home({Key key, this.title, this.zoomController}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: InkWell(
          onTap: () => widget.zoomController.toggle(),
          child: Icon(Icons.menu),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.indigo,
                Colors.indigoAccent,
              ],
            )
        ),
        child: ListView(
          children: [
            Center(
              child: Text(
                "My Home",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(vertical: 10,),
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage("https://picsum.photos/200/300?random=${index.toString()}"),
                        width: 50,
                      ),
                      title: Column(
                        children: [
                          Text(
                            "This is a flutter tutorial on Zoom drawer",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "Dan David Jones",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      )
                    ),
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }
}
