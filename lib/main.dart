import 'package:flutter/material.dart';

void main () {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    new ListTile(title: Text("Entry One"),trailing: Icon(Icons.terrain),),
                    new ListTile(title: Text("Entry Two"),trailing: Icon(Icons.terrain),),
                    new ListTile(title: Text("Entry Three"),trailing: Icon(Icons.terrain),)
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: new AppBar(
          leading: IconButton(icon : Icon(Icons.menu),onPressed: null,),
          title: Text("Sign-In to Network"),
        ),
        body: new AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppBodyState();
  }
}

class AppBodyState extends State<AppBody> {
  List _cities =
  ["Cluj-Napoca", "Bucuresti", "Timisoara", "Brasov", "Constanta"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;
  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }
  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("SSID",style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(items: _dropDownMenuItems,decoration: InputDecoration(border: OutlineInputBorder()),),
              ),
              new Text("PassPhrase",style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              new RaisedButton(
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Button Pressed")));
                  },
                  child: new Text("Submit"),
                color: Colors.blue,
                textColor: Colors.white,
              )
            ],
          ),
        )
    );
  }
}