import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lec7/instgram_post_widget.dart';
import 'package:lec7/model/post.dart';

class Instgram extends StatefulWidget {
  const Instgram({super.key});

  @override
  State<Instgram> createState() => _InstgramState();
}

class _InstgramState extends State<Instgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('𝓘𝓷𝓼𝓽𝓰𝓻𝓪𝓶',
                style: TextStyle(color: Colors.white, fontSize: 30)),
            Icon(Icons.keyboard_arrow_down_rounded)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_box_outlined, color: Colors.white, size: 23),
          ),
          SizedBox(
            width: 6,
          ),
          // Image.asset('assets/images/instgram.png', width: 90),
          Stack(
            children: [
              Align(
                  alignment: AlignmentDirectional.center,
                  child: Icon(Icons.favorite_border,
                      color: Colors.white, size: 23)),
              PositionedDirectional(
                  top: 17.5,
                  end: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 3,
                  ))
            ],
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Align(
                    alignment: AlignmentDirectional.center,
                    child: Icon(FontAwesomeIcons.facebookMessenger)),
                PositionedDirectional(
                    top: 10,
                    end: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 3,
                    ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        elevation: 0,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Instgrampostwidget(
                post: instgramposts[index],
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: instgramposts.length),
    );
  }
}
