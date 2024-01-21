import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Text('Heading'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                listMenu(
                  img: 'assets/icons/icons_car.jpg',
                  text: 'Otomotive',
                  navigator: '/otomotive_page',
                ),
                listMenu(
                  img: 'assets/icons/icons_ball.jpeg',
                  text: 'Sport',
                  navigator: '/sport_page',
                ),
              ],
            ),
            listMenu(
              img: 'assets/icons/icons_profile.jpeg',
              text: 'Profile',
              navigator: '/profile_page',
            ),
          ],
        ),
      ),
    );
  }
}

class listMenu extends StatelessWidget {
  listMenu({this.img, this.text, this.navigator});
  final String img;
  final String text;
  final String navigator;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigator);
      },
      child: Container(
        child: Column(
          children: [
            Image.asset(
              img,
              width: 150,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
