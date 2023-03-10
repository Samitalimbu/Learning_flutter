import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learning/view/home_page.dart';

void main(){
  runApp(ProviderScope(child: Home()));
  
}
class Home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(411, 866),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context,Widget? child){
        return GetMaterialApp(
         theme: ThemeData(
           fontFamily: 'PlayfairDisplay',
           useMaterial3: true
         ),
          home: HomePageScreen(),
          debugShowCheckedModeBanner: false,

        );

            },



    );
  }
}


