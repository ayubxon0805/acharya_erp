import '../../../core/router/core_exports.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Yengil background
      appBar: AppBar(
        title: const ImageIcon(
          AssetImage('assets/icons/applogo.png'),
          size: 180,
          color: Color.fromARGB(255, 200, 56, 225),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Profile Image + Name
          Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    "https://i.pravatar.cc/150?img=3", // Demo rasm
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "John Doe", // Foydalanuvchi ismi
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Acharya University",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Profile Info List
          Expanded(
            child: ListView(
              children: [
                _buildProfileItem(
                  LucideIcons.mail,
                  "Email",
                  "johndoe@email.com",
                ),
                _buildProfileItem(LucideIcons.phone, "Phone", "+91 9876543210"),
                _buildProfileItem(
                  LucideIcons.school,
                  "Department",
                  "Computer Science",
                ),
                _buildProfileItem(
                  LucideIcons.mapPin,
                  "Location",
                  "Bangalore, India",
                ),
                _buildProfileItem(
                  LucideIcons.settings,
                  "Settings",
                  "Account & Privacy",
                ),
                const SizedBox(height: 20),
                // Logout Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.logOut, color: Colors.white),
                    label: const Text("Log Out"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Profile Item Widget
  Widget _buildProfileItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(value),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
