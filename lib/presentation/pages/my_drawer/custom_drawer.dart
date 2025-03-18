import 'package:acharya_university/core/router/core_exports.dart';
import 'package:acharya_university/presentation/widgets/webview_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple[800], // Orqa fon rangi
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple, // Header foni
              ),
              child: Row(
                children: [
                  Icon(Icons.settings, color: Colors.amber, size: 28),
                  SizedBox(width: 10),
                  Text(
                    "My Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
            ),
            ListTile(
          
              leading: Icon(Icons.calendar_month,color: Colors.white,),
              title: Text(
                "My Calendar",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Calendar bosilganda bajariladigan kod
              },
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white,),

              tileColor: Colors.purple[600], // Tanlangan element rangi
              title: Text(
                "My Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Profile bosilganda bajariladigan kod
              },
            ),
                  ListTile(
              leading: Icon(Icons.info,color: Colors.white,),

              tileColor: Colors.purple[600], // Tanlangan element rangi
              title: Text(
                "About We",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // print('pressed');
                // context.pushNamed('webview',extra: "https://www.acharya.uz/images/videos/facilities.mp4");
                Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(url: "https://www.acharya.uz/images/videos/facilities.mp4"),));
    
              },
            ),
          ],
        ),
      ),
    );
  }
}
