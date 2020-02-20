import 'package:flutter/material.dart';

import './page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "https://avatars3.githubusercontent.com/u/16825392?s=460&v=4";
  String otherProfilePic = "https://scontent.ftru4-2.fna.fbcdn.net/v/t1.0-9/68992234_673057873207584_972207023301066752_n.jpg?_nc_cat=110&_nc_eui2=AeFqLpFvs-QItyUJEMjSRop15WSzrtEugW-TEafZdWfelywSnprbLDEqmvWSZJnUQi_SIFKOnETgqogcBXMvGBHUD-WY4_xr4IjUgsXFKqn9qg&_nc_ohc=luLyTI_Pp7oAX9iJym2&_nc_ht=scontent.ftru4-2.fna&oh=ff68a00523092a62f6dca53d9b240be7&oe=5EFEA0E2";
  String fondoM = "https://scontent.ftru4-1.fna.fbcdn.net/v/t1.0-9/84171106_817489138764456_1261969633330593792_n.jpg?_nc_cat=106&_nc_eui2=AeEKQJ6bYxdTE9fWDctxDcOZg3tzkgbdS0wYuLery2z5RR0u2KqvjPh0bhPpp437KjkBtvqeOp_7Cy2Y3fJoiWH-oMMHutemimtdsn_YCa1OKw&_nc_ohc=L-DntmoraUQAX_NpGsB&_nc_ht=scontent.ftru4-1.fna&oh=ef1b3ffd17ba4545be404ca08c7bc959&oe=5EC97103";
  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Ruta Acustica"), backgroundColor: Colors.black26,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("RutaAcustica@gmail.com"),
              accountName: new Text("Ruta Acustica", style: new TextStyle(color: Colors.black)),
              // currentAccountPicture: new GestureDetector(
              //   child: new CircleAvatar(
              //     backgroundImage: new NetworkImage(otherProfilePic),
              //   ),
                
              //   onTap: () => print("This is your current account."),
              // ),
              // otherAccountsPictures: <Widget>[
              //   new GestureDetector(
              //     child: new CircleAvatar(
              //       backgroundImage: new NetworkImage(otherProfilePic),
              //     ),
              //     onTap: () => switchAccounts(),
              //   ),
              // ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(fondoM),
                  fit: BoxFit.fill
                )
              ),
            ),
            new ListTile(
              title: new Text("Eventos"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Eventos")));
              }
            ),
            new ListTile(
              title: new Text("Videos"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Videos")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Cancelar"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("HOME", style: new TextStyle(fontSize: 35.0)),
      )
    );
  }
}