import 'package:flutter/material.dart';
import '../screens/reportscreen.dart';
import '../helper/navigation.dart';
import '../screens/addscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: Column(children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 20,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      height: 80,
                      width: 120,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                enableFeedback: false,
                                onPressed: () {
                                  nextScreen(context, const AddTrash());
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Theme.of(context).primaryColor,
                                  size: 25,
                                )),
                            const SizedBox(height: 5),
                            const Text(
                              'Have Trash',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])),
                ),
                const SizedBox(width: 30),
                Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    height: 80,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            enableFeedback: false,
                            onPressed: () {
                              nextScreen(context, const ReportScreen());
                            },
                            icon: Icon(
                              Icons.camera_alt,
                              color: Theme.of(context).primaryColor,
                              size: 25,
                            )),
                        const SizedBox(height: 5),
                        const Text(
                          'Report Trash',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Material(
              elevation: 20,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.white,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
