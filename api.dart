/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var mydatalist = [];

  @override
  void initState() {
    //API Call
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        //itemCount: snapshot.data.length,
        itemCount: mydatalist.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                leading: Icon(Icons.supervised_user_circle),
                title: Text(mydatalist[index]['name'].toString()),
                subtitle: Text(mydatalist[index]['email'].toString()),
                trailing: Icon(Icons.arrow_circle_right_outlined)),
          );
        },
      ),
    );
  }

  _fetchData() async {
    try {
      //API URL
      var url = Uri.https('jsonplaceholder.typicode.com', 'users');
      //API Call URL
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      //JSON Convert
      var mymap = json.decode(response.body);
      mydatalist = mymap;
      setState(() {
        mydatalist;
      });
      //return mydatalist;
    } catch (error) {
      print("Error in API Calling");
      rethrow;
    }
  }
}*/
