import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper/navigation.dart';
import '../bottombar.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);
  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: const Text('Report Trash', style: TextStyle(fontSize: 24)),
          leading: IconButton(
              onPressed: () {
                nextScreenReplace(
                    context,
                    BottomBar(
                      title: 'Kuppai',
                    ));
              },
              icon: const Icon(Icons.chevron_left,
                  color: Colors.white, size: 24))),
      body: Center(
          child: Material(
        color: Colors.grey[400],
        elevation: 5,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Form(
                key: formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 65, horizontal: 80),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Report Trash',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Complaint',
                                prefixIcon: Icon(Icons.report,
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Area',
                                prefixIcon: Icon(Icons.my_location,
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Landmark',
                                prefixIcon: Icon(Icons.location_on,
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Pin Code',
                                prefixIcon: Icon(Icons.pin,
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                primary: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Submit',
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    ),
                  ),
                ))),
      )),
    );
  }
}
