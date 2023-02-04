import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe, unused_import
import 'package:starflut/starflut.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
            child: Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://w0.peakpx.com/wallpaper/385/319/HD-wallpaper-anime-scenery-art-japan-japanese-anime-scenery-night.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintMaxLines: 12,
                    hintText: "INPUT YOU USER NAME ! ",
                    labelText:
                        "Please input to be carefull can be do for it ! ",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.red)),
              )
            ],
          ),
        )));
  }
}
