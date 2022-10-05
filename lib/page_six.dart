import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSix extends StatelessWidget {
  const PageSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('This is Page Six'),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('BACK TO PAGE FIVE!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
