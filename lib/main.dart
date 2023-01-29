import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning/view/detail_screen.dart';
import 'package:learning/view/home_page.dart';

void main(){
  runApp(Home());
  
}
class Home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(411, 866),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context,Widget? child){
        return MaterialApp(
          theme: ThemeData.light().copyWith(

          ),
          home: DetailScreen(),
          debugShowCheckedModeBanner: false,

        );

            },



    );
  }
}


