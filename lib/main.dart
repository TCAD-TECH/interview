import 'package:flutter/material.dart';
import 'package:mobile/apis/getEmployee.dart';
import 'package:mobile/models/employee.dart';

import 'package:mobile/widgets/empListTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Employee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder(
          future: getList(),
          builder: (BuildContext context,
              AsyncSnapshot<List<EmployeeModel>> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                print("object empty");
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.error),
                    ),
                    Text(
                      "no products present",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    )
                  ],
                );
              } else {
                List<EmployeeModel>? empLists = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: empLists!
                          .map((EmployeeModel empData) => EmpTile(empData.id,
                              empData.name, empData.working, empData.exp))
                          .toList(),
                    ),
                  ),
                );
              }
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



 

// Exercise: Develop a Flutter app to display all the employees. Any employee who is been more than 5 years and active with the organization needs to be flagged in green color. Please use the database and the backend of your choice.
