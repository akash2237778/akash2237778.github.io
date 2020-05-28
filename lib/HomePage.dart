import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex=0;
  List cardList=[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color:  Color.fromRGBO(50, 9, 43, .80),
        hoverColor: Color.fromRGBO(50, 9, 43, 100),
        elevation: 5,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'AR Book',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
            ),
            Expanded(
                flex: 3,
                child: Image.network(
                    'https://cdn3.iconfinder.com/data/icons/augmented-reality/100/augmented_reality_ar_virtual-05-512.png',)),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Text(
                  'The sole purpose of this project was to make an Augmented Reality based education system. In this book, 3-D models appear to facilitate a better understanding. Among the most significant trends in EdTech, augmented reality rightfully takes a leading position. With more than 1 billion users expected to join the trend by 2020, it opens a pool of opportunities for educational institutions and businesses.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: RaisedButton(
                        onPressed: () {
                          _launchURL(
                              'https://drive.google.com/file/d/14zEUUDlX2sxQngVOWlab_-qy7gidpV-1/view?pli=1');
                        },
                        color: Colors.white,
                        elevation: 5,
                        child: Text(
                          'Demo Video',
                          style: TextStyle(color: Colors.black),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color:  Color.fromRGBO(50, 9, 43, .80),
        hoverColor: Color.fromRGBO(50, 9, 43, 100),
        elevation: 5,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'SahYog',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
            ),
            Expanded(
                flex: 3,
                child: Image.network(
                    'https://static.wixstatic.com/media/5963f2_a8f7ec5ea49f4d2f8289ab1fd7d90380~mv2.png/v1/fill/w_99,h_98,al_c,q_85,usm_0.66_1.00_0.01/logocircle.webp')),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Text(
                  'This is an android platform where any verified user can provide or receive any service to make money or to get his/her job done without the involvement of any organization. Platform focuses on creating a self helping culture which can benefit both consumers and providers. A service consumer can act as client for service provider',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        _launchURL(
                            'https://sahayog7778.wixsite.com/sahyog');
                      },
                      child: Icon(Icons.language,
                      color: Colors.white,),
                    ),
                    FlatButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/akash2237778/SahYog');
                      },
                      child: Image(
                        image: AssetImage('images/github.png'),
                        height: 27,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color:  Color.fromRGBO(50, 9, 43, .80),
        hoverColor: Color.fromRGBO(50, 9, 43, 100),
        elevation: 5,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'AR-Techo',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
            ),
            Expanded(
              flex: 3,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://static.businessworld.in/article/article_extra_large_image/1494569567_kXXjuG_AR.jpg'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Text(
                  'A Mixed Reality (AR+VR) based product to deploy, manage and monitor services like AWS, Docker, Kubernetes, Ceph etc. ec2 instance at any AWS server with some virtual touches. A ceph cluster could be set up using NFC stick over every machine with some taps and virtual touches.. The project was accomplished using Ansible, python, shell scripting.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {
                          _launchURL(
                              'https://www.instagram.com/_ar_techo/');
                        },
                        child: Image(
                          image: AssetImage('images/instagram.png'),
                          height: 27,
                        )),
                    FlatButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/akash2237778/AR');
                      },
                      child: Image(
                        image: AssetImage('images/github.png'),
                        height: 27,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color:  Color.fromRGBO(50, 9, 43, .80),
        hoverColor: Color.fromRGBO(50, 9, 43, 100),
        elevation: 5,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'OPEN Mobile',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('images/logomain.png')),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Text(
                  'Official community app for the OPEN-UPES.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/upes-open/Open-Mobile');
                      },
                      child: Image(
                        image: AssetImage('images/github.png'),
                        height: 27,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color:  Color.fromRGBO(50, 9, 43, .80),
        hoverColor: Color.fromRGBO(50, 9, 43, 100),
        elevation: 5,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'Prison-I',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: NetworkImage('https://raw.githubusercontent.com/akash2237778/Prison-I/master/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png')),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Text(
                  'Android wear-based prisoner monitoring system. In this project, Android is used to track and monitor activities of prisoners and send all data to jailor’s android device.  Proximity sensor is used to ensure it\'s on the hand of the prisoner as soon as anyone tries to remove the device it will send an alert to the jailor.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/akash2237778/Prison-I');
                      },
                      child: Image(
                        image: AssetImage('images/github.png'),
                        height: 27,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.black,
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //LINKEDIN_LOGO
            ],
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.keyboard_arrow_down),
            ),
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'images/bg.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediaQuery.of(context).size.width > 1200
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RotateAnimatedTextKit(
                                      repeatForever: true,
                                      text: ["Hey", "Hola", "Hei", 'Namasté'],
                                      // alignment: Alignment(1.0, 0.5),
                                      textStyle: TextStyle(
                                          fontSize: 100.0,
                                          fontFamily: "Horizon"),
                                    ),
                                    AutoSizeText(
                                      ', I\'m Akäsh Säiñi !',
                                      minFontSize: 100,
                                      maxLines: 2,
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FadeAnimatedTextKit(
                                          repeatForever: true,
                                          text: ["Hey", "Hola", "Hei"],
                                          textStyle: TextStyle(
                                              fontSize: 100.0,
                                              fontFamily: "Horizon"),
                                        ),
                                        AutoSizeText(
                                          ', I\'m',
                                          minFontSize: 100,
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      'Akäsh !',
                                      minFontSize: 100,
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Container(
                                child: TyperAnimatedTextKit(
                                    text: [
                                      "Red Hat Certified Specialist in CEPH Storage Administration",
                                      "Red Hat Certified Specialist in Ansible Automation",
                                      "Red Hat Certified Engineer",
                                      "Red Hat Certified System Administrator",
                                    ],
                                    textStyle: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.black54,
                                    ),
                                    textAlign: TextAlign.start,
                                    alignment: AlignmentDirectional
                                        .topStart // or Alignment.topLeft
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 0.5),
                      end: Alignment(0.0, 0.0),
                      colors: <Color>[
                        Color(0x60000000),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://miro.medium.com/max/3622/1*RoXcbaF9lIqwpMjiXg54Vw.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text('Projects',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 900? MediaQuery.of(context).size.width*0.2 : MediaQuery.of(context).size.width*0.10),
                        child: CarouselSlider(
                          height: MediaQuery.of(context).size.height*0.7,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          pauseAutoPlayOnTouch: Duration(seconds: 20),
                         // aspectRatio: 2.0,
                          onPageChanged: (index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          items: cardList.map((card){
                            return Builder(
                                builder:(BuildContext context){
                                  return Container(
                                    //height: MediaQuery.of(context).size.height*0.50,
                                  //  width: MediaQuery.of(context).size.width*0.50,
                                    child: card,

                                  );
                                }
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),

        ),

      ],
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
