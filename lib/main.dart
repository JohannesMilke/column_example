import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Column Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              color: Colors.green,
              child: Column(
                children: [
                  Text('First', style: TextStyle(fontSize: 28)),
                  const SizedBox(height: 24),
                  Text('Second', style: TextStyle(fontSize: 28)),
                  const SizedBox(height: 80),
                  Text('Third', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(color: Colors.red, padding: EdgeInsets.all(20)),
                Container(color: Colors.orange, padding: EdgeInsets.all(40)),
                Container(color: Colors.green, padding: EdgeInsets.all(60)),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.red, padding: EdgeInsets.all(20)),
                Container(color: Colors.orange, padding: EdgeInsets.all(40)),
                Container(color: Colors.green, padding: EdgeInsets.all(60)),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(color: Colors.red, padding: EdgeInsets.all(20)),
                Container(color: Colors.orange, padding: EdgeInsets.all(40)),
                Container(color: Colors.green, padding: EdgeInsets.all(60)),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                ),
                Container(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.red,
                    padding:
                        EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                  ),
                  Container(
                    color: Colors.green,
                    padding:
                        EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      padding:
                          EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
