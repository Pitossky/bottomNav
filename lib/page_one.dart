import 'package:bottom_navigation/page_five.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('This is Page One/Home'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const PageFive(),
                      ),
                    );
                  },
                  child: const Text('GO TO PAGE FIVE!'),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
