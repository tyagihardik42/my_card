import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

_launchPhone() async {
  const String phone_number = 'tel:+917814971819';
  if (await canLaunch(phone_number)) {
    await launch(phone_number);
  } else {
    throw 'Could not launch $phone_number';
  }
}

_launchEmail() async {
  const String mail_id = 'mailto:tyagi.hardik42@yahoo.com';
  if (await canLaunch(mail_id)) {
    await launch(mail_id);
  } else {
    throw 'Could not launch $mail_id';
  }
}

_launchLinkedIn() async {
  const String linked_id = 'https://www.linkedin.com/in/hardiktyagi42/';
  if (await canLaunch(linked_id)) {
    await launch(linked_id);
  } else {
    throw 'Could not launch $linked_id';
  }
}

_launchInstagram() async {
  const String instagram_id = 'https://www.instagram.com/hardik_tyagi42/';
  if (await canLaunch(instagram_id)) {
    await launch(instagram_id);
  } else {
    throw 'Could not launch $instagram_id';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/badge.png'),
              ),
              Text(
                'Hardik Tyagi',
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OleoScript'),
              ),
              Text(
                'FLUTTER DEVELOPER, INDIA',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 360.0,
                child: Divider(
                  thickness: 3.0,
                  color: Colors.teal.shade100,
                ),
              ),
              Text(
                'Work',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(100),
                  onTap: _launchPhone,
                child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                  title: Text(
                      '+91 78149 71819',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro-Regular',
                      ),
                    ),
                ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(100),
                  onTap: _launchEmail,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'tyagi.hardik42@yahoo.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro-Regular',
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Color.fromRGBO(40,103,178,1),
                margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 25.0),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(100),
                  onTap: _launchLinkedIn,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.linkedin,
                    color: Colors.white,
                    ),
                    title: Text(
                      'Connect on LinkedIn',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro-Regular',
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Personal',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Color.fromRGBO(131,58,180,1),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: InkWell(
                  splashColor: Colors.red.withAlpha(900),
                  onTap: _launchInstagram,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Connect on Instagram',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro-Regular',
                      ),
                    ),
                  ),
                ),
              ),
                  ],
                ),
              ),
          ),
        );
  }
}
