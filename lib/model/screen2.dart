 import 'package:flutter/material.dart';
import '../MassangerScreen2.dart';
import '../messangerscreen1.dart';
import 'messangerusers.dart';
import 'modle/MessangerWidgetSreen2.dart';
import 'modle/messangerWidgetScreen1.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading:
          CircleAvatar(
            backgroundImage: Image
                .asset('assets/images/profile1.jpg')
                .image,
            radius: 10,
          ),
          title: Text("Chats",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 20,
              child: Icon(Icons.camera_alt,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(width: 20,),

            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 20,
              child: Icon(Icons.pending_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadiusDirectional.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search,
                        size: 20,
                        color: Colors.white38,
                      ),
                      Text("Search",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 100,
                  child: Expanded(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MessngerScreen1(users: userInfo[index],);
                        }, separatorBuilder: (context, index) {
                      return SizedBox(width:0,);
                    }, itemCount: userInfo.length),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return MessangerScreen2(users: userInfo[index],);
                      }, separatorBuilder: (context, index) {
                    return SizedBox(height: 10,);
                  }, itemCount: userInfo.length),
                )
              ]
          ),
        ),

      ),
    );
  }
}

