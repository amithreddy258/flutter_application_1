import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  movetogrouppage(BuildContext context) {
    Navigator.pushNamed(context, '/grouppage');
  }

  movetoprofilepage(BuildContext context) {
    Navigator.pushNamed(context, '/profilepage');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Aman Vignesh'),
            accountEmail: Text('20bds003@iiitdwd.ac.in'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home page'),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () => movetoprofilepage(context),
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Tips and resources'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            onTap: () => movetogrouppage(context),
            title: Text('Groups'),
            leading: Icon(
              Icons.groups,
              color: Colors.blue,
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('twitter'),
              leading: Icon(
                Icons.social_distance,
                color: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Linkedin'),
              leading: Icon(
                Icons.social_distance,
                color: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Aims portal'),
              leading: Icon(
                Icons.social_distance,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
