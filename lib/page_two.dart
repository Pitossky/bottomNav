import 'package:bottom_navigation/page_four.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('This is Page Two'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const PageFour(),
                    ),
                  );
                },
                  child: const Text('GO TO PAGE FOUR!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
