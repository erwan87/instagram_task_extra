import 'package:flutter/material.dart';
class ProfileBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProfileInformation(),
          ProfileDescription(),
          ShortcutButton(),
          // Divider(),
        ],
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://scontent-sin6-2.xx.fbcdn.net/v/t31.18172-8/28162093_10210999134842338_6002675632503504853_o.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeE7ZGNEZtjAZeamq82Hx9rPME-9QlchW1IwT71CVyFbUgoqD6xs1tMMs53zDABVWug&_nc_ohc=Qd4fkeMmG_IAX99FO1E&tn=LQ1UyyvexrlbentE&_nc_ht=scontent-sin6-2.xx&oh=5944d7be6419628cf7a55b61dda323e9&oe=617265CD",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                '14',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Posts",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text('131',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Followers", style: TextStyle(color: Colors.black45))
            ],
          ),
          Column(
            children: <Widget>[
              Text('42',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Following", style: TextStyle(color: Colors.black45))
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDescription extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Erwan Widayat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            "Flutter Student at Selangkah",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            "Gamers",
          ),
        ],
      ),
    );
  }
}

class ShortcutButton extends StatelessWidget {
  // const ShortcutButton({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                  onPressed:() {}, 
                child: Text('Edit Profile', ),
                ),
          ),
          const SizedBox(width: 5),
          ElevatedButton(
                  onPressed:() {}, 
                child: Icon(Icons.arrow_drop_down),
                ),
        ],
      ),
    );
  }
}