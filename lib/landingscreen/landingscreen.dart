import 'dart:html';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webpage/landingscreen/categories.dart';
import 'package:url_launcher/url_launcher.dart';

class landingscreen extends StatefulWidget {
  const landingscreen({Key? key}) : super(key: key);

  @override
  State<landingscreen> createState() => _landingscreenState();
}

class _landingscreenState extends State<landingscreen> {
  Future<void> _phone(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _email(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _web(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 4500,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              "Explore The Beauty",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/bg1.jpg',
              fit: BoxFit.contain,
              height: 700,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'GALLERY',
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              child: ImageSlideshow(
                /// Width of the [ImageSlideshow].
                width: 600,

                /// Height of the [ImageSlideshow].
                height: 600,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/images/p1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/p2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/p3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],

                /// Called whenever the page in the center of the viewport changes.

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                /// Loops back to first slide.
                isLoop: true,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            width: 3000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => categories()));
                  },
                  child: Container(
                    height: 100.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => categories()));
                  },
                  child: Container(
                    height: 100.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => categories()));
                  },
                  child: Container(
                    height: 100.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/4.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => categories()));
                  },
                  child: Container(
                    height: 100.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/5.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Photos',
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            childAspectRatio: (0.5 / 0.5),
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.car_crash,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 400,
            child: Column(
              children: [
                const Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'DISCUSS FEW THINGS OR JUST WANT TO SAY HI?\nOUR INBOX IS OPEN FOR ALL!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        _web(
                          'https://goo.gl/maps/ickERdYTAyxUAuhf8',
                        );
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      child: const Text(
                        'Mumbai, Maharashtra, India',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        _email('mailto:feazysolutions@gmail.com');
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      child: const Text(
                        'geetaparlour@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            _phone('tel:+91-8879843934');
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white),
                          child: const Text(
                            'Geeta - 7666288151',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _phone('tel:+91-8169852662');
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white),
                          child: const Text(
                            'Mr Bangar: +91 8169891365',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
