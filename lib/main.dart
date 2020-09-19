import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/TodoModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: ChangeNotifierProvider(
          builder: (context) => TodoModel(),
          child: HomePage(),
        )
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title: Text('Todo Application'),
          elevation: 0,
          leading: IconButton(
              icon: Icon(
            Icons.menu,
            color: Colors.white70,
          ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text("02 : 36 PM",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
              Text("current time",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(30)),
                color: Colors.white),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 30, right: 32, top: 8, bottom: 8),
                    title: Text('Make video',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Make video on provider',
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.check_circle, color: Colors.green),
                  ),
                  margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
