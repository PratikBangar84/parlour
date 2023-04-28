import 'package:flutter/material.dart';

class booked extends StatefulWidget {
  const booked({super.key});

  @override
  State<booked> createState() => _bookedState();
}

class _bookedState extends State<booked> {
  List<String> items = [
    "Hair cut",
    "Facial",
    "Hair straightning",
    "Hair Coloring"
  ];
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _PhoneController = TextEditingController();

  String currentItem = "";
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown List Tutorial"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 140, 16, 41),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  alignment: Alignment.topRight,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Color.fromARGB(255, 98, 12, 28),
                  value: currentItem,
                  items: items
                      .map<DropdownMenuItem<String>>(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                          alignment: Alignment.center,
                        ),
                      )
                      .toList(),
                  onChanged: (String? value) => setState(
                    () {
                      if (value != null) currentItem = value;
                    },
                  ),
                ),
              ),
              Text(
                currentItem,
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 350),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                      hintText: 'Enter valid Number'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 350),
                child: TextField(
                  controller: _PhoneController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter Name'),
                ),
              ),
              ElevatedButton(
                child: Text('Confirm Slot'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 90, 13, 4),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
