import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Wifi Connector",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        body: new Column(
//      children: <Widget>[
//        new Expanded(
//            child: new Container(
//          child: new CustomScrollView(
//            scrollDirection: Axis.vertical,
//            slivers: <Widget>[
//              new SliverAppBar(
//
//                expandedHeight: 150.0,
//                backgroundColor: Colors.transparent,
//              )
//            ],
//          ),
//        ))
//      ],
//    ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                title: Text("Setting Up Wifi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Image.network(
                  "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Builder(
          builder: (BuildContext context) {
            return ListView(
              children: <Widget>[
                ExpansionTile(
                  leading: Icon(Icons.wifi),
                  title: new Text("Uno"),
                  trailing: Icon(Icons.arrow_drop_down),
                  children: [
                    new ListTile(
                        title: new TextField(obscureText: true,),
                        trailing: new RaisedButton(
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text("Button Pressed")));
                            },
                            child: new Text("Submit"))
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.wifi),
                  title: new Text("Dos"),
                  trailing: Icon(Icons.arrow_drop_down),
                  children: [
                    new ListTile(
                        title: new TextField(obscureText: true,),
                        trailing: new RaisedButton(
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text("Button Pressed")));
                            },
                            child: new Text("Submit"))
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.wifi),
                  title: new Text("Tres"),
                  trailing: Icon(Icons.arrow_drop_down),
                  children: [
                    new ListTile(
                        title: new TextField(obscureText: true,),
                        trailing: new RaisedButton(
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text("Button Pressed")));
                            },
                            child: new Text("Submit"))
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.wifi),
                  title: new Text("Quatro"),
                  trailing: Icon(Icons.arrow_drop_down),
                  children: [
                    new ListTile(
                        title: new TextField(obscureText: true,),
                        trailing: new RaisedButton(
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text("Button Pressed")));
                            },
                            child: new Text("Submit"))
                    ),
                  ],
                ),
              ],
            );
          }
        )
      ),
    );
  }
}
