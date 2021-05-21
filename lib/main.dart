import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: ThemeData(
    primaryColor: Colors.blue[900],
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent[500],
    textTheme: ButtonTextTheme.primary,
    )
    ),
      home: Dash()
    );
  }

}

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bank"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Image.network("https://cdn.pixabay.com/photo/2015/10/14/18/43/bank-988164_960_720.png")
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/bank.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 32,
                  ),
                  Text("Contatos", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
