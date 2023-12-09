import 'dart:ui';
class UserScreen{
  String? Image;
  String? name;
  String? title;
  String? time;
  bool? Status;

  UserScreen({this.Image, this.name, this.time, this.title,this.Status});
}
List<UserScreen> userInfo=[
  UserScreen(
    Image: 'assets/images/pexels-alfo.jpg',
    name: 'ahmed fawzy',
    title: 'helllllllo',
    time: '02:23 PM',
    Status: true,
  ),
  UserScreen(
    Image: 'assets/images/pexels-photo.jpeg',
    name: 'hiiiiiii',
    title: ' very Good my friend',
    time: '11:45 PM',
    Status: false,
  ),
  UserScreen(
    Image: 'assets/images/profile1.jpg',
    name: 'elalfy',
    title: 'welcome',
    time: '10:40 PM',
    Status: true,
  ),
  UserScreen(
    Image: 'assets/images/sceen1.png',
    name: 'Ahmed Ali ',
    title: ' learning',
    time: '05:40 PM',
    Status: false,
  ),
  UserScreen(
    Image: 'assets/images/pexels-alfo.jpg',
    name: 'ahmed fawzy',
    title: 'helllllllo',
    time: '07:23 PM',
    Status: true,
  ),
  UserScreen(
    Image: 'assets/images/pexels-photo.jpeg',
    name:'pepsi' ,
    title: 'hiiiiiii',
    time: '10:45 PM',
    Status: false,
  ),
  UserScreen(
    Image: 'assets/images/profile1.jpg',
    name: 'elalfy',
    title: 'welcome',
    time: '3:30 PM',
    Status: true,
  ),
  UserScreen(
    Image: 'assets/images/sceen1.png',
    name: 'Ahmed Ali ',
    title: ' learning',
    time: '05:00 PM',
    Status: false,
  ),

];