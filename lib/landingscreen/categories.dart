import 'package:flutter/material.dart';
import 'package:flutter_webpage/landingscreen/booked.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  var items = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg'
  ];

  var details = [
    'Hair Cutting',
    'Hair Coloring',
    'Hair Straightning',
    'Facial',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(
            child: Text('Select the Category of your choice'),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ])),
          child: GridView.count(
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              4,
              (index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(items[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          details[index],
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),

                        // add Button
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      child: Text('Book Slot'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => booked()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 90, 13, 4),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    )
                  ],
                );
              },
            ),
          ),
        ));
  }
}
