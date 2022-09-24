import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper/navigation.dart';
import '../bottombar.dart';

class AddTrash extends StatefulWidget {
  const AddTrash({Key? key}) : super(key: key);

  @override
  State<AddTrash> createState() => _AddTrashState();
}

class _AddTrashState extends State<AddTrash> {
  final formKey = GlobalKey<FormState>();
  String? type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: const Text('Add Trash', style: TextStyle(fontSize: 24)),
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
                        const Text('Add Trash',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: lineInputDecoration.copyWith(
                                hintText: 'Quantity',
                                prefixIcon: Icon(Icons.scale,
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Type of Waste',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )),
                        ),
                        ListTile(
                          leading: Radio(
                            activeColor: const Color(0xFF15AC51),
                            value: 'Bio-Degradable',
                            groupValue: type,
                            onChanged: (value) {
                              setState(() {
                                type = value.toString();
                              });
                            },
                          ),
                          title: const Text(
                            'Bio-Degradable',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        ListTile(
                          leading: Radio(
                            activeColor: const Color(0xFF15AC51),
                            value: 'Non-Bio-Degradable',
                            groupValue: type,
                            onChanged: (value) {
                              setState(() {
                                type = value.toString();
                              });
                            },
                          ),
                          title: const Text(
                            'Non Bio-Degradable',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        ListTile(
                          leading: Radio(
                            activeColor: const Color(0xFF15AC51),
                            value: 'Both',
                            groupValue: type,
                            onChanged: (value) {
                              setState(() {
                                type = value.toString();
                              });
                            },
                          ),
                          title: const Text(
                            'Both',
                            style: TextStyle(color: Colors.orange),
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
