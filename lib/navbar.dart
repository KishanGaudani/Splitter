import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "kishan Gaudani",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "kishangaudani789@gmail.com",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 2)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/garba-night-beautiful-woman-playing-garba-dandiya-celebration-card-design_1035-24774.jpg?w=2000"),
                    fit: BoxFit.cover),
              ),
            ),
            // Divider(color: Colors.black,thickness: 3),
            ListTile(
              leading: Icon(
                Icons.edit,
                color: Colors.black,
              ),
              title: Text(
                "Edit Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            Divider(color: Colors.black12, thickness: 3),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text(
                "Favorite",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.black,
              ),
              title: Text(
                "Friends",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            Divider(color: Colors.black12, thickness: 3),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: Text(
                "Request",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
              trailing: ClipOval(
                child: Container(
                  width: 25,
                  height: 25,
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            Divider(color: Colors.black12, thickness: 3),
            ListTile(
              leading: Icon(
                Icons.description,
                color: Colors.black,
              ),
              title: Text(
                "Policies",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              title: Text(
                "Exit",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              onTap: () => null,
            ),
            Divider(color: Colors.black12, thickness: 3),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
