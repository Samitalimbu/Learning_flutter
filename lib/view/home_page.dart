import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/book.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final actualHeight=height-MediaQuery.of(context).padding.top;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff2f5f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff2f5f9),
        elevation: 0,
        title: const Text(
          "Hi jhon",style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(CupertinoIcons.search,color: Colors.black,),
          Icon(CupertinoIcons.airplane,color: Colors.black,),
          SizedBox(width: 12),
        ],
        
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            child:Image.asset("assets/images/book3.jpg",fit: BoxFit.fill,)
          ),
          SizedBox(height: 12),
          Container(
            height: 300.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:books.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index){
                final book=books[index];
                return Container(
                  width: 370.h,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15,),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                          child: Image.asset(
                            book.imageUrl,
                            width: 150.w,height: 260.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(child:Card(
                          child:  Container(
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(book.title,style: TextStyle(fontSize: 15.sp),),
                                Text(book.detail,style: TextStyle(fontSize: 15.sp),),
                                Row(
                                  children: [
                                    Text(book.rating),
                                    Text(book.genre)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        ),

                      ],
                    ),

                  ),

                );
                },
          ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("You may also like",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
          ),
        Container(
          height: 250.h,
          child: ListView.builder(
            itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(right: 16),
                width: 150.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(books[index].imageUrl,height: 195.h,width: 150.w,),
                    Text(books[index].title,maxLines: 1,),
                    Text(books[index].genre,maxLines: 1,)
                
                  
                  ],
                ),
              );
              }),
        ),


        ],
      ),
     
    );
  }
}
