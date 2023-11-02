import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';


class ShareInfo extends StatefulWidget {
  const ShareInfo({super.key});

  @override
  State<ShareInfo> createState() => _ShareInfoState();
}

class _ShareInfoState extends State<ShareInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Personal Information',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Share Mobile Number",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Share Email Id",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Text("Share Address",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Text("Share All",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareMobileNumber();
              }
              if (value == 2) {
                _shareEmailId();
              }
              if (value == 3) {
                _shareAddress();
              }
              if (value == 4) {
                _shareAll();
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Vinoth Wilson',
                  style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+91 96003 69543',
                    style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 1.5,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'vinashvinoth@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 1.5,
                      fontSize:25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '25-21a2, BOC Street, \nMadathuvilai, Kannacode,\nMarthandam, Po:629165,\nKanyakumari Dist.',
                    style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 1.5,
                      fontSize: 25,
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

_shareMobileNumber() {
  Share.share('+91 96003 69543');
  print('+91 96003 69543');
}

_shareEmailId() {
  Share.share('vinashvinoth@gmail.com');
  print('vinashvinoth@gmail.com');
}

_shareAddress() {
  Share.share( '25-21a2, BOC Street, \nMadathuvilai, Kannacode,\nMarthandam, Po:629165,\nKanyakumari Dist.');
  print( '25-21a2, BOC Street, \nMadathuvilai, Kannacode,\nMarthandam, Po:629165,\nKanyakumari Dist.');
}

_shareAll() {
  Share.share(
      '+91 96003 69543 \nvinashvinoth@gmail.com \n25-21a2, BOC Street, \nMadathuvilai, Kannacode,\nMarthandam, Po:629165,\nKanyakumari Dist.');
  print(
      '+91 96003 69543 \nvinashvinoth@gmail.com \n25-21a2, BOC Street, \nMadathuvilai, Kannacode,\nMarthandam, Po:629165,\nKanyakumari Dist.');
}