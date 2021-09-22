import 'package:flutter/material.dart';
import 'package:instagram/ui/insta_body.dart';
import 'package:instagram/ui/profile.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 2.0,
    leading: new Icon(Icons.camera_alt,color: Colors.black,),
    title: SizedBox(
        height: 35.0, 
        child: Image.asset("assets/images/insta_logo.png")
      ),
      actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send,color: Colors.black,),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new InstaBody(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)  => InstaHome())
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                new Container(
                  child: GestureDetector(
                    onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)  => Profile())
                          );
                        },
                  ),
                  height: 30.0,
                  width: 30.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://scontent-sin6-3.xx.fbcdn.net/v/t31.18172-8/13584765_10207943059351923_5336812204641407893_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHUD7Jzy4CoDWmL3A7Dp3wvqRGM5eRH816pEYzl5EfzXqI1KYu--7Yts7Na8rm_ZHo&_nc_ohc=Ca1fwYO1ZDUAX9ocxpW&_nc_ht=scontent-sin6-3.xx&oh=3518ccf4bd61f82cc0ccfffb8a83feea&oe=6171F87A")),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
