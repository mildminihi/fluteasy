import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Mutual funds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: CupertinoSearchTextField(
                onTap: () => print("tab search"),
                placeholder: "SEARCH ANY INVESTMENT PRODUCTS YOU WANT",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child:
                      Text("My watch list", style: TextStyle(fontSize: 18.0)),
                )),
            Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 8,
                        child: Container(
                          child: Center(
                            child: Column(children: [
                              Image.network(
                                  "https://mildspace.files.wordpress.com/2021/12/giveban.png?w=1680"),
                              Text("test1")
                            ]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
