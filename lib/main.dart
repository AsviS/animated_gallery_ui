import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Animated Gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showSecondPage(BuildContext context, String tag, String img) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Hero(
              tag: tag,
              child: Image.asset(img),
            ),
          ),
        ),
      ),
    );
  }

  Widget contain(String tag, String img){
    return Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  child: Hero(
                    tag: tag,
                    child: Image.asset(img, fit: BoxFit.cover),
                  ),
                  onTap: () => _showSecondPage(context, tag, img),
                ),
              );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            // Generate 100 Widgets that display their index in the List
            children: <Widget>[
              contain('my-hero-animation-tag1', 'assets/bnr.png'),
              contain('my-hero-animation-tag2', 'assets/butter.jpeg'),
              contain('my-hero-animation-tag3', 'assets/design.jpeg'),
              contain('my-hero-animation-tag4', 'assets/flower.jpeg'),
              contain('my-hero-animation-tag5', 'assets/hamb.jpg'),
              contain('my-hero-animation-tag6', 'assets/rose.jpg'),
              contain('my-hero-animation-tag7', 'assets/bnr.png'),
              contain('my-hero-animation-tag8', 'assets/butter.jpeg'),
              contain('my-hero-animation-tag9', 'assets/design.jpeg'),
              contain('my-hero-animation-tag10', 'assets/flower.jpeg'),
              contain('my-hero-animation-tag11', 'assets/hamb.jpg'),
              contain('my-hero-animation-tag12', 'assets/rose.jpg'),
              contain('my-hero-animation-tag13', 'assets/bnr.png'),
              contain('my-hero-animation-tag14', 'assets/butter.jpeg'),
              contain('my-hero-animation-tag15', 'assets/design.jpeg'),
              contain('my-hero-animation-tag16', 'assets/flower.jpeg'),
              contain('my-hero-animation-tag17', 'assets/hamb.jpg'),
              contain('my-hero-animation-tag18', 'assets/rose.jpg'),
            ]));
  }
}
