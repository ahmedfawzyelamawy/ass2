import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lec7/model/post.dart';

class Instgrampostwidget extends StatelessWidget {
  final Post post;
  const Instgrampostwidget({required this.post,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                  backgroundImage:
                  AssetImage(post.user?.image??'',)),
              SizedBox(
                width: 5,
              ),
              Text(post.user?.name??'',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              SizedBox(
                width: 180,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset(
          post.image??'',
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite_border, color: Colors.white),
              SizedBox(
                width: 6,
              ),
              Icon(FontAwesomeIcons.comment, color: Colors.white),
              SizedBox(width: 6),
              Icon(Icons.send, color: Colors.white),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 2,
              ),
              SizedBox(width: 2),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,
              ),
              SizedBox(width: 2),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,
              ),
              SizedBox(width: 2),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,
              ),
              SizedBox(width: 2),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 1,
              ),
              Spacer(),
              Icon(
                FontAwesomeIcons.save,
                color: Colors.white,
              )
            ],
          ),
        ),
        // SizedBox(
        //   height: 4,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/pexels-photo.jpeg'),
                radius: 8,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'Liked by flutter.deviser and ${post.like ?? ''} others',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(width: 8),
            Text(
              'a7med fawzy',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
               post.title?? '',
              style: TextStyle(color: Colors.white70),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Text('your app`s acctive users by sending them targeted...',
                style: TextStyle(color: Colors.white70)),
            Text(
              'more',
              style: TextStyle(color: Colors.grey[400]),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'View ${post.comment ?? ''} Comment',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(post.user?.image ?? ''),
                radius: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'add a comment...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                          BorderSide(color: Colors.white, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blue)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                          BorderSide(width: 2, color: Colors.red))),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
