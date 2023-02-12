import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tmdb/view/widgets/tab_bar_widgets.dart';

enum CategoryType{
  popular,
  top_rated,
  upcoming
}

class HomePageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom:  const TabBar(
                physics: NeverScrollableScrollPhysics(),
                tabs:  [
                  Tab(text: 'Popular'),
                  Tab(text: 'Top Rates'),
                  Tab(text: 'Upcoming'),
                ]),
            toolbarHeight: 100.h,
            flexibleSpace: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 100.h,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tmdb Movies', style: TextStyle(fontSize: 25.sp),),
                      IconButton(onPressed: (){
                      }, icon: const Icon(Icons.search, size: 30,)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                TabBarWidget(CategoryType.popular),
                TabBarWidget(CategoryType.top_rated),
                TabBarWidget(CategoryType.upcoming),
              ]
          )
      ),
    );
  }
}