import 'package:flutter/material.dart';
import 'package:insta/HomeFeed.dart';
import 'package:insta/StoriesBar.dart';


class IGHome extends StatefulWidget {
  const IGHome({super.key});

  @override
  State<IGHome> createState() => _IGHomeState();
}

class _IGHomeState extends State<IGHome> {
  @override
  Widget build(BuildContext context) {


    final List<User> users = [
    User(username: 'Main user', avatar: 'user0.jpg'),
    User(username: 'ted', avatar: 'user1.jpg'),
    User(username: 'supri_23', avatar: 'user2.jpg'),
    User(username: 'username4', avatar: 'user3.jpg'),
    User(username: 'budi123', avatar: 'user4.jpg'),
  ];

  final List<Post> posts = [
    Post(
      username: 'ted',
      avatar: 'user1.jpg',
      image: ['feed/gunung.jpg','feed/rad100.jpg'],
      caption:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id tellus lectus. Etiam vulputate vitae elit quis faucibus. Aliquam consequat enim tortor, sit amet congue erat volutpat quis. In hac habitasse platea dictumst. Proin in neque non diam maximus elementum vel et est. Vestibulum mollis mauris at tortor ullamcorper accumsan. Vivamus id ante vitae justo dignissim pharetra sit amet eget ligula. Curabitur sit amet diam gravida, cursus risus sed, vestibulum magna.',
    ),
    Post(
      username: 'supri_23',
      image: ['feed/goat.jpg'],
      avatar: 'user2.jpg',
      caption: 'G.O.A.T',
    ),
    Post(
      username: 'user4',
      image: ['feed/twintowers.jpg'],
      avatar: 'user3.jpg',
      caption: 'Post Scroll test',
    ),
  ];


    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                "Instagram",
                style: TextStyle(fontFamily: 'IG', fontSize: 25),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.favorite_outline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message_outlined),
                  onPressed: () {},
                ),
              ],
              pinned: false,
              floating: true,
              snap: true,
              // You can customize other SliverAppBar properties as needed
            ),
          ];
        },
        body: 
        ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return StoriesBar(users: users);
            } else if (index == 1) {
              return PostFeed(posts: posts);
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}

