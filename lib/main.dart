import 'package:bottom_navigation/page_one.dart';
import 'package:bottom_navigation/page_three.dart';
import 'package:bottom_navigation/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
        ],
      ),
      tabBuilder: (c, i) {
        switch (i) {
          case 0:
            return CupertinoTabView(builder: (c) {
              return const CupertinoPageScaffold(
                child: PageOne(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (c) {
              return const CupertinoPageScaffold(
                child: PageTwo(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (c) {
              return const CupertinoPageScaffold(
                child: PageThree(),
              );
            });
          default: return CupertinoTabView(builder: (c) {
            return const CupertinoPageScaffold(
              child: PageOne(),
            );
          });
        }
      },
    );
  }
}
