import 'package:flutter/material.dart';
import 'package:pediatric_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';


var my_app_bar = AppBar(
    backgroundColor: Color.fromRGBO(0, 183, 227, 1.0),
  title: Text('Pediatrics Health'),
  actions: [my_action],
);

// rgb(22 3 119)
// rgb(3 100 119)
// rgb(8 104 145)
// rgb(21 19 58)

var my_drawer = Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: [
      Container(
        color: Colors.lightBlue,
        child: DrawerHeader(
            child: Center(
              child: Text(
                  'P E D A T R I C S ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
        ),
      ),
      ListTile(
      leading: Icon(Icons.dashboard),
      title: Text("Dashboard"),
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.medical_services),
      title: Text("Diagnosis"),
      ),
      ListTile(
      leading: Icon(Icons.history),
      title: Text("History"),
      ),
      ListTile(
      leading: Icon(Icons.analytics),
      title: Text("Analysis"),
      ),
      Spacer(flex: 5,),
      Divider(),
      ListTile(
      leading: Icon(Icons.verified_user),
      title: Text("Profile"),
      ),
      ListTile(
      leading: Icon(Icons.login),
      title: Text("Login"),
      ),
      ],
    ),
    elevation: 2.0,
);


var my_action = PopupMenuButton<String>(
      onSelected: (String result) {
        // Handle navigation or other actions here
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Theme',
          child: IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
              icon: Icon(Icons.light_mode),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'Option2',
          child: Text('Option 2'),
        ),
      ],
    );