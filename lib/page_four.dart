import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('This is Page Four'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('BACK TO PAGE TWO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
