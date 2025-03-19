import '../../../core/router/core_exports.dart';

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
                color: AppColors.mainColor, // Header foni
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
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month, color: Colors.white),
              title: Text(
                "My Calendar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                context.pushNamed('mycalendar');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),

              tileColor: const Color.fromARGB(
                255,
                176,
                53,
                210,
              ), // Tanlangan element rangi
              title: Text("My Profile", style: TextStyle(color: Colors.white)),
              onTap: () {
                context.pushNamed('myprofile');
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),

              tileColor: Color.fromARGB(
                255,
                176,
                53,
                210,
              ), // Tanlangan element rangi
              title: Text("About We", style: TextStyle(color: Colors.white)),
              onTap: () {
                // print('pressed');
                // context.pushNamed('webview',extra: "https://www.acharya.uz/images/videos/facilities.mp4");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => WebViewScreen(
                          url:
                              "https://www.acharya.uz/images/videos/facilities.mp4",
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
