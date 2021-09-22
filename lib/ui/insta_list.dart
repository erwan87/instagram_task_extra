import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  bool isTouch = false;
  String descText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla veritatis fugit eaque pariatur minus molestias atque facere suscipit inventore optio fugiat, dolorem nihil eius, quod ullam perspiciatis, expedita maxime nesciunt.";
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              // child: new InstaStories(),
              child: null,
              height: deviceSize.height * 0,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://scontent-sin6-3.xx.fbcdn.net/v/t31.18172-8/13584765_10207943059351923_5336812204641407893_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHUD7Jzy4CoDWmL3A7Dp3wvqRGM5eRH816pEYzl5EfzXqI1KYu--7Yts7Na8rm_ZHo&_nc_ohc=Ca1fwYO1ZDUAX9ocxpW&_nc_ht=scontent-sin6-3.xx&oh=3518ccf4bd61f82cc0ccfffb8a83feea&oe=6171F87A")),
                            ),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            "Erwan Widayat",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: 
                  new Image.network(
                    "https://scontent-sin6-2.xx.fbcdn.net/v/t31.18172-8/28162093_10210999134842338_6002675632503504853_o.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeE7ZGNEZtjAZeamq82Hx9rPME-9QlchW1IwT71CVyFbUgoqD6xs1tMMs53zDABVWug&_nc_ohc=Qd4fkeMmG_IAX99FO1E&tn=LQ1UyyvexrlbentE&_nc_ht=scontent-sin6-2.xx&oh=5944d7be6419628cf7a55b61dda323e9&oe=617265CD",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new IconButton(
                            icon: new Icon(isPressed ? Icons.favorite
                                : FontAwesomeIcons.heart),
                            color: isPressed ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            FontAwesomeIcons.comment,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      // )
                      new IconButton(
                            icon: new Icon(isTouch ? FontAwesomeIcons.solidBookmark
                                : FontAwesomeIcons.bookmark),
                            onPressed: () {
                              setState(() {
                                isTouch = !isTouch;
                              });
                            },
                          ),
                      // FontAwesomeIcons.solidBookmark
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by erwan, karika",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Erwan Widayat',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(descText, maxLines: descTextShowFlag ? 8 : 2,textAlign: TextAlign.start),
                            InkWell(
                              onTap: (){ setState(() {
                                descTextShowFlag = !descTextShowFlag; 
                              });
                              },
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                descTextShowFlag ? Text("",style: TextStyle(color: Colors.blue),) :  Text("See More",style: TextStyle(color: Colors.blue))
                              ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://scontent-sin6-3.xx.fbcdn.net/v/t31.18172-8/13584765_10207943059351923_5336812204641407893_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHUD7Jzy4CoDWmL3A7Dp3wvqRGM5eRH816pEYzl5EfzXqI1KYu--7Yts7Na8rm_ZHo&_nc_ohc=Ca1fwYO1ZDUAX9ocxpW&_nc_ht=scontent-sin6-3.xx&oh=3518ccf4bd61f82cc0ccfffb8a83feea&oe=6171F87A")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("10 Day Ago", style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
    );
  }
}
