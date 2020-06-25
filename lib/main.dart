import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'HomePage.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akäsh Säiñi',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }

  MaterialApp materialApp(){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/akash.jpeg'),
                        ),
                        Text(
                          'Akash Saini',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'DevOps Enthusiast',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 2.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 150,
                          child: Divider(
                            color: Colors.teal.shade100,
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 40 , right: 40 ,  top: 10 , bottom: 5),
                          onPressed: (){
                            _launchURL('tel:+918882237778');
                          },
                          child: Card(
                              color: Colors.white,
                              child: ListTile(
                                leading: Icon(
                                    Icons.phone
                                ),
                                title: Text('+91 888 223 7778'),
                              )
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 40 , right: 40 ,  top: 5 , bottom: 10),
                          onPressed: (){
                            _launchURL('mailto:akash2237778@gmail.com');
                          },
                          child: Card(
                              color: Colors.white,
                              child: ListTile(
                                leading: Icon(
                                    Icons.email
                                ),
                                title: Text('akash2237778@gmail.com'),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){
                            _launchURL('https://www.linkedin.com/in/akash-saini-ak7778/');
                          },
                          child: Image(
                            image: AssetImage('images/linkedin.png'),
                            height: 40,
                            width: 40,
                          ),
                        ),
                        FlatButton(
                          onPressed: (){
                            _launchURL('https://github.com/akash2237778');
                          },
                          child: Image(
                            image: AssetImage('images/github.png'),
                            height: 40,
                            width: 40,
                          ),
                        ),
                        FlatButton(
                          onPressed: (){
                            _launchURL('https://www.instagram.com/akash_saini7778/');
                          },
                          child: Image(
                            image: AssetImage('images/instagram.png'),
                            height: 40,
                            width: 40,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
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




//www.materialpalettee.com

/*
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 40),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                          Icons.email
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          'akash2237778@gmail.com'
                      )
                    ],
                  ),
                ),
              ),
* */