import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
    int counter;
    CounterApp() {
      this.counter = 0;
    }
    void increment() {
      this.counter++;
      print(this.counter);
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  
          title: Text("Counter App"),
          centerTitle: true,
          actions: <Widget>[
            Container(  
              margin: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: ListView(  
            children: <Widget>[
                Container( 
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      RaisedButton(  
                        onPressed: () =>{
                          increment(),
                          logEvent("Increment")
                          },
                        color: Colors.red,
                        child: Text("Increment ++",
                        style:TextStyle(color: Colors.white, fontSize: 20.0),
                        )
                      ) 
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}


