import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              child: Icon(
                Icons.keyboard_arrow_down
              ),
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
                          MediaQuery.of(context).size.width > 1200 ?
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotateAnimatedTextKit(
                                isRepeatingAnimation: true,
                                totalRepeatCount: 10,
                                text: ["Hey", "Hola", "Hei",'Namasté'],
                                // alignment: Alignment(1.0, 0.5),
                                textStyle: TextStyle(fontSize: 100.0, fontFamily: "Horizon"),
                              ),
                              AutoSizeText(
                                ', I\'m Akäsh Säiñi !',
                                minFontSize: 100,
                                maxLines: 2,
                              ),
                            ],
                          ):
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeAnimatedTextKit(
                                    text: ["Hey", "Hola", "Hei"],
                                    textStyle: TextStyle(fontSize: 100.0, fontFamily: "Horizon"),
                                  ),
                                  AutoSizeText(
                                    ', I\'m',
                                    minFontSize: 100,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              AutoSizeText(
                                'Akash !',
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
                                      "Red Hat Certified Specialist in CEPH",
                                      "Red Hat Certified Specialist in Ansible",
                                      "Red Hat Certified Engineer",
                                      "Red Hat Certified System Administrator",
                                    ],
                                    textStyle: TextStyle(
                                        fontSize: 30.0,
                                      color: Colors.black54,
                                        ),
                                    textAlign: TextAlign.start,
                                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
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

        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: MediaQuery.of(context).size.width < 1280 ? (MediaQuery.of(context).size.width < 720 ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width/2) : MediaQuery.of(context).size.width/4,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 10.0,
          ),
          delegate: SliverChildListDelegate([
            Image(
              image: NetworkImage('https://miro.medium.com/proxy/0*HICLyAdNSIyT0ODU.jpg'),
              fit: BoxFit.fitHeight,
            ),
            Image(
              fit: BoxFit.fitHeight,
              image: NetworkImage('https://miro.medium.com/proxy/0*HICLyAdNSIyT0ODU.jpg'),
            ),
            Image(
              fit: BoxFit.fitHeight,
              image: NetworkImage('https://miro.medium.com/proxy/0*HICLyAdNSIyT0ODU.jpg'),
            ),
            Image(
              fit: BoxFit.fitHeight,
              image: NetworkImage('https://miro.medium.com/proxy/0*HICLyAdNSIyT0ODU.jpg'),
            )
          ],),),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
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