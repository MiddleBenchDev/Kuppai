import 'package:flutter/material.dart';
import '../helper/navigation.dart';
import '../screens/loginscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 65,
            backgroundColor: Color(0xFFD5D5D5),
            backgroundImage: AssetImage('logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text('Name'),
                  leading:
                      Icon(Icons.person, color: Theme.of(context).primaryColor),
                ),
                ListTile(
                  title: const Text('Address'),
                  leading:
                      Icon(Icons.home, color: Theme.of(context).primaryColor),
                ),
                ListTile(
                  title: const Text('Phone Number'),
                  leading:
                      Icon(Icons.phone, color: Theme.of(context).primaryColor),
                ),
                ListTile(
                  title: const Text('Email'),
                  leading:
                      Icon(Icons.email, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: GestureDetector(
                      onTap: () {
                        nextScreenReplace(context, const LoginScreen());
                      },
                      child: const ListTile(
                        tileColor: Colors.red,
                        title: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'Logout',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
