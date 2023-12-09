import 'package:lec7/model/user.dart';

class Post {
  User? user;
  String? image;
  String? title;
  int? like;
  int? comment;

  Post({this.user, this.image, this.title, this.like, this.comment});
}

List<Post> instgramposts = [
  Post(user: User(name: 'ahmed fawzy', image: 'assets/images/profile1.jpg'),
   image: 'assets/images/pexels-photo.jpeg',
    title: 'flutter is awesome',
    comment: 10,
    like: 100,
  ),
  Post(user: User(name: 'moh a7med', image: 'assets/images/pexels-photo.jpeg'),
    image: 'assets/images/sceen1.png',
    title: 'wellcome my profile instgram',
    comment: 30,
    like: 250,
  ),
  Post(user: User(name: 'elalffy', image: 'assets/images/pexels-alfo.jpg'),
    image: 'assets/images/profile1.jpg',
    title: 'Hello worlllllllllld',
    comment: 50,
    like: 600,
  ),
  Post(user: User(name: 'elamawy', image: 'assets/images/sceen1.png'),
    image: 'assets/images/pexels-alfo.jpg',
    title: 'this is my app',
    comment: 40,
    like: 130,
  ),
];
