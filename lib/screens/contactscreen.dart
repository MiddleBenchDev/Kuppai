import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String s1 = "tel:";
  String s2 = "";
  _makeCall() async {
    var url = Uri.parse(s1 + s2);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 70,
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: ListTile(
                      leading: Icon(Icons.phone,
                          color: Theme.of(context).primaryColor, size: 24),
                      title: const Text(
                        'Helpline 1',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        setState(() {
                          s2 = "9600598779";
                          _makeCall();
                        });
                      }),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: ListTile(
                      leading: Icon(Icons.phone,
                          color: Theme.of(context).primaryColor, size: 24),
                      title: const Text(
                        'Helpline 2',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        setState(() {
                          s2 = "9488102864";
                          _makeCall();
                        });
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
