import 'package:flutter/material.dart';
void main () {
  runApp(MaterialApp(
    title: "Wifi Selector",
    home: new Scaffold(
      appBar: AppBar(title: Text("Wifi Selector"),leading: IconButton(icon: Icon(Icons.menu), onPressed: null),),
      body: new Container(
        child: SettingsWidget(),
      ),
    ),
  ));
}

class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => new _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {

  List _cities =
  ["Cluj-Napoca", "Bucuresti", "Timisoara", "Brasov", "Constanta"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

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

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.white,
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text("Select the wifi :"),
                  new DropdownButton(
                    value: _currentCity,
                    items: _dropDownMenuItems,
                    onChanged: changedDropDownItem,
                  ),
                ],
              ),
              new ListTile(
                  title: new TextField(
                    obscureText: true,
                    decoration: InputDecoration.collapsed(hintText: "Enter Password",),
                  ),
                  trailing: new RaisedButton(
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Button Pressed")));
                      },
                      child: new Text("Submit"))
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }

}