import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2110020049/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/icons/radina.jpeg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nama', 'Radina', CupertinoIcons.person),
            const SizedBox(height: 20,),
            itemProfile('Npm', '2110020049', CupertinoIcons.person),
            const SizedBox(height: 20,),
            itemProfile('Kelas', '5A SI Reguler Banjarmasin', CupertinoIcons.person),
            const SizedBox(height: 20,),
            itemProfile('Email', 'radinaa001@gmail.com',CupertinoIcons.mail),
            const SizedBox(height: 20),
            itemProfile('Alamat', 'Banjarmasin', CupertinoIcons.location)
                ],
              ),
            ),
    );
  }
  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 5),
          color: Colors.deepOrange.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 10
        )
      ]
    ),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(CupertinoIcons.person),
      tileColor: Colors.white,
    ),
    );
  }
}
