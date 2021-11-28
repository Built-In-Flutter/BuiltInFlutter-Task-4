import 'package:flutter/material.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return Profile();
  }
}

class Profile extends StatelessWidget {
  static const routeName2 = "Profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        height: 700,
        width: double.infinity,
        child: Column(
          children: [
            Align(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                alignment: Alignment.center),
            const Spacer(),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 70,
            ),
            const Spacer(), //userName
            Row(
              children: [
                Text(
                  "UserName",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "Ajay PS",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(), //Email
            Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "Ajaypalamkunnel45@gmail.com",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "DoB",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "13/08/2003",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "Address",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "Palamkunnel(H)",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "contact",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "9496831320",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
