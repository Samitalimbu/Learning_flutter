import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/book.dart';

class DetailScreen extends StatelessWidget {
final Book book;
DetailScreen(this.book);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250.h,
        width: 300.w,
       child: Image.asset(book.imageUrl),
        ),
    );
  }
}
