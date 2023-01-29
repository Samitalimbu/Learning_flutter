import 'package:flutter/material.dart';

import '../model/book.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/images/book2.jpg",),
            Container(
              child: Text("Hello How are you ?"),
            ),

          ],
        ),
      ),
    );
  }
}
