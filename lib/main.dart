import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Wifi Connector",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
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
              //TODO : Have it like the History of Everything app's Title.
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
                new Card(
                  child: new ListTile(
                    title: Text("Uno", overflow: TextOverflow.fade,),
                    subtitle: null, //Say Connected if Connected to this bitch try ? : code block
                    leading: Icon(Icons.wifi_lock),
                    trailing: Icon(Icons.lock_outline),
                    onTap: (){
                      //TODO : check if any password is required, if it is the following has to be called
                      //TODO : convert this into a function, which takes name and the requiredPassword fields/strings ?
                      showDialog(context: context,
                          builder: (_) => new AlertDialog(
                            content: new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text("Type the password :"),
                                new TextField(obscureText: true,),
                              ],
                            ),
                            actions: <Widget>[
                              new RaisedButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Cancel"),
                                color: Colors.redAccent,
                                textColor: Colors.white,),
                              new RaisedButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Submit"),
                                color: Colors.blueAccent,
                                textColor: Colors.white,)
                            ],
                          )
                      );
                    },
                  ),
                ),
                new Card(
                  child: new ListTile(
                    title: Text("Uno", overflow: TextOverflow.fade,),
                    subtitle: null, //Say Connected if Connected to this bitch try ? : code block
                    leading: Icon(Icons.wifi_lock),
                    trailing: Icon(Icons.lock_outline),
                    onTap: (){
                      //TODO : check if any password is required, if it is the following has to be called
                      //TODO : convert this into a function, which takes name and the requiredPassword fields/strings ?
                      showDialog(context: context,
                        builder: (_) => new AlertDialog(
                          content: new Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Text("Type the password :"),
                              new TextField(obscureText: true,),
                            ],
                          ),
                          actions: <Widget>[
                            new RaisedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("Cancel"),
                              color: Colors.redAccent,
                              textColor: Colors.white,),
                            new RaisedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("Submit"),
                              color: Colors.blueAccent,
                              textColor: Colors.white,)
                          ],
                        )
                      );
                    },
                  ),
                ),
              ],
            );
          }
        )
      ),
    );
  }
}
