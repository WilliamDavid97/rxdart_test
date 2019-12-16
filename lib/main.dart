import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

import 'package:rxdart_test/test.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Tes tes;
  @override
  void initState() {
    tes = Tes();
    tes.someBasicFn();
    print(tes.someBasicFn());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rxdart Example', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: StreamBuilder(
        //  initialData: ['hello'],
        stream: tes.obs(),
        builder: (context, snapshot) {
          print(snapshot.data);
          return Container(
              child: Center(child: Text(snapshot.data.toString())));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('show'),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'blob/github_api.dart';
// import 'blob/search_widget.dart';

// void main() {
//   runApp(SearchApp(api: GithubApi()));
// }

// class SearchApp extends StatefulWidget {
//   final GithubApi api;

//   SearchApp({Key key, this.api}) : super(key: key);

//   @override
//   _RxDartGithubSearchAppState createState() => _RxDartGithubSearchAppState();
// }

// class _RxDartGithubSearchAppState extends State<SearchApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'RxDart Github Search',
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         primarySwatch: Colors.grey,
//       ),
//       home: SearchScreen(api: widget.api),
//     );
//   }
// }
